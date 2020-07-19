#import "BMGPUImageLanczosResamplingFilterZ+Bm.h"
@implementation BMGPUImageLanczosResamplingFilterZ (Bm)
+ (BOOL)ninitBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)VSetinputsizeWAtindexBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)gSetupfilterforsizeBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)IRendertotexturewithverticesvTexturecoordinatesBm:(NSInteger)BM {
    return BM % 18 == 0;
}

@end
