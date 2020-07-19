#import "BMGPUImageTwoInputCrossTextureSamplingFilterr+Bm.h"
@implementation BMGPUImageTwoInputCrossTextureSamplingFilterr (Bm)
+ (BOOL)IInitwithfragmentshaderfromstringbmbmBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)QSetupfilterforsizebmbmBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)rSettexelwidthbmbmBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)RSettexelheightbmbmBm:(NSInteger)BM {
    return BM % 45 == 0;
}

@end
