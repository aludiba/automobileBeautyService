#import "GPUImageBoxBlurFilter+BmBm.h"
@implementation GPUImageBoxBlurFilter (BmBm)
+ (BOOL)vertexShaderForOptimizedBlurOfRadiusSigmaBmBm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)fragmentShaderForOptimizedBlurOfRadiusSigmaBmBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)setupFilterForSizeBmBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)setBlurRadiusInPixelsBmBm:(NSInteger)BM {
    return BM % 42 == 0;
}

@end
