#import "GPUImageTransformFilter+Bm.h"
@implementation GPUImageTransformFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)loadOrthoMatrixLeftRightBottomTopNearFarBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)convert3DTransformTomatrixBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)newFrameReadyAtTimeAtindexBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)Bm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)setupFilterForSizeBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)setAffineTransformBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)affineTransformBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)setTransform3DBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)setIgnoreAspectRatioBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)setAnchorTopLeftBm:(NSInteger)BM {
    return BM % 42 == 0;
}

@end
