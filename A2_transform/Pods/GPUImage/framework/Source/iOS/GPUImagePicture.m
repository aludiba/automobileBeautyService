#import "GPUImagePicture.h"
@implementation GPUImagePicture
#pragma mark -
#pragma mark Initialization and teardown
- (id)initWithURL:(NSURL *)url;
{
    NSData *imageData = [[NSData alloc] initWithContentsOfURL:url];
    if (!(self = [self initWithData:imageData]))
    {
        return nil;
    }
    return self;
}
- (id)initWithData:(NSData *)imageData;
{
    UIImage *inputImage = [[UIImage alloc] initWithData:imageData];
    if (!(self = [self initWithImage:inputImage]))
    {
		return nil;
    }
    return self;
}
- (id)initWithImage:(UIImage *)newImageSource;
{
    if (!(self = [self initWithImage:newImageSource smoothlyScaleOutput:NO]))
    {
		return nil;
    }
    return self;
}
- (id)initWithCGImage:(CGImageRef)newImageSource;
{
    if (!(self = [self initWithCGImage:newImageSource smoothlyScaleOutput:NO]))
    {
		return nil;
    }
    return self;
}
- (id)initWithImage:(UIImage *)newImageSource smoothlyScaleOutput:(BOOL)smoothlyScaleOutput;
{
    return [self initWithCGImage:[newImageSource CGImage] smoothlyScaleOutput:smoothlyScaleOutput];
}
- (id)initWithCGImage:(CGImageRef)newImageSource smoothlyScaleOutput:(BOOL)smoothlyScaleOutput;
{
    if (!(self = [super init]))
    {
		return nil;
    }
    hasProcessedImage = NO;
    self.shouldSmoothlyScaleOutput = smoothlyScaleOutput;
    imageUpdateSemaphore = dispatch_semaphore_create(0);
    dispatch_semaphore_signal(imageUpdateSemaphore);
    CGFloat widthOfImage = CGImageGetWidth(newImageSource);
    CGFloat heightOfImage = CGImageGetHeight(newImageSource);
    NSAssert( widthOfImage > 0 && heightOfImage > 0, @"Passed image must not be empty - it should be at least 1px tall and wide");
    pixelSizeOfImage = CGSizeMake(widthOfImage, heightOfImage);
    CGSize pixelSizeToUseForTexture = pixelSizeOfImage;
    BOOL shouldRedrawUsingCoreGraphics = NO;
    CGSize scaledImageSizeToFitOnGPU = [GPUImageContext sizeThatFitsWithinATextureForSize:pixelSizeOfImage];
    if (!CGSizeEqualToSize(scaledImageSizeToFitOnGPU, pixelSizeOfImage))
    {
        pixelSizeOfImage = scaledImageSizeToFitOnGPU;
        pixelSizeToUseForTexture = pixelSizeOfImage;
        shouldRedrawUsingCoreGraphics = YES;
    }
    if (self.shouldSmoothlyScaleOutput)
    {
        CGFloat powerClosestToWidth = ceil(log2(pixelSizeOfImage.width));
        CGFloat powerClosestToHeight = ceil(log2(pixelSizeOfImage.height));
        pixelSizeToUseForTexture = CGSizeMake(pow(2.0, powerClosestToWidth), pow(2.0, powerClosestToHeight));
        shouldRedrawUsingCoreGraphics = YES;
    }
    GLubyte *imageData = NULL;
    CFDataRef dataFromImageDataProvider = NULL;
    GLenum format = GL_BGRA;
    if (!shouldRedrawUsingCoreGraphics) {
        if (CGImageGetBytesPerRow(newImageSource) != CGImageGetWidth(newImageSource) * 4 ||
            CGImageGetBitsPerPixel(newImageSource) != 32 ||
            CGImageGetBitsPerComponent(newImageSource) != 8)
        {
            shouldRedrawUsingCoreGraphics = YES;
        } else {
            CGBitmapInfo bitmapInfo = CGImageGetBitmapInfo(newImageSource);
            if ((bitmapInfo & kCGBitmapFloatComponents) != 0) {
                shouldRedrawUsingCoreGraphics = YES;
            } else {
                CGBitmapInfo byteOrderInfo = bitmapInfo & kCGBitmapByteOrderMask;
                if (byteOrderInfo == kCGBitmapByteOrder32Little) {
                    CGImageAlphaInfo alphaInfo = bitmapInfo & kCGBitmapAlphaInfoMask;
                    if (alphaInfo != kCGImageAlphaPremultipliedFirst && alphaInfo != kCGImageAlphaFirst &&
                        alphaInfo != kCGImageAlphaNoneSkipFirst) {
                        shouldRedrawUsingCoreGraphics = YES;
                    }
                } else if (byteOrderInfo == kCGBitmapByteOrderDefault || byteOrderInfo == kCGBitmapByteOrder32Big) {
                    CGImageAlphaInfo alphaInfo = bitmapInfo & kCGBitmapAlphaInfoMask;
                    if (alphaInfo != kCGImageAlphaPremultipliedLast && alphaInfo != kCGImageAlphaLast &&
                        alphaInfo != kCGImageAlphaNoneSkipLast) {
                        shouldRedrawUsingCoreGraphics = YES;
                    } else {
                        format = GL_RGBA;
                    }
                }
            }
        }
    }
    if (shouldRedrawUsingCoreGraphics)
    {
        imageData = (GLubyte *) calloc(1, (int)pixelSizeToUseForTexture.width * (int)pixelSizeToUseForTexture.height * 4);
        CGColorSpaceRef genericRGBColorspace = CGColorSpaceCreateDeviceRGB();
        CGContextRef imageContext = CGBitmapContextCreate(imageData, (size_t)pixelSizeToUseForTexture.width, (size_t)pixelSizeToUseForTexture.height, 8, (size_t)pixelSizeToUseForTexture.width * 4, genericRGBColorspace,  kCGBitmapByteOrder32Little | kCGImageAlphaPremultipliedFirst);
        CGContextDrawImage(imageContext, CGRectMake(0.0, 0.0, pixelSizeToUseForTexture.width, pixelSizeToUseForTexture.height), newImageSource);
        CGContextRelease(imageContext);
        CGColorSpaceRelease(genericRGBColorspace);
    }
    else
    {
        dataFromImageDataProvider = CGDataProviderCopyData(CGImageGetDataProvider(newImageSource));
        imageData = (GLubyte *)CFDataGetBytePtr(dataFromImageDataProvider);
    }
    runSynchronouslyOnVideoProcessingQueue(^{
        [GPUImageContext useImageProcessingContext];
        outputFramebuffer = [[GPUImageContext sharedFramebufferCache] fetchFramebufferForSize:pixelSizeToUseForTexture onlyTexture:YES];
        [outputFramebuffer disableReferenceCounting];
        glBindTexture(GL_TEXTURE_2D, [outputFramebuffer texture]);
        if (self.shouldSmoothlyScaleOutput)
        {
            glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR_MIPMAP_LINEAR);
        }
        glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, (int)pixelSizeToUseForTexture.width, (int)pixelSizeToUseForTexture.height, 0, format, GL_UNSIGNED_BYTE, imageData);
        if (self.shouldSmoothlyScaleOutput)
        {
            glGenerateMipmap(GL_TEXTURE_2D);
        }
        glBindTexture(GL_TEXTURE_2D, 0);
    });
    if (shouldRedrawUsingCoreGraphics)
    {
        free(imageData);
    }
    else
    {
        if (dataFromImageDataProvider)
        {
            CFRelease(dataFromImageDataProvider);
        }
    }
    return self;
}
- (void)dealloc;
{
    [outputFramebuffer enableReferenceCounting];
    [outputFramebuffer unlock];
#if !OS_OBJECT_USE_OBJC
    if (imageUpdateSemaphore != NULL)
    {
        dispatch_release(imageUpdateSemaphore);
    }
#endif
}
#pragma mark -
#pragma mark Image rendering
- (void)removeAllTargets;
{
    [super removeAllTargets];
    hasProcessedImage = NO;
}
- (void)processImage;
{
    [self processImageWithCompletionHandler:nil];
}
- (BOOL)processImageWithCompletionHandler:(void (^)(void))completion;
{
    hasProcessedImage = YES;
    if (dispatch_semaphore_wait(imageUpdateSemaphore, DISPATCH_TIME_NOW) != 0)
    {
        return NO;
    }
    runAsynchronouslyOnVideoProcessingQueue(^{        
        for (id<GPUImageInput> currentTarget in targets)
        {
            NSInteger indexOfObject = [targets indexOfObject:currentTarget];
            NSInteger textureIndexOfTarget = [[targetTextureIndices objectAtIndex:indexOfObject] integerValue];
            [currentTarget setCurrentlyReceivingMonochromeInput:NO];
            [currentTarget setInputSize:pixelSizeOfImage atIndex:textureIndexOfTarget];
            [currentTarget setInputFramebuffer:outputFramebuffer atIndex:textureIndexOfTarget];
            [currentTarget newFrameReadyAtTime:kCMTimeIndefinite atIndex:textureIndexOfTarget];
        }
        dispatch_semaphore_signal(imageUpdateSemaphore);
        if (completion != nil) {
            completion();
        }
    });
    return YES;
}
- (void)processImageUpToFilter:(GPUImageOutput<GPUImageInput> *)finalFilterInChain withCompletionHandler:(void (^)(UIImage *processedImage))block;
{
    [finalFilterInChain useNextFrameForImageCapture];
    [self processImageWithCompletionHandler:^{
        UIImage *imageFromFilter = [finalFilterInChain imageFromCurrentFramebuffer];
        block(imageFromFilter);
    }];
}
- (CGSize)outputImageSize;
{
    return pixelSizeOfImage;
}
- (void)addTarget:(id<GPUImageInput>)newTarget atTextureLocation:(NSInteger)textureLocation;
{
    [super addTarget:newTarget atTextureLocation:textureLocation];
    if (hasProcessedImage)
    {
        [newTarget setInputSize:pixelSizeOfImage atIndex:textureLocation];
        [newTarget newFrameReadyAtTime:kCMTimeIndefinite atIndex:textureLocation];
    }
}
@end
