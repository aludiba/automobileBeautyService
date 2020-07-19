#import "BMGPUImageTextureOutputT+Bm.h"
@implementation BMGPUImageTextureOutputT (Bm)
+ (BOOL)JinitBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)tdoneWithTextureBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)RNewframereadyattimeJAtindexBm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)BnextAvailableTextureIndexBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)wSetinputframebufferJAtindexBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)bSetinputrotationYAtindexBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)rSetinputsizeAAtindexBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)OmaximumOutputSizeBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)vendProcessingBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)jshouldIgnoreUpdatesToThisTargetBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)JwantsMonochromeInputBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)TSetcurrentlyreceivingmonochromeinputBm:(NSInteger)BM {
    return BM % 27 == 0;
}

@end
