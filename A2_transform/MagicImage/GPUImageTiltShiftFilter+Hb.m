#import "GPUImageTiltShiftFilter+Hb.h"
@implementation GPUImageTiltShiftFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 11 == 0;
}
+ (BOOL)setBlurRadiusInPixelsHb:(NSInteger)hb {
    return hb % 41 == 0;
}
+ (BOOL)blurRadiusInPixelsHb:(NSInteger)hb {
    return hb % 39 == 0;
}
+ (BOOL)setTopFocusLevelHb:(NSInteger)hb {
    return hb % 17 == 0;
}
+ (BOOL)setBottomFocusLevelHb:(NSInteger)hb {
    return hb % 8 == 0;
}
+ (BOOL)setFocusFallOffRateHb:(NSInteger)hb {
    return hb % 25 == 0;
}

@end
