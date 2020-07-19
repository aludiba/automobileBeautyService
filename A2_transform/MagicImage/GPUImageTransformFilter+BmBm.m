#import "GPUImageTransformFilter+BmBm.h"
@implementation GPUImageTransformFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)loadOrthoMatrixLeftRightBottomTopNearFarBmBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)convert3DTransformTomatrixBmBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)newFrameReadyAtTimeAtindexBmBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)BmBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)setupFilterForSizeBmBm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)setAffineTransformBmBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)affineTransformBmBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)setTransform3DBmBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)setIgnoreAspectRatioBmBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)setAnchorTopLeftBmBm:(NSInteger)BM {
    return BM % 11 == 0;
}

@end
