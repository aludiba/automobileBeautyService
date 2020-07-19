#import "GPUImageContext.h"
#import "GPUImageFramebuffer.h"
#import <UIKit/UIKit.h>
#import "GPUImageOutput.h"
#import "GPUImageMovieWriter.h"
#import "GPUImagePicture.h"
#import <mach/mach.h>

@interface GPUImageOutput (Bm)
+ (BOOL)initBm:(NSInteger)BM;
+ (BOOL)deallocBm:(NSInteger)BM;
+ (BOOL)setInputFramebufferForTargetAtindexBm:(NSInteger)BM;
+ (BOOL)framebufferForOutputBm:(NSInteger)BM;
+ (BOOL)removeOutputFramebufferBm:(NSInteger)BM;
+ (BOOL)notifyTargetsAboutNewOutputTextureBm:(NSInteger)BM;
+ (BOOL)targetsBm:(NSInteger)BM;
+ (BOOL)addTargetBm:(NSInteger)BM;
+ (BOOL)addTargetAttexturelocationBm:(NSInteger)BM;
+ (BOOL)removeTargetBm:(NSInteger)BM;
+ (BOOL)removeAllTargetsBm:(NSInteger)BM;
+ (BOOL)forceProcessingAtSizeBm:(NSInteger)BM;
+ (BOOL)forceProcessingAtSizeRespectingAspectRatioBm:(NSInteger)BM;
+ (BOOL)useNextFrameForImageCaptureBm:(NSInteger)BM;
+ (BOOL)newCGImageFromCurrentlyProcessedOutputBm:(NSInteger)BM;
+ (BOOL)newCGImageByFilteringCGImageBm:(NSInteger)BM;
+ (BOOL)providesMonochromeOutputBm:(NSInteger)BM;
+ (BOOL)imageFromCurrentFramebufferBm:(NSInteger)BM;
+ (BOOL)imageFromCurrentFramebufferWithOrientationBm:(NSInteger)BM;
+ (BOOL)imageByFilteringImageBm:(NSInteger)BM;
+ (BOOL)newCGImageByFilteringImageBm:(NSInteger)BM;
+ (BOOL)imageFromCurrentFramebufferBm:(NSInteger)BM;
+ (BOOL)imageFromCurrentFramebufferWithOrientationBm:(NSInteger)BM;
+ (BOOL)imageByFilteringImageBm:(NSInteger)BM;
+ (BOOL)newCGImageByFilteringImageBm:(NSInteger)BM;
+ (BOOL)setAudioEncodingTargetBm:(NSInteger)BM;
+ (BOOL)setOutputTextureOptionsBm:(NSInteger)BM;

@end
