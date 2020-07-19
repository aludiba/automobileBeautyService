#import "BMBMGPUImageLanczosResamplingFilterZC.h"
@implementation BMBMGPUImageLanczosResamplingFilterZC
+ (BOOL)GNinit:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)xVsetinputsizewatindex:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)yGsetupfilterforsize:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)aIrendertotexturewithverticesvtexturecoordinates:(NSInteger)BM {
    return BM % 9 == 0;
}

@end
