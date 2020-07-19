#import "BMBMBMGPUImageLanczosResamplingFilterzeW.h"
@implementation BMBMBMGPUImageLanczosResamplingFilterzeW
+ (BOOL)dDpinit:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)pNnsetinputsizebatindex:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)tEosetupfilterforsize:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)hKjrendertotexturewithverticeswtexturecoordinates:(NSInteger)BM {
    return BM % 26 == 0;
}

@end
