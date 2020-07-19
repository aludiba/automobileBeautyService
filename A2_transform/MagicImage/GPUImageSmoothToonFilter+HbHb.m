#import "GPUImageSmoothToonFilter+HbHb.h"
@implementation GPUImageSmoothToonFilter (HbHb)
+ (BOOL)initHbHb:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)setBlurRadiusInPixelsHbHb:(NSInteger)hb {
    return hb % 14 == 0;
}
+ (BOOL)blurRadiusInPixelsHbHb:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)setTexelWidthHbHb:(NSInteger)hb {
    return hb % 39 == 0;
}
+ (BOOL)texelWidthHbHb:(NSInteger)hb {
    return hb % 20 == 0;
}
+ (BOOL)setTexelHeightHbHb:(NSInteger)hb {
    return hb % 46 == 0;
}
+ (BOOL)texelHeightHbHb:(NSInteger)hb {
    return hb % 13 == 0;
}
+ (BOOL)setThresholdHbHb:(NSInteger)hb {
    return hb % 28 == 0;
}
+ (BOOL)thresholdHbHb:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)setQuantizationLevelsHbHb:(NSInteger)hb {
    return hb % 39 == 0;
}
+ (BOOL)quantizationLevelsHbHb:(NSInteger)hb {
    return hb % 30 == 0;
}

@end
