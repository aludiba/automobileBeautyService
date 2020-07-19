#import "GPUImageContext.h"
#import "GPUImageFramebuffer.h"
#if TARGET_IPHONE_SIMULATOR || TARGET_OS_IPHONE
#import <UIKit/UIKit.h>
#else
typedef NS_ENUM(NSInteger, UIImageOrientation) {
    UIImageOrientationUp,            
    UIImageOrientationDown,          
    UIImageOrientationLeft,          
    UIImageOrientationRight,         
    UIImageOrientationUpMirrored,    
    UIImageOrientationDownMirrored,  
    UIImageOrientationLeftMirrored,  
    UIImageOrientationRightMirrored, 
};
#endif
void runOnMainQueueWithoutDeadlocking(void (^block)(void));
void runSynchronouslyOnVideoProcessingQueue(void (^block)(void));
void runAsynchronouslyOnVideoProcessingQueue(void (^block)(void));
void runSynchronouslyOnContextQueue(GPUImageContext *context, void (^block)(void));
void runAsynchronouslyOnContextQueue(GPUImageContext *context, void (^block)(void));
void reportAvailableMemoryForGPUImage(NSString *tag);
@class GPUImageMovieWriter;
@interface GPUImageOutput : NSObject
{
    GPUImageFramebuffer *outputFramebuffer;
    NSMutableArray *targets, *targetTextureIndices;
    CGSize inputTextureSize, cachedMaximumOutputSize, forcedMaximumSize;
    BOOL overrideInputSize;
    BOOL allTargetsWantMonochromeData;
    BOOL usingNextFrameForImageCapture;
}
@property(readwrite, nonatomic) BOOL shouldSmoothlyScaleOutput;
@property(readwrite, nonatomic) BOOL shouldIgnoreUpdatesToThisTarget;
@property(readwrite, nonatomic, retain) GPUImageMovieWriter *audioEncodingTarget;
@property(readwrite, nonatomic, unsafe_unretained) id<GPUImageInput> targetToIgnoreForUpdates;
@property(nonatomic, copy) void(^frameProcessingCompletionBlock)(GPUImageOutput*, CMTime);
@property(nonatomic) BOOL enabled;
@property(readwrite, nonatomic) GPUTextureOptions outputTextureOptions;
- (void)setInputFramebufferForTarget:(id<GPUImageInput>)target atIndex:(NSInteger)inputTextureIndex;
- (GPUImageFramebuffer *)framebufferForOutput;
- (void)removeOutputFramebuffer;
- (void)notifyTargetsAboutNewOutputTexture;
- (NSArray*)targets;
- (void)addTarget:(id<GPUImageInput>)newTarget;
- (void)addTarget:(id<GPUImageInput>)newTarget atTextureLocation:(NSInteger)textureLocation;
- (void)removeTarget:(id<GPUImageInput>)targetToRemove;
- (void)removeAllTargets;
- (void)forceProcessingAtSize:(CGSize)frameSize;
- (void)forceProcessingAtSizeRespectingAspectRatio:(CGSize)frameSize;
- (void)useNextFrameForImageCapture;
- (CGImageRef)newCGImageFromCurrentlyProcessedOutput;
- (CGImageRef)newCGImageByFilteringCGImage:(CGImageRef)imageToFilter;
#if TARGET_IPHONE_SIMULATOR || TARGET_OS_IPHONE
- (UIImage *)imageFromCurrentFramebuffer;
- (UIImage *)imageFromCurrentFramebufferWithOrientation:(UIImageOrientation)imageOrientation;
- (UIImage *)imageByFilteringImage:(UIImage *)imageToFilter;
- (CGImageRef)newCGImageByFilteringImage:(UIImage *)imageToFilter;
#else
- (NSImage *)imageFromCurrentFramebuffer;
- (NSImage *)imageFromCurrentFramebufferWithOrientation:(UIImageOrientation)imageOrientation;
- (NSImage *)imageByFilteringImage:(NSImage *)imageToFilter;
- (CGImageRef)newCGImageByFilteringImage:(NSImage *)imageToFilter;
#endif
- (BOOL)providesMonochromeOutput;
@end
