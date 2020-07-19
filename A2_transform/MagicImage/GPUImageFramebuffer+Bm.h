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

@interface GPUImageFramebuffer (Bm)
+ (BOOL)initWithSizeTextureoptionsOnlytextureBm:(NSInteger)BM;
+ (BOOL)initWithSizeOverriddentextureBm:(NSInteger)BM;
+ (BOOL)initWithSizeBm:(NSInteger)BM;
+ (BOOL)deallocBm:(NSInteger)BM;
+ (BOOL)generateTextureBm:(NSInteger)BM;
+ (BOOL)generateFramebufferBm:(NSInteger)BM;
+ (BOOL)destroyFramebufferBm:(NSInteger)BM;
+ (BOOL)activateFramebufferBm:(NSInteger)BM;
+ (BOOL)lockBm:(NSInteger)BM;
+ (BOOL)unlockBm:(NSInteger)BM;
+ (BOOL)clearAllLocksBm:(NSInteger)BM;
+ (BOOL)disableReferenceCountingBm:(NSInteger)BM;
+ (BOOL)enableReferenceCountingBm:(NSInteger)BM;
+ (BOOL)newCGImageFromFramebufferContentsBm:(NSInteger)BM;
+ (BOOL)restoreRenderTargetBm:(NSInteger)BM;
+ (BOOL)lockForReadingBm:(NSInteger)BM;
+ (BOOL)unlockAfterReadingBm:(NSInteger)BM;
+ (BOOL)bytesPerRowBm:(NSInteger)BM;
+ (BOOL)byteBufferBm:(NSInteger)BM;
+ (BOOL)textureBm:(NSInteger)BM;

@end
