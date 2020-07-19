#import "GPUImageBoxBlurFilter+Bm.h"
@implementation GPUImageBoxBlurFilter (Bm)
+ (BOOL)vertexShaderForOptimizedBlurOfRadiusSigmaBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)fragmentShaderForOptimizedBlurOfRadiusSigmaBm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)setupFilterForSizeBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)setBlurRadiusInPixelsBm:(NSInteger)BM {
    return BM % 14 == 0;
}

@end
