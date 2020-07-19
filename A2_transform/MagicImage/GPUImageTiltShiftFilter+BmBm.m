#import "GPUImageTiltShiftFilter+BmBm.h"
@implementation GPUImageTiltShiftFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)setBlurRadiusInPixelsBmBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)blurRadiusInPixelsBmBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)setTopFocusLevelBmBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)setBottomFocusLevelBmBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)setFocusFallOffRateBmBm:(NSInteger)BM {
    return BM % 15 == 0;
}

@end
