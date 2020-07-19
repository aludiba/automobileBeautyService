#import "GPUImagePixellateFilter+Bm.h"
@implementation GPUImagePixellateFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)initWithFragmentShaderFromStringBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)adjustAspectRatioBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)setInputRotationAtindexBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)forceProcessingAtSizeBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)setInputSizeAtindexBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)setFractionalWidthOfAPixelBm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)setAspectRatioBm:(NSInteger)BM {
    return BM % 48 == 0;
}

@end
