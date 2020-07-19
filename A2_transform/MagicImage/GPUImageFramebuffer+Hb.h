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

@interface GPUImageFramebuffer (Hb)
+ (BOOL)initWithSizeTextureoptionsOnlytextureHb:(NSInteger)hb;
+ (BOOL)initWithSizeOverriddentextureHb:(NSInteger)hb;
+ (BOOL)initWithSizeHb:(NSInteger)hb;
+ (BOOL)deallocHb:(NSInteger)hb;
+ (BOOL)generateTextureHb:(NSInteger)hb;
+ (BOOL)generateFramebufferHb:(NSInteger)hb;
+ (BOOL)destroyFramebufferHb:(NSInteger)hb;
+ (BOOL)activateFramebufferHb:(NSInteger)hb;
+ (BOOL)lockHb:(NSInteger)hb;
+ (BOOL)unlockHb:(NSInteger)hb;
+ (BOOL)clearAllLocksHb:(NSInteger)hb;
+ (BOOL)disableReferenceCountingHb:(NSInteger)hb;
+ (BOOL)enableReferenceCountingHb:(NSInteger)hb;
+ (BOOL)newCGImageFromFramebufferContentsHb:(NSInteger)hb;
+ (BOOL)restoreRenderTargetHb:(NSInteger)hb;
+ (BOOL)lockForReadingHb:(NSInteger)hb;
+ (BOOL)unlockAfterReadingHb:(NSInteger)hb;
+ (BOOL)bytesPerRowHb:(NSInteger)hb;
+ (BOOL)byteBufferHb:(NSInteger)hb;
+ (BOOL)textureHb:(NSInteger)hb;

@end
