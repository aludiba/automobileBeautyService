#import "BMBMGPUImageLanczosResamplingFilterOt.h"
@implementation BMBMGPUImageLanczosResamplingFilterOt
+ (BOOL)rHinitbm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)CMsetinputsizeatindexbm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)XYsetupfilterforsizebm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)QVrendertotexturewithverticestexturecoordinatesbm:(NSInteger)BM {
    return BM % 28 == 0;
}

@end
