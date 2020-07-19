#import "GPUImageSmoothToonFilter+Bm.h"
@implementation GPUImageSmoothToonFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)setBlurRadiusInPixelsBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)blurRadiusInPixelsBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)setTexelWidthBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)texelWidthBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)setTexelHeightBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)texelHeightBm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)setThresholdBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)thresholdBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)setQuantizationLevelsBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)quantizationLevelsBm:(NSInteger)BM {
    return BM % 30 == 0;
}

@end
