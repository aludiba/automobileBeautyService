#import "GPUImageSmoothToonFilter+Hb.h"
@implementation GPUImageSmoothToonFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 1 == 0;
}
+ (BOOL)setBlurRadiusInPixelsHb:(NSInteger)hb {
    return hb % 43 == 0;
}
+ (BOOL)blurRadiusInPixelsHb:(NSInteger)hb {
    return hb % 23 == 0;
}
+ (BOOL)setTexelWidthHb:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)texelWidthHb:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)setTexelHeightHb:(NSInteger)hb {
    return hb % 38 == 0;
}
+ (BOOL)texelHeightHb:(NSInteger)hb {
    return hb % 12 == 0;
}
+ (BOOL)setThresholdHb:(NSInteger)hb {
    return hb % 31 == 0;
}
+ (BOOL)thresholdHb:(NSInteger)hb {
    return hb % 27 == 0;
}
+ (BOOL)setQuantizationLevelsHb:(NSInteger)hb {
    return hb % 29 == 0;
}
+ (BOOL)quantizationLevelsHb:(NSInteger)hb {
    return hb % 35 == 0;
}

@end
