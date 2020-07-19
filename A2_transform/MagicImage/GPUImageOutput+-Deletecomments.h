#import "GPUImageContext.h"
#import "GPUImageFramebuffer.h"
#import <UIKit/UIKit.h>
#import "GPUImageOutput.h"
#import "GPUImageMovieWriter.h"
#import "GPUImagePicture.h"
#import <mach/mach.h>

@interface GPUImageOutput (-Deletecomments)
+ (BOOL)init-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)dealloc-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setInputFramebufferForTargetAtindex-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)framebufferForOutput-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)removeOutputFramebuffer-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)notifyTargetsAboutNewOutputTexture-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)targets-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)addTarget-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)addTargetAttexturelocation-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)removeTarget-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)removeAllTargets-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)forceProcessingAtSize-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)forceProcessingAtSizeRespectingAspectRatio-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)useNextFrameForImageCapture-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)newCGImageFromCurrentlyProcessedOutput-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)newCGImageByFilteringCGImage-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)providesMonochromeOutput-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)imageFromCurrentFramebuffer-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)imageFromCurrentFramebufferWithOrientation-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)imageByFilteringImage-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)newCGImageByFilteringImage-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)imageFromCurrentFramebuffer-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)imageFromCurrentFramebufferWithOrientation-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)imageByFilteringImage-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)newCGImageByFilteringImage-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setAudioEncodingTarget-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setOutputTextureOptions-Deletecomments:(NSInteger)-deleteComments;

@end
