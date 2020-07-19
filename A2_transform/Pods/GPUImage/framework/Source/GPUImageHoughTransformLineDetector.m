#import "GPUImageHoughTransformLineDetector.h"
@interface GPUImageHoughTransformLineDetector()
- (void)extractLineParametersFromImageAtFrameTime:(CMTime)frameTime;
@end
@implementation GPUImageHoughTransformLineDetector
@synthesize linesDetectedBlock;
@synthesize edgeThreshold;
@synthesize lineDetectionThreshold;
@synthesize intermediateImages = _intermediateImages;
- (id)init;
{
    if (!(self = [super init]))
    {
		return nil;
    }
        thresholdEdgeDetectionFilter = [[GPUImageCannyEdgeDetectionFilter alloc] init];
    [self addFilter:thresholdEdgeDetectionFilter];
    parallelCoordinateLineTransformFilter = [[GPUImageParallelCoordinateLineTransformFilter alloc] init];
    [self addFilter:parallelCoordinateLineTransformFilter];
    if ([GPUImageContext deviceSupportsFramebufferReads])
    {
        nonMaximumSuppressionFilter = [[GPUImageThresholdedNonMaximumSuppressionFilter alloc] initWithPackedColorspace:YES];
    }
    else
    {
        nonMaximumSuppressionFilter = [[GPUImageThresholdedNonMaximumSuppressionFilter alloc] initWithPackedColorspace:NO];
    }
    [self addFilter:nonMaximumSuppressionFilter];
    __unsafe_unretained GPUImageHoughTransformLineDetector *weakSelf = self;
#ifdef DEBUGLINEDETECTION
    _intermediateImages = [[NSMutableArray alloc] init];
    __unsafe_unretained NSMutableArray *weakIntermediateImages = _intermediateImages;
    __unsafe_unretained GPUImageOutput<GPUImageInput> *weakNonMaximumSuppressionFilter = nonMaximumSuppressionFilter;
    [nonMaximumSuppressionFilter setFrameProcessingCompletionBlock:^(GPUImageOutput *filter, CMTime frameTime){
        UIImage *intermediateImage = [weakNonMaximumSuppressionFilter imageFromCurrentFramebuffer];
        [weakIntermediateImages addObject:intermediateImage];
        [weakSelf extractLineParametersFromImageAtFrameTime:frameTime];
    }];
#else
    [nonMaximumSuppressionFilter setFrameProcessingCompletionBlock:^(GPUImageOutput *filter, CMTime frameTime) {
        [weakSelf extractLineParametersFromImageAtFrameTime:frameTime];
    }];
#endif
    [thresholdEdgeDetectionFilter addTarget:parallelCoordinateLineTransformFilter];
    [parallelCoordinateLineTransformFilter addTarget:nonMaximumSuppressionFilter];
    self.initialFilters = [NSArray arrayWithObjects:thresholdEdgeDetectionFilter, nil];
    self.terminalFilter = nonMaximumSuppressionFilter;
    self.lineDetectionThreshold = 0.12;
    return self;
}
- (void)dealloc;
{
    free(rawImagePixels);
    free(linesArray);
}
#pragma mark -
#pragma mark Corner extraction
- (void)extractLineParametersFromImageAtFrameTime:(CMTime)frameTime;
{
    NSAssert(self.outputTextureOptions.internalFormat == GL_RGBA, @"The output texture format for this filter must be GL_RGBA.");
    NSAssert(self.outputTextureOptions.type == GL_UNSIGNED_BYTE, @"The type of the output texture of this filter must be GL_UNSIGNED_BYTE.");
    NSUInteger numberOfLines = 0;
    CGSize imageSize = nonMaximumSuppressionFilter.outputFrameSize;
    unsigned int imageByteSize = imageSize.width * imageSize.height * 4;
    if (rawImagePixels == NULL)
    {
        rawImagePixels = (GLubyte *)malloc(imageByteSize);
        linesArray = calloc(1024 * 2, sizeof(GLfloat));
    }
    glReadPixels(0, 0, (int)imageSize.width, (int)imageSize.height, GL_RGBA, GL_UNSIGNED_BYTE, rawImagePixels);
    unsigned int imageWidth = imageSize.width * 4;
    unsigned int currentByte = 0;
    unsigned int cornerStorageIndex = 0;
    unsigned long lineStrengthCounter = 0;
    while (currentByte < imageByteSize)
    {
        GLubyte colorByte = rawImagePixels[currentByte];
        if (colorByte > 0)
        {
            unsigned int xCoordinate = currentByte % imageWidth;
            unsigned int yCoordinate = currentByte / imageWidth;
            lineStrengthCounter += colorByte;
            CGFloat normalizedXCoordinate = -1.0 + 2.0 * (CGFloat)(xCoordinate / 4) / imageSize.width;
            CGFloat normalizedYCoordinate = -1.0 + 2.0 * (CGFloat)(yCoordinate) / imageSize.height;
            if (normalizedXCoordinate < 0.0)
            {
                if (normalizedXCoordinate > -0.05) 
                {
                    linesArray[cornerStorageIndex++] = 100000.0;
                    linesArray[cornerStorageIndex++] = normalizedYCoordinate;
                }
                else
                {
                    linesArray[cornerStorageIndex++] = -1.0 - 1.0 / normalizedXCoordinate;
                    linesArray[cornerStorageIndex++] = 1.0 * normalizedYCoordinate / normalizedXCoordinate;
                }
            }
            else
            {
                if (normalizedXCoordinate < 0.05) 
                {
                    linesArray[cornerStorageIndex++] = 100000.0;
                    linesArray[cornerStorageIndex++] = normalizedYCoordinate;
                }
                else
                {
                    linesArray[cornerStorageIndex++] = 1.0 - 1.0 / normalizedXCoordinate;
                    linesArray[cornerStorageIndex++] = 1.0 * normalizedYCoordinate / normalizedXCoordinate;
                }
            }
            numberOfLines++;
            numberOfLines = MIN(numberOfLines, 1023);
            cornerStorageIndex = MIN(cornerStorageIndex, 2040);
        }
        currentByte +=4;
    }
    if (linesDetectedBlock != NULL)
    {
        linesDetectedBlock(linesArray, numberOfLines, frameTime);
    }
}
- (BOOL)wantsMonochromeInput;
{
    return NO;
}
#pragma mark -
#pragma mark Accessors
- (void)setLineDetectionThreshold:(CGFloat)newValue;
{
    nonMaximumSuppressionFilter.threshold = newValue;
}
- (CGFloat)lineDetectionThreshold;
{
    return nonMaximumSuppressionFilter.threshold;
}
#ifdef DEBUGLINEDETECTION
- (void)newFrameReadyAtTime:(CMTime)frameTime atIndex:(NSInteger)textureIndex;
{
    [nonMaximumSuppressionFilter useNextFrameForImageCapture];
    [super newFrameReadyAtTime:frameTime atIndex:textureIndex];
}
#endif
@end
