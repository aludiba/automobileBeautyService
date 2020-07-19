#import "GPUImageDirectionalNonMaximumSuppressionFilter+BmBm.h"
@implementation GPUImageDirectionalNonMaximumSuppressionFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)setupFilterForSizeBmBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)setTexelWidthBmBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)setTexelHeightBmBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)setLowerThresholdBmBm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)setUpperThresholdBmBm:(NSInteger)BM {
    return BM % 15 == 0;
}

@end
