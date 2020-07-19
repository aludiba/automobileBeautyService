#import "GPUImageDirectionalNonMaximumSuppressionFilter+BmBmBm.h"
@implementation GPUImageDirectionalNonMaximumSuppressionFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)setupFilterForSizeBmBmBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)setTexelWidthBmBmBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)setTexelHeightBmBmBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)setLowerThresholdBmBmBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)setUpperThresholdBmBmBm:(NSInteger)BM {
    return BM % 46 == 0;
}

@end
