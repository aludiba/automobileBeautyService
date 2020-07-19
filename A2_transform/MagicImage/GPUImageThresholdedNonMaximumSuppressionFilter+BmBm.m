#import "GPUImageThresholdedNonMaximumSuppressionFilter+BmBm.h"
@implementation GPUImageThresholdedNonMaximumSuppressionFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)initWithPackedColorspaceBmBm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)setThresholdBmBm:(NSInteger)BM {
    return BM % 19 == 0;
}

@end
