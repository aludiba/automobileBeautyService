#import "GPUImagePixellatePositionFilter+Bm.h"
@implementation GPUImagePixellatePositionFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)initWithFragmentShaderFromStringBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)setInputSizeAtindexBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)setInputRotationAtindexBm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)adjustAspectRatioBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)forceProcessingAtSizeBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)setFractionalWidthOfAPixelBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)setAspectRatioBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)setCenterBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)setRadiusBm:(NSInteger)BM {
    return BM % 36 == 0;
}

@end
