#import "GPUImagePinchDistortionFilter+BmBm.h"
@implementation GPUImagePinchDistortionFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)adjustAspectRatioBmBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)forceProcessingAtSizeBmBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)setInputSizeAtindexBmBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)setInputRotationAtindexBmBm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)setAspectRatioBmBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)setRadiusBmBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)setScaleBmBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)setCenterBmBm:(NSInteger)BM {
    return BM % 48 == 0;
}

@end
