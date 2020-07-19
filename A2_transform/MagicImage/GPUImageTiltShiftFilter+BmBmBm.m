#import "GPUImageTiltShiftFilter+BmBmBm.h"
@implementation GPUImageTiltShiftFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)setBlurRadiusInPixelsBmBmBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)blurRadiusInPixelsBmBmBm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)setTopFocusLevelBmBmBm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)setBottomFocusLevelBmBmBm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)setFocusFallOffRateBmBmBm:(NSInteger)BM {
    return BM % 42 == 0;
}

@end
