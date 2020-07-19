#import "BMBMGPUImageLanczosResamplingFilterze+Bm.h"
@implementation BMBMGPUImageLanczosResamplingFilterze (Bm)
+ (BOOL)DPinitBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)nNsetinputsizebatindexBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)eOsetupfilterforsizeBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)KJrendertotexturewithverticeswtexturecoordinatesBm:(NSInteger)BM {
    return BM % 10 == 0;
}

@end
