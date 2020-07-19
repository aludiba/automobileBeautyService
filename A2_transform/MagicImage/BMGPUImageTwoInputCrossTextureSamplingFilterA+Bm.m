#import "BMGPUImageTwoInputCrossTextureSamplingFilterA+Bm.h"
@implementation BMGPUImageTwoInputCrossTextureSamplingFilterA (Bm)
+ (BOOL)FInitwithfragmentshaderfromstringBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)YSetupfilterforsizeBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)vSettexelwidthBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)VSettexelheightBm:(NSInteger)BM {
    return BM % 46 == 0;
}

@end
