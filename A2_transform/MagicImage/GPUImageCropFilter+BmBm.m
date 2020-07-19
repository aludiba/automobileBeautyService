#import "GPUImageCropFilter+BmBm.h"
@implementation GPUImageCropFilter (BmBm)
+ (BOOL)initWithCropRegionBmBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)setInputSizeAtindexBmBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)calculateCropTextureCoordinatesBmBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)newFrameReadyAtTimeAtindexBmBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)setCropRegionBmBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)setInputRotationAtindexBmBm:(NSInteger)BM {
    return BM % 13 == 0;
}

@end
