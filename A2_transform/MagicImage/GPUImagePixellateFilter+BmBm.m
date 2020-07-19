#import "GPUImagePixellateFilter+BmBm.h"
@implementation GPUImagePixellateFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)initWithFragmentShaderFromStringBmBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)adjustAspectRatioBmBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)setInputRotationAtindexBmBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)forceProcessingAtSizeBmBm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)setInputSizeAtindexBmBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)setFractionalWidthOfAPixelBmBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)setAspectRatioBmBm:(NSInteger)BM {
    return BM % 1 == 0;
}

@end
