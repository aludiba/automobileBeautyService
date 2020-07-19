#import "GPUImageBulgeDistortionFilter+BmBmBm.h"
@implementation GPUImageBulgeDistortionFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)adjustAspectRatioBmBmBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)forceProcessingAtSizeBmBmBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)setInputSizeAtindexBmBmBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)setAspectRatioBmBmBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)setInputRotationAtindexBmBmBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)setRadiusBmBmBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)setScaleBmBmBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)setCenterBmBmBm:(NSInteger)BM {
    return BM % 8 == 0;
}

@end
