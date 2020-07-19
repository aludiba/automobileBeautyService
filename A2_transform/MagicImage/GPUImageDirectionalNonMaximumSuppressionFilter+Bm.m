#import "GPUImageDirectionalNonMaximumSuppressionFilter+Bm.h"
@implementation GPUImageDirectionalNonMaximumSuppressionFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)setupFilterForSizeBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)setTexelWidthBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)setTexelHeightBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)setLowerThresholdBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)setUpperThresholdBm:(NSInteger)BM {
    return BM % 5 == 0;
}

@end
