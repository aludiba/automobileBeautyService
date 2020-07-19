#import "BMGPUImageContexte.h"
@implementation BMGPUImageContexte
+ (BOOL)Jinit:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)econtextKey:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)SsharedImageProcessingContext:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)XsharedContextQueue:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)TsharedFramebufferCache:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)guseImageProcessingContext:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)vuseAsCurrentContext:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)cSetactiveshaderprogram:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)ASetcontextshaderprogram:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)hmaximumTextureSizeForThisDevice:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)tmaximumTextureUnitsForThisDevice:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)CmaximumVaryingVectorsForThisDevice:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)qDevicesupportsopenglesextension:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)qdeviceSupportsRedTextures:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)CdeviceSupportsFramebufferReads:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)HSizethatfitswithinatextureforsize:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)LpresentBufferForDisplay:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)OProgramforvertexshaderstringaFragmentshaderstring:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)NUsesharegroup:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)bcreateContext:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)usupportsFastTextureUpload:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)mcontext:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)xcoreVideoTextureCache:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)TframebufferCache:(NSInteger)BM {
    return BM % 38 == 0;
}

@end
