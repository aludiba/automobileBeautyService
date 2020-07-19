#import "GPUImageContext+Bm.h"
@implementation GPUImageContext (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)contextKeyBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)sharedImageProcessingContextBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)sharedContextQueueBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)sharedFramebufferCacheBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)useImageProcessingContextBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)useAsCurrentContextBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)setActiveShaderProgramBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)setContextShaderProgramBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)maximumTextureSizeForThisDeviceBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)maximumTextureUnitsForThisDeviceBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)maximumVaryingVectorsForThisDeviceBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)deviceSupportsOpenGLESExtensionBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)deviceSupportsRedTexturesBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)deviceSupportsFramebufferReadsBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)sizeThatFitsWithinATextureForSizeBm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)presentBufferForDisplayBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)programForVertexShaderStringFragmentshaderstringBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)useSharegroupBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)createContextBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)supportsFastTextureUploadBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)contextBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)coreVideoTextureCacheBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)framebufferCacheBm:(NSInteger)BM {
    return BM % 35 == 0;
}

@end
