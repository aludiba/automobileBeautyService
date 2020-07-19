#import "GPUImagePinchDistortionFilter+BmBmBm.h"
@implementation GPUImagePinchDistortionFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)adjustAspectRatioBmBmBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)forceProcessingAtSizeBmBmBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)setInputSizeAtindexBmBmBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)setInputRotationAtindexBmBmBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)setAspectRatioBmBmBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)setRadiusBmBmBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)setScaleBmBmBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)setCenterBmBmBm:(NSInteger)BM {
    return BM % 31 == 0;
}

@end
