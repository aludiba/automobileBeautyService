#import "GPUImageiOSBlurFilter+BmBmBm.h"
@implementation GPUImageiOSBlurFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)setInputSizeAtindexBmBmBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)setBlurRadiusInPixelsBmBmBm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)blurRadiusInPixelsBmBmBm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)setSaturationBmBmBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)saturationBmBmBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)setDownsamplingBmBmBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)setRangeReductionFactorBmBmBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)rangeReductionFactorBmBmBm:(NSInteger)BM {
    return BM % 3 == 0;
}

@end
