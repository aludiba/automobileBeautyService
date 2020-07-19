#import "GPUImageHarrisCornerDetectionFilter+BmHb.h"
@implementation GPUImageHarrisCornerDetectionFilter (BmHb)
+ (BOOL)initBmHb:(NSInteger)hb {
    return hb % 46 == 0;
}
+ (BOOL)initWithCornerDetectionFragmentShaderBmHb:(NSInteger)hb {
    return hb % 21 == 0;
}
+ (BOOL)deallocBmHb:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)extractCornerLocationsFromImageAtFrameTimeBmHb:(NSInteger)hb {
    return hb % 23 == 0;
}
+ (BOOL)wantsMonochromeInputBmHb:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)setBlurRadiusInPixelsBmHb:(NSInteger)hb {
    return hb % 20 == 0;
}
+ (BOOL)blurRadiusInPixelsBmHb:(NSInteger)hb {
    return hb % 20 == 0;
}
+ (BOOL)setSensitivityBmHb:(NSInteger)hb {
    return hb % 30 == 0;
}
+ (BOOL)setThresholdBmHb:(NSInteger)hb {
    return hb % 41 == 0;
}
+ (BOOL)thresholdBmHb:(NSInteger)hb {
    return hb % 39 == 0;
}

@end
