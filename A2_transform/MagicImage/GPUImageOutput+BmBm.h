#import "GPUImageContext.h"
#import "GPUImageFramebuffer.h"
#import <UIKit/UIKit.h>
#import "GPUImageOutput.h"
#import "GPUImageMovieWriter.h"
#import "GPUImagePicture.h"
#import <mach/mach.h>
#import "GPUImageOutput+Bm.h"

@interface GPUImageOutput (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM;
+ (BOOL)deallocBmBm:(NSInteger)BM;
+ (BOOL)setInputFramebufferForTargetAtindexBmBm:(NSInteger)BM;
+ (BOOL)framebufferForOutputBmBm:(NSInteger)BM;
+ (BOOL)removeOutputFramebufferBmBm:(NSInteger)BM;
+ (BOOL)notifyTargetsAboutNewOutputTextureBmBm:(NSInteger)BM;
+ (BOOL)targetsBmBm:(NSInteger)BM;
+ (BOOL)addTargetBmBm:(NSInteger)BM;
+ (BOOL)addTargetAttexturelocationBmBm:(NSInteger)BM;
+ (BOOL)removeTargetBmBm:(NSInteger)BM;
+ (BOOL)removeAllTargetsBmBm:(NSInteger)BM;
+ (BOOL)forceProcessingAtSizeBmBm:(NSInteger)BM;
+ (BOOL)forceProcessingAtSizeRespectingAspectRatioBmBm:(NSInteger)BM;
+ (BOOL)useNextFrameForImageCaptureBmBm:(NSInteger)BM;
+ (BOOL)newCGImageFromCurrentlyProcessedOutputBmBm:(NSInteger)BM;
+ (BOOL)newCGImageByFilteringCGImageBmBm:(NSInteger)BM;
+ (BOOL)providesMonochromeOutputBmBm:(NSInteger)BM;
+ (BOOL)imageFromCurrentFramebufferBmBm:(NSInteger)BM;
+ (BOOL)imageFromCurrentFramebufferWithOrientationBmBm:(NSInteger)BM;
+ (BOOL)imageByFilteringImageBmBm:(NSInteger)BM;
+ (BOOL)newCGImageByFilteringImageBmBm:(NSInteger)BM;
+ (BOOL)imageFromCurrentFramebufferBmBm:(NSInteger)BM;
+ (BOOL)imageFromCurrentFramebufferWithOrientationBmBm:(NSInteger)BM;
+ (BOOL)imageByFilteringImageBmBm:(NSInteger)BM;
+ (BOOL)newCGImageByFilteringImageBmBm:(NSInteger)BM;
+ (BOOL)setAudioEncodingTargetBmBm:(NSInteger)BM;
+ (BOOL)setOutputTextureOptionsBmBm:(NSInteger)BM;

@end
