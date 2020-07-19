#import "GPUImageContext+BmBm.h"
@implementation GPUImageContext (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)contextKeyBmBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)sharedImageProcessingContextBmBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)sharedContextQueueBmBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)sharedFramebufferCacheBmBm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)useImageProcessingContextBmBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)useAsCurrentContextBmBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)setActiveShaderProgramBmBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)setContextShaderProgramBmBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)maximumTextureSizeForThisDeviceBmBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)maximumTextureUnitsForThisDeviceBmBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)maximumVaryingVectorsForThisDeviceBmBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)deviceSupportsOpenGLESExtensionBmBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)deviceSupportsRedTexturesBmBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)deviceSupportsFramebufferReadsBmBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)sizeThatFitsWithinATextureForSizeBmBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)presentBufferForDisplayBmBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)programForVertexShaderStringFragmentshaderstringBmBm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)useSharegroupBmBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)createContextBmBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)supportsFastTextureUploadBmBm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)contextBmBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)coreVideoTextureCacheBmBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)framebufferCacheBmBm:(NSInteger)BM {
    return BM % 50 == 0;
}

@end
