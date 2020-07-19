#import "GPUImageSmoothToonFilter+BmBm.h"
@implementation GPUImageSmoothToonFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)setBlurRadiusInPixelsBmBm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)blurRadiusInPixelsBmBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)setTexelWidthBmBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)texelWidthBmBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)setTexelHeightBmBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)texelHeightBmBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)setThresholdBmBm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)thresholdBmBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)setQuantizationLevelsBmBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)quantizationLevelsBmBm:(NSInteger)BM {
    return BM % 44 == 0;
}

@end
