#import <Foundation/Foundation.h>
#import <QuartzCore/QuartzCore.h>
#import "GPUImageFramebuffer.h"
#import "GPUImageFramebufferCache.h"
#import "GPUImageContext.h"
#import "GPUImageOutput.h"
#import <UIKit/UIKit.h>

@interface GPUImageFramebufferCache (-Deletecomments)
+ (BOOL)init-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)hashForSizeTextureoptionsOnlytexture-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)fetchFramebufferForSizeTextureoptionsOnlytexture-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)fetchFramebufferForSizeOnlytexture-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)returnFramebufferToCache-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)purgeAllUnassignedFramebuffers-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)addFramebufferToActiveImageCaptureList-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)removeFramebufferFromActiveImageCaptureList-Deletecomments:(NSInteger)-deleteComments;

@end
