#import "GPUImageGaussianSelectiveBlurFilter+Bm.h"
@implementation GPUImageGaussianSelectiveBlurFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)setInputSizeAtindexBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)setBlurRadiusInPixelsBm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)blurRadiusInPixelsBm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)setExcludeCirclePointBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)setExcludeCircleRadiusBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)setExcludeBlurSizeBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)setAspectRatioBm:(NSInteger)BM {
    return BM % 47 == 0;
}

@end
