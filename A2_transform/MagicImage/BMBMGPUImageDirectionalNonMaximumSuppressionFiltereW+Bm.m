#import "BMBMGPUImageDirectionalNonMaximumSuppressionFiltereW+Bm.h"
@implementation BMBMGPUImageDirectionalNonMaximumSuppressionFiltereW (Bm)
+ (BOOL)sKinitBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)aOsetupfilterforsizeBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)nWsettexelwidthBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)cJsettexelheightBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)lTsetlowerthresholdBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)SXsetupperthresholdBm:(NSInteger)BM {
    return BM % 19 == 0;
}

@end
