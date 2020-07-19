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

@interface GPUImageFramebuffer (-Deletecomments)
+ (BOOL)initWithSizeTextureoptionsOnlytexture-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)initWithSizeOverriddentexture-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)initWithSize-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)dealloc-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)generateTexture-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)generateFramebuffer-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)destroyFramebuffer-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)activateFramebuffer-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)lock-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)unlock-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)clearAllLocks-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)disableReferenceCounting-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)enableReferenceCounting-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)newCGImageFromFramebufferContents-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)restoreRenderTarget-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)lockForReading-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)unlockAfterReading-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)bytesPerRow-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)byteBuffer-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)texture-Deletecomments:(NSInteger)-deleteComments;

@end
