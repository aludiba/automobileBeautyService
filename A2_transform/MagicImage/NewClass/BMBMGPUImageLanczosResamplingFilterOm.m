#import "BMBMGPUImageLanczosResamplingFilterOm.h"
@implementation BMBMGPUImageLanczosResamplingFilterOm
+ (BOOL)UHinitbm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)JMsetinputsizeatindexbm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)NYsetupfilterforsizebm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)BVrendertotexturewithverticestexturecoordinatesbm:(NSInteger)BM {
    return BM % 3 == 0;
}

@end
