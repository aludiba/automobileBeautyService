#import "GPUImageSmoothToonFilter+BmBmBm.h"
@implementation GPUImageSmoothToonFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)setBlurRadiusInPixelsBmBmBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)blurRadiusInPixelsBmBmBm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)setTexelWidthBmBmBm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)texelWidthBmBmBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)setTexelHeightBmBmBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)texelHeightBmBmBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)setThresholdBmBmBm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)thresholdBmBmBm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)setQuantizationLevelsBmBmBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)quantizationLevelsBmBmBm:(NSInteger)BM {
    return BM % 32 == 0;
}

@end
