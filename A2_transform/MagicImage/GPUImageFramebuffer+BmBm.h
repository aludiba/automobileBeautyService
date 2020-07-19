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

@interface GPUImageFramebuffer (BmBm)
+ (BOOL)initWithSizeTextureoptionsOnlytextureBmBm:(NSInteger)BM;
+ (BOOL)initWithSizeOverriddentextureBmBm:(NSInteger)BM;
+ (BOOL)initWithSizeBmBm:(NSInteger)BM;
+ (BOOL)deallocBmBm:(NSInteger)BM;
+ (BOOL)generateTextureBmBm:(NSInteger)BM;
+ (BOOL)generateFramebufferBmBm:(NSInteger)BM;
+ (BOOL)destroyFramebufferBmBm:(NSInteger)BM;
+ (BOOL)activateFramebufferBmBm:(NSInteger)BM;
+ (BOOL)lockBmBm:(NSInteger)BM;
+ (BOOL)unlockBmBm:(NSInteger)BM;
+ (BOOL)clearAllLocksBmBm:(NSInteger)BM;
+ (BOOL)disableReferenceCountingBmBm:(NSInteger)BM;
+ (BOOL)enableReferenceCountingBmBm:(NSInteger)BM;
+ (BOOL)newCGImageFromFramebufferContentsBmBm:(NSInteger)BM;
+ (BOOL)restoreRenderTargetBmBm:(NSInteger)BM;
+ (BOOL)lockForReadingBmBm:(NSInteger)BM;
+ (BOOL)unlockAfterReadingBmBm:(NSInteger)BM;
+ (BOOL)bytesPerRowBmBm:(NSInteger)BM;
+ (BOOL)byteBufferBmBm:(NSInteger)BM;
+ (BOOL)textureBmBm:(NSInteger)BM;

@end
