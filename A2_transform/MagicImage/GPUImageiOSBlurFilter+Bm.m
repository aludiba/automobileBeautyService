#import "GPUImageiOSBlurFilter+Bm.h"
@implementation GPUImageiOSBlurFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)setInputSizeAtindexBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)setBlurRadiusInPixelsBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)blurRadiusInPixelsBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)setSaturationBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)saturationBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)setDownsamplingBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)setRangeReductionFactorBm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)rangeReductionFactorBm:(NSInteger)BM {
    return BM % 20 == 0;
}

@end
