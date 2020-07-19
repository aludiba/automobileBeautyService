#import "GPUImageBoxBlurFilter+BmBmHb.h"
@implementation GPUImageBoxBlurFilter (BmBmHb)
+ (BOOL)vertexShaderForOptimizedBlurOfRadiusSigmaBmBmHb:(NSInteger)hb {
    return hb % 13 == 0;
}
+ (BOOL)fragmentShaderForOptimizedBlurOfRadiusSigmaBmBmHb:(NSInteger)hb {
    return hb % 40 == 0;
}
+ (BOOL)setupFilterForSizeBmBmHb:(NSInteger)hb {
    return hb % 21 == 0;
}
+ (BOOL)initBmBmHb:(NSInteger)hb {
    return hb % 41 == 0;
}
+ (BOOL)setBlurRadiusInPixelsBmBmHb:(NSInteger)hb {
    return hb % 12 == 0;
}

@end
