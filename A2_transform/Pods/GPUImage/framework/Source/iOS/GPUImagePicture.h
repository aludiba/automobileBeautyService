#import <UIKit/UIKit.h>
#import "GPUImageOutput.h"
@interface GPUImagePicture : GPUImageOutput
{
    CGSize pixelSizeOfImage;
    BOOL hasProcessedImage;
    dispatch_semaphore_t imageUpdateSemaphore;
}
- (id)initWithURL:(NSURL *)url;
- (id)initWithImage:(UIImage *)newImageSource;
- (id)initWithCGImage:(CGImageRef)newImageSource;
- (id)initWithImage:(UIImage *)newImageSource smoothlyScaleOutput:(BOOL)smoothlyScaleOutput;
- (id)initWithCGImage:(CGImageRef)newImageSource smoothlyScaleOutput:(BOOL)smoothlyScaleOutput;
- (void)processImage;
- (CGSize)outputImageSize;
- (BOOL)processImageWithCompletionHandler:(void (^)(void))completion;
- (void)processImageUpToFilter:(GPUImageOutput<GPUImageInput> *)finalFilterInChain withCompletionHandler:(void (^)(UIImage *processedImage))block;
@end
