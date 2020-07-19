#import "GPUImageGaussianSelectiveBlurFilter+BmBmHb.h"
@implementation GPUImageGaussianSelectiveBlurFilter (BmBmHb)
+ (BOOL)initBmBmHb:(NSInteger)hb {
    return hb % 49 == 0;
}
+ (BOOL)setInputSizeAtindexBmBmHb:(NSInteger)hb {
    return hb % 50 == 0;
}
+ (BOOL)setBlurRadiusInPixelsBmBmHb:(NSInteger)hb {
    return hb % 25 == 0;
}
+ (BOOL)blurRadiusInPixelsBmBmHb:(NSInteger)hb {
    return hb % 42 == 0;
}
+ (BOOL)setExcludeCirclePointBmBmHb:(NSInteger)hb {
    return hb % 20 == 0;
}
+ (BOOL)setExcludeCircleRadiusBmBmHb:(NSInteger)hb {
    return hb % 31 == 0;
}
+ (BOOL)setExcludeBlurSizeBmBmHb:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)setAspectRatioBmBmHb:(NSInteger)hb {
    return hb % 18 == 0;
}

@end
