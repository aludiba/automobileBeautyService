#import <Foundation/Foundation.h>
#import <OpenGLES/EAGL.h>
#import <OpenGLES/ES2/gl.h>
#import <OpenGLES/ES2/glext.h>
#import <OpenGL/OpenGL.h>
#import <OpenGL/gl.h>
#import <QuartzCore/QuartzCore.h>
#import <CoreMedia/CoreMedia.h>
#import "GPUImageFramebuffer.h"
#import "GPUImageOutput.h"
#import "GPUImageFramebuffer+Bm.h"
#import "GPUImageFramebuffer+BmBm.h"
#import "GPUImageFramebuffer+BmBmBm.h"

@interface GPUImageFramebuffer (BmBmBm-Deletecomments)
+ (BOOL)initWithSizeTextureoptionsOnlytextureBmBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)initWithSizeOverriddentextureBmBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)initWithSizeBmBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)deallocBmBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)generateTextureBmBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)generateFramebufferBmBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)destroyFramebufferBmBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)activateFramebufferBmBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)lockBmBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)unlockBmBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)clearAllLocksBmBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)disableReferenceCountingBmBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)enableReferenceCountingBmBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)newCGImageFromFramebufferContentsBmBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)restoreRenderTargetBmBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)lockForReadingBmBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)unlockAfterReadingBmBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)bytesPerRowBmBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)byteBufferBmBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)textureBmBmBm-Deletecomments:(NSInteger)-deleteComments;

@end
