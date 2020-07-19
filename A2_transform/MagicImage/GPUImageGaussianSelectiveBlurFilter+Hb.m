#import "GPUImageGaussianSelectiveBlurFilter+Hb.h"
@implementation GPUImageGaussianSelectiveBlurFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 20 == 0;
}
+ (BOOL)setInputSizeAtindexHb:(NSInteger)hb {
    return hb % 17 == 0;
}
+ (BOOL)setBlurRadiusInPixelsHb:(NSInteger)hb {
    return hb % 33 == 0;
}
+ (BOOL)blurRadiusInPixelsHb:(NSInteger)hb {
    return hb % 27 == 0;
}
+ (BOOL)setExcludeCirclePointHb:(NSInteger)hb {
    return hb % 18 == 0;
}
+ (BOOL)setExcludeCircleRadiusHb:(NSInteger)hb {
    return hb % 50 == 0;
}
+ (BOOL)setExcludeBlurSizeHb:(NSInteger)hb {
    return hb % 12 == 0;
}
+ (BOOL)setAspectRatioHb:(NSInteger)hb {
    return hb % 43 == 0;
}

@end
