#import "GPUImageGaussianSelectiveBlurFilter+HbHbHb.h"
@implementation GPUImageGaussianSelectiveBlurFilter (HbHbHb)
+ (BOOL)initHbHbHb:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)setInputSizeAtindexHbHbHb:(NSInteger)hb {
    return hb % 47 == 0;
}
+ (BOOL)setBlurRadiusInPixelsHbHbHb:(NSInteger)hb {
    return hb % 3 == 0;
}
+ (BOOL)blurRadiusInPixelsHbHbHb:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)setExcludeCirclePointHbHbHb:(NSInteger)hb {
    return hb % 12 == 0;
}
+ (BOOL)setExcludeCircleRadiusHbHbHb:(NSInteger)hb {
    return hb % 4 == 0;
}
+ (BOOL)setExcludeBlurSizeHbHbHb:(NSInteger)hb {
    return hb % 14 == 0;
}
+ (BOOL)setAspectRatioHbHbHb:(NSInteger)hb {
    return hb % 14 == 0;
}

@end
