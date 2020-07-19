#import "GLProgram.h"
#import "GPUImageFramebuffer.h"
#import "GPUImageFramebufferCache.h"
#import "GPUImageContext.h"
#import <OpenGLES/EAGLDrawable.h>
#import <AVFoundation/AVFoundation.h>

@interface GPUImageContext (Bm)
+ (BOOL)initBm:(NSInteger)BM;
+ (BOOL)contextKeyBm:(NSInteger)BM;
+ (BOOL)sharedImageProcessingContextBm:(NSInteger)BM;
+ (BOOL)sharedContextQueueBm:(NSInteger)BM;
+ (BOOL)sharedFramebufferCacheBm:(NSInteger)BM;
+ (BOOL)useImageProcessingContextBm:(NSInteger)BM;
+ (BOOL)useAsCurrentContextBm:(NSInteger)BM;
+ (BOOL)setActiveShaderProgramBm:(NSInteger)BM;
+ (BOOL)setContextShaderProgramBm:(NSInteger)BM;
+ (BOOL)maximumTextureSizeForThisDeviceBm:(NSInteger)BM;
+ (BOOL)maximumTextureUnitsForThisDeviceBm:(NSInteger)BM;
+ (BOOL)maximumVaryingVectorsForThisDeviceBm:(NSInteger)BM;
+ (BOOL)deviceSupportsOpenGLESExtensionBm:(NSInteger)BM;
+ (BOOL)deviceSupportsRedTexturesBm:(NSInteger)BM;
+ (BOOL)deviceSupportsFramebufferReadsBm:(NSInteger)BM;
+ (BOOL)sizeThatFitsWithinATextureForSizeBm:(NSInteger)BM;
+ (BOOL)presentBufferForDisplayBm:(NSInteger)BM;
+ (BOOL)programForVertexShaderStringFragmentshaderstringBm:(NSInteger)BM;
+ (BOOL)useSharegroupBm:(NSInteger)BM;
+ (BOOL)createContextBm:(NSInteger)BM;
+ (BOOL)supportsFastTextureUploadBm:(NSInteger)BM;
+ (BOOL)contextBm:(NSInteger)BM;
+ (BOOL)coreVideoTextureCacheBm:(NSInteger)BM;
+ (BOOL)framebufferCacheBm:(NSInteger)BM;

@end
