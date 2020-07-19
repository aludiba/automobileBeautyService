#import "GPUImagePixellatePositionFilter+BmBm.h"
@implementation GPUImagePixellatePositionFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)initWithFragmentShaderFromStringBmBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)setInputSizeAtindexBmBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)setInputRotationAtindexBmBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)adjustAspectRatioBmBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)forceProcessingAtSizeBmBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)setFractionalWidthOfAPixelBmBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)setAspectRatioBmBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)setCenterBmBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)setRadiusBmBm:(NSInteger)BM {
    return BM % 19 == 0;
}

@end
