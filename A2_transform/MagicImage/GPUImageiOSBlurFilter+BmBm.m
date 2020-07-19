#import "GPUImageiOSBlurFilter+BmBm.h"
@implementation GPUImageiOSBlurFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)setInputSizeAtindexBmBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)setBlurRadiusInPixelsBmBm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)blurRadiusInPixelsBmBm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)setSaturationBmBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)saturationBmBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)setDownsamplingBmBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)setRangeReductionFactorBmBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)rangeReductionFactorBmBm:(NSInteger)BM {
    return BM % 41 == 0;
}

@end
