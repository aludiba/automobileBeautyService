#import "BMGPUImageTwoInputCrossTextureSamplingFilterA.h"
@implementation BMGPUImageTwoInputCrossTextureSamplingFilterA
+ (BOOL)FInitwithfragmentshaderfromstring:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)YSetupfilterforsize:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)vSettexelwidth:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)VSettexelheight:(NSInteger)BM {
    return BM % 38 == 0;
}

@end
