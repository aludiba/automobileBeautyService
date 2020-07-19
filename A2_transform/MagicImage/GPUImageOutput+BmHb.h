#import "GPUImageContext.h"
#import "GPUImageFramebuffer.h"
#import <UIKit/UIKit.h>
#import "GPUImageOutput.h"
#import "GPUImageMovieWriter.h"
#import "GPUImagePicture.h"
#import <mach/mach.h>
#import "GPUImageOutput+Bm.h"

@interface GPUImageOutput (BmHb)
+ (BOOL)initBmHb:(NSInteger)hb;
+ (BOOL)deallocBmHb:(NSInteger)hb;
+ (BOOL)setInputFramebufferForTargetAtindexBmHb:(NSInteger)hb;
+ (BOOL)framebufferForOutputBmHb:(NSInteger)hb;
+ (BOOL)removeOutputFramebufferBmHb:(NSInteger)hb;
+ (BOOL)notifyTargetsAboutNewOutputTextureBmHb:(NSInteger)hb;
+ (BOOL)targetsBmHb:(NSInteger)hb;
+ (BOOL)addTargetBmHb:(NSInteger)hb;
+ (BOOL)addTargetAttexturelocationBmHb:(NSInteger)hb;
+ (BOOL)removeTargetBmHb:(NSInteger)hb;
+ (BOOL)removeAllTargetsBmHb:(NSInteger)hb;
+ (BOOL)forceProcessingAtSizeBmHb:(NSInteger)hb;
+ (BOOL)forceProcessingAtSizeRespectingAspectRatioBmHb:(NSInteger)hb;
+ (BOOL)useNextFrameForImageCaptureBmHb:(NSInteger)hb;
+ (BOOL)newCGImageFromCurrentlyProcessedOutputBmHb:(NSInteger)hb;
+ (BOOL)newCGImageByFilteringCGImageBmHb:(NSInteger)hb;
+ (BOOL)providesMonochromeOutputBmHb:(NSInteger)hb;
+ (BOOL)imageFromCurrentFramebufferBmHb:(NSInteger)hb;
+ (BOOL)imageFromCurrentFramebufferWithOrientationBmHb:(NSInteger)hb;
+ (BOOL)imageByFilteringImageBmHb:(NSInteger)hb;
+ (BOOL)newCGImageByFilteringImageBmHb:(NSInteger)hb;
+ (BOOL)imageFromCurrentFramebufferBmHb:(NSInteger)hb;
+ (BOOL)imageFromCurrentFramebufferWithOrientationBmHb:(NSInteger)hb;
+ (BOOL)imageByFilteringImageBmHb:(NSInteger)hb;
+ (BOOL)newCGImageByFilteringImageBmHb:(NSInteger)hb;
+ (BOOL)setAudioEncodingTargetBmHb:(NSInteger)hb;
+ (BOOL)setOutputTextureOptionsBmHb:(NSInteger)hb;

@end
