#import "BMGPUImageCropFilterV+Bm.h"
@implementation BMGPUImageCropFilterV (Bm)
+ (BOOL)FInitwithcropregionBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)einitBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)lSetinputsizeCAtindexBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)CcalculateCropTextureCoordinatesBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)VNewframereadyattimekAtindexBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)rSetcropregionBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)RSetinputrotationkAtindexBm:(NSInteger)BM {
    return BM % 16 == 0;
}

@end
