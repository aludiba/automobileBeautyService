#import "BMGPUImageTwoInputCrossTextureSamplingFilterK.h"
@implementation BMGPUImageTwoInputCrossTextureSamplingFilterK
+ (BOOL)UInitwithfragmentshaderfromstringbm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)SSetupfilterforsizebm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)XSettexelwidthbm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)ESettexelheightbm:(NSInteger)BM {
    return BM % 43 == 0;
}

@end
