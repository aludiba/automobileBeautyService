#import "GPUImageTiltShiftFilter+Bm.h"
@implementation GPUImageTiltShiftFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)setBlurRadiusInPixelsBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)blurRadiusInPixelsBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)setTopFocusLevelBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)setBottomFocusLevelBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)setFocusFallOffRateBm:(NSInteger)BM {
    return BM % 13 == 0;
}

@end
