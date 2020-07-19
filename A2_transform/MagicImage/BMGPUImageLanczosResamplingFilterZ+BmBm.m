#import "BMGPUImageLanczosResamplingFilterZ+BmBm.h"
@implementation BMGPUImageLanczosResamplingFilterZ (BmBm)
+ (BOOL)ninitBmBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)VSetinputsizeWAtindexBmBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)gSetupfilterforsizeBmBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)IRendertotexturewithverticesvTexturecoordinatesBmBm:(NSInteger)BM {
    return BM % 37 == 0;
}

@end
