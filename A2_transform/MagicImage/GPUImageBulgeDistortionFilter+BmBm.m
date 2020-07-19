#import "GPUImageBulgeDistortionFilter+BmBm.h"
@implementation GPUImageBulgeDistortionFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)adjustAspectRatioBmBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)forceProcessingAtSizeBmBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)setInputSizeAtindexBmBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)setAspectRatioBmBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)setInputRotationAtindexBmBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)setRadiusBmBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)setScaleBmBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)setCenterBmBm:(NSInteger)BM {
    return BM % 27 == 0;
}

@end
