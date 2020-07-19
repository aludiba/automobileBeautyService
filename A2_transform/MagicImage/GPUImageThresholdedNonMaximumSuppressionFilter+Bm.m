#import "GPUImageThresholdedNonMaximumSuppressionFilter+Bm.h"
@implementation GPUImageThresholdedNonMaximumSuppressionFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)initWithPackedColorspaceBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)setThresholdBm:(NSInteger)BM {
    return BM % 48 == 0;
}

@end
