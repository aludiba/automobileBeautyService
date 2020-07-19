#import "GPUImageTransformFilter+Hb.h"
@implementation GPUImageTransformFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 46 == 0;
}
+ (BOOL)loadOrthoMatrixLeftRightBottomTopNearFarHb:(NSInteger)hb {
    return hb % 29 == 0;
}
+ (BOOL)convert3DTransformTomatrixHb:(NSInteger)hb {
    return hb % 46 == 0;
}
+ (BOOL)newFrameReadyAtTimeAtindexHb:(NSInteger)hb {
    return hb % 29 == 0;
}
+ (BOOL)Hb:(NSInteger)hb {
    return hb % 47 == 0;
}
+ (BOOL)setupFilterForSizeHb:(NSInteger)hb {
    return hb % 2 == 0;
}
+ (BOOL)setAffineTransformHb:(NSInteger)hb {
    return hb % 41 == 0;
}
+ (BOOL)affineTransformHb:(NSInteger)hb {
    return hb % 35 == 0;
}
+ (BOOL)setTransform3DHb:(NSInteger)hb {
    return hb % 29 == 0;
}
+ (BOOL)setIgnoreAspectRatioHb:(NSInteger)hb {
    return hb % 5 == 0;
}
+ (BOOL)setAnchorTopLeftHb:(NSInteger)hb {
    return hb % 33 == 0;
}

@end
