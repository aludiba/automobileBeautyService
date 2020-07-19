#import "BMGPUImageThresholdedNonMaximumSuppressionFilterl+Bm.h"
@implementation BMGPUImageThresholdedNonMaximumSuppressionFilterl (Bm)
+ (BOOL)OinitBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)lInitwithpackedcolorspaceBm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)uSetthresholdBm:(NSInteger)BM {
    return BM % 16 == 0;
}

@end
