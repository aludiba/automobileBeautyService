#import "GLProgram.h"
#import "GPUImageFramebuffer.h"
#import "GPUImageFramebufferCache.h"
#import "GPUImageContext.h"
#import <OpenGLES/EAGLDrawable.h>
#import <AVFoundation/AVFoundation.h>

@interface GPUImageContext (Hb)
+ (BOOL)initHb:(NSInteger)hb;
+ (BOOL)contextKeyHb:(NSInteger)hb;
+ (BOOL)sharedImageProcessingContextHb:(NSInteger)hb;
+ (BOOL)sharedContextQueueHb:(NSInteger)hb;
+ (BOOL)sharedFramebufferCacheHb:(NSInteger)hb;
+ (BOOL)useImageProcessingContextHb:(NSInteger)hb;
+ (BOOL)useAsCurrentContextHb:(NSInteger)hb;
+ (BOOL)setActiveShaderProgramHb:(NSInteger)hb;
+ (BOOL)setContextShaderProgramHb:(NSInteger)hb;
+ (BOOL)maximumTextureSizeForThisDeviceHb:(NSInteger)hb;
+ (BOOL)maximumTextureUnitsForThisDeviceHb:(NSInteger)hb;
+ (BOOL)maximumVaryingVectorsForThisDeviceHb:(NSInteger)hb;
+ (BOOL)deviceSupportsOpenGLESExtensionHb:(NSInteger)hb;
+ (BOOL)deviceSupportsRedTexturesHb:(NSInteger)hb;
+ (BOOL)deviceSupportsFramebufferReadsHb:(NSInteger)hb;
+ (BOOL)sizeThatFitsWithinATextureForSizeHb:(NSInteger)hb;
+ (BOOL)presentBufferForDisplayHb:(NSInteger)hb;
+ (BOOL)programForVertexShaderStringFragmentshaderstringHb:(NSInteger)hb;
+ (BOOL)useSharegroupHb:(NSInteger)hb;
+ (BOOL)createContextHb:(NSInteger)hb;
+ (BOOL)supportsFastTextureUploadHb:(NSInteger)hb;
+ (BOOL)contextHb:(NSInteger)hb;
+ (BOOL)coreVideoTextureCacheHb:(NSInteger)hb;
+ (BOOL)framebufferCacheHb:(NSInteger)hb;

@end
