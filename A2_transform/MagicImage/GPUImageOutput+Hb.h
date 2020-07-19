#import "GPUImageContext.h"
#import "GPUImageFramebuffer.h"
#import <UIKit/UIKit.h>
#import "GPUImageOutput.h"
#import "GPUImageMovieWriter.h"
#import "GPUImagePicture.h"
#import <mach/mach.h>

@interface GPUImageOutput (Hb)
+ (BOOL)initHb:(NSInteger)hb;
+ (BOOL)deallocHb:(NSInteger)hb;
+ (BOOL)setInputFramebufferForTargetAtindexHb:(NSInteger)hb;
+ (BOOL)framebufferForOutputHb:(NSInteger)hb;
+ (BOOL)removeOutputFramebufferHb:(NSInteger)hb;
+ (BOOL)notifyTargetsAboutNewOutputTextureHb:(NSInteger)hb;
+ (BOOL)targetsHb:(NSInteger)hb;
+ (BOOL)addTargetHb:(NSInteger)hb;
+ (BOOL)addTargetAttexturelocationHb:(NSInteger)hb;
+ (BOOL)removeTargetHb:(NSInteger)hb;
+ (BOOL)removeAllTargetsHb:(NSInteger)hb;
+ (BOOL)forceProcessingAtSizeHb:(NSInteger)hb;
+ (BOOL)forceProcessingAtSizeRespectingAspectRatioHb:(NSInteger)hb;
+ (BOOL)useNextFrameForImageCaptureHb:(NSInteger)hb;
+ (BOOL)newCGImageFromCurrentlyProcessedOutputHb:(NSInteger)hb;
+ (BOOL)newCGImageByFilteringCGImageHb:(NSInteger)hb;
+ (BOOL)providesMonochromeOutputHb:(NSInteger)hb;
+ (BOOL)imageFromCurrentFramebufferHb:(NSInteger)hb;
+ (BOOL)imageFromCurrentFramebufferWithOrientationHb:(NSInteger)hb;
+ (BOOL)imageByFilteringImageHb:(NSInteger)hb;
+ (BOOL)newCGImageByFilteringImageHb:(NSInteger)hb;
+ (BOOL)imageFromCurrentFramebufferHb:(NSInteger)hb;
+ (BOOL)imageFromCurrentFramebufferWithOrientationHb:(NSInteger)hb;
+ (BOOL)imageByFilteringImageHb:(NSInteger)hb;
+ (BOOL)newCGImageByFilteringImageHb:(NSInteger)hb;
+ (BOOL)setAudioEncodingTargetHb:(NSInteger)hb;
+ (BOOL)setOutputTextureOptionsHb:(NSInteger)hb;

@end
