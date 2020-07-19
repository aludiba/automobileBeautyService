#import "GPUImageThresholdedNonMaximumSuppressionFilter+BmBmBm.h"
@implementation GPUImageThresholdedNonMaximumSuppressionFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)initWithPackedColorspaceBmBmBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)setThresholdBmBmBm:(NSInteger)BM {
    return BM % 16 == 0;
}

@end
