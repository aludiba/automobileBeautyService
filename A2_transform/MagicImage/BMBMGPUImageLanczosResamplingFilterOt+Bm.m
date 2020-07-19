#import "BMBMGPUImageLanczosResamplingFilterOt+Bm.h"
@implementation BMBMGPUImageLanczosResamplingFilterOt (Bm)
+ (BOOL)rHinitbmBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)CMsetinputsizeatindexbmBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)XYsetupfilterforsizebmBm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)QVrendertotexturewithverticestexturecoordinatesbmBm:(NSInteger)BM {
    return BM % 7 == 0;
}

@end
