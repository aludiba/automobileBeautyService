#import "GPUImageGaussianSelectiveBlurFilter+BmBmBm.h"
@implementation GPUImageGaussianSelectiveBlurFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)setInputSizeAtindexBmBmBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)setBlurRadiusInPixelsBmBmBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)blurRadiusInPixelsBmBmBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)setExcludeCirclePointBmBmBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)setExcludeCircleRadiusBmBmBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)setExcludeBlurSizeBmBmBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)setAspectRatioBmBmBm:(NSInteger)BM {
    return BM % 7 == 0;
}

@end
