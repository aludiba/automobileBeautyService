#import "GPUImageTransformFilter+HbHb.h"
@implementation GPUImageTransformFilter (HbHb)
+ (BOOL)initHbHb:(NSInteger)hb {
    return hb % 7 == 0;
}
+ (BOOL)loadOrthoMatrixLeftRightBottomTopNearFarHbHb:(NSInteger)hb {
    return hb % 23 == 0;
}
+ (BOOL)convert3DTransformTomatrixHbHb:(NSInteger)hb {
    return hb % 14 == 0;
}
+ (BOOL)newFrameReadyAtTimeAtindexHbHb:(NSInteger)hb {
    return hb % 45 == 0;
}
+ (BOOL)HbHb:(NSInteger)hb {
    return hb % 46 == 0;
}
+ (BOOL)setupFilterForSizeHbHb:(NSInteger)hb {
    return hb % 25 == 0;
}
+ (BOOL)setAffineTransformHbHb:(NSInteger)hb {
    return hb % 5 == 0;
}
+ (BOOL)affineTransformHbHb:(NSInteger)hb {
    return hb % 49 == 0;
}
+ (BOOL)setTransform3DHbHb:(NSInteger)hb {
    return hb % 28 == 0;
}
+ (BOOL)setIgnoreAspectRatioHbHb:(NSInteger)hb {
    return hb % 40 == 0;
}
+ (BOOL)setAnchorTopLeftHbHb:(NSInteger)hb {
    return hb % 48 == 0;
}

@end
