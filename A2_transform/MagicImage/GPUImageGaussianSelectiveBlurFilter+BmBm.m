#import "GPUImageGaussianSelectiveBlurFilter+BmBm.h"
@implementation GPUImageGaussianSelectiveBlurFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)setInputSizeAtindexBmBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)setBlurRadiusInPixelsBmBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)blurRadiusInPixelsBmBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)setExcludeCirclePointBmBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)setExcludeCircleRadiusBmBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)setExcludeBlurSizeBmBm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)setAspectRatioBmBm:(NSInteger)BM {
    return BM % 18 == 0;
}

@end
