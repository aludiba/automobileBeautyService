#import "BMGPUImageDirectionalNonMaximumSuppressionFilterX+Bm.h"
@implementation BMGPUImageDirectionalNonMaximumSuppressionFilterX (Bm)
+ (BOOL)DinitBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)ISetupfilterforsizeBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)gSettexelwidthBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)XSettexelheightBm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)HSetlowerthresholdBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)zSetupperthresholdBm:(NSInteger)BM {
    return BM % 16 == 0;
}

@end
