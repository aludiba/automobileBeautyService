#import "GPUImageGaussianSelectiveBlurFilter+HbHb.h"
@implementation GPUImageGaussianSelectiveBlurFilter (HbHb)
+ (BOOL)initHbHb:(NSInteger)hb {
    return hb % 3 == 0;
}
+ (BOOL)setInputSizeAtindexHbHb:(NSInteger)hb {
    return hb % 11 == 0;
}
+ (BOOL)setBlurRadiusInPixelsHbHb:(NSInteger)hb {
    return hb % 11 == 0;
}
+ (BOOL)blurRadiusInPixelsHbHb:(NSInteger)hb {
    return hb % 38 == 0;
}
+ (BOOL)setExcludeCirclePointHbHb:(NSInteger)hb {
    return hb % 29 == 0;
}
+ (BOOL)setExcludeCircleRadiusHbHb:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)setExcludeBlurSizeHbHb:(NSInteger)hb {
    return hb % 20 == 0;
}
+ (BOOL)setAspectRatioHbHb:(NSInteger)hb {
    return hb % 24 == 0;
}

@end
