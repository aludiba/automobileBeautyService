#import "BMBMGPUImageLanczosResamplingFilterze.h"
@implementation BMBMGPUImageLanczosResamplingFilterze
+ (BOOL)DPinit:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)nNsetinputsizebatindex:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)eOsetupfilterforsize:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)KJrendertotexturewithverticeswtexturecoordinates:(NSInteger)BM {
    return BM % 39 == 0;
}

@end
