#import "GPUImageCropFilter+Bm.h"
@implementation GPUImageCropFilter (Bm)
+ (BOOL)initWithCropRegionBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)setInputSizeAtindexBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)calculateCropTextureCoordinatesBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)newFrameReadyAtTimeAtindexBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)setCropRegionBm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)setInputRotationAtindexBm:(NSInteger)BM {
    return BM % 26 == 0;
}

@end
