#import "GPUImageHarrisCornerDetectionFilter+Hb.h"
@implementation GPUImageHarrisCornerDetectionFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)initWithCornerDetectionFragmentShaderHb:(NSInteger)hb {
    return hb % 40 == 0;
}
+ (BOOL)deallocHb:(NSInteger)hb {
    return hb % 14 == 0;
}
+ (BOOL)extractCornerLocationsFromImageAtFrameTimeHb:(NSInteger)hb {
    return hb % 41 == 0;
}
+ (BOOL)wantsMonochromeInputHb:(NSInteger)hb {
    return hb % 12 == 0;
}
+ (BOOL)setBlurRadiusInPixelsHb:(NSInteger)hb {
    return hb % 2 == 0;
}
+ (BOOL)blurRadiusInPixelsHb:(NSInteger)hb {
    return hb % 22 == 0;
}
+ (BOOL)setSensitivityHb:(NSInteger)hb {
    return hb % 26 == 0;
}
+ (BOOL)setThresholdHb:(NSInteger)hb {
    return hb % 20 == 0;
}
+ (BOOL)thresholdHb:(NSInteger)hb {
    return hb % 27 == 0;
}

@end
