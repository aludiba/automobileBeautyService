#import "GPUImageBoxBlurFilter+BmBmBm.h"
@implementation GPUImageBoxBlurFilter (BmBmBm)
+ (BOOL)vertexShaderForOptimizedBlurOfRadiusSigmaBmBmBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)fragmentShaderForOptimizedBlurOfRadiusSigmaBmBmBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)setupFilterForSizeBmBmBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)initBmBmBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)setBlurRadiusInPixelsBmBmBm:(NSInteger)BM {
    return BM % 23 == 0;
}

@end
