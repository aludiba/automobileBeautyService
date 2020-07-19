#import "GPUImagePinchDistortionFilter+Bm.h"
@implementation GPUImagePinchDistortionFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)adjustAspectRatioBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)forceProcessingAtSizeBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)setInputSizeAtindexBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)setInputRotationAtindexBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)setAspectRatioBm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)setRadiusBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)setScaleBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)setCenterBm:(NSInteger)BM {
    return BM % 2 == 0;
}

@end
