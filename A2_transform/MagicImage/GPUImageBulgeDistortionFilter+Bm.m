#import "GPUImageBulgeDistortionFilter+Bm.h"
@implementation GPUImageBulgeDistortionFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)adjustAspectRatioBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)forceProcessingAtSizeBm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)setInputSizeAtindexBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)setAspectRatioBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)setInputRotationAtindexBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)setRadiusBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)setScaleBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)setCenterBm:(NSInteger)BM {
    return BM % 16 == 0;
}

@end
