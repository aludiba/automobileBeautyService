#import "GPUImageSobelEdgeDetectionFilter+Hb.h"
@implementation GPUImageSobelEdgeDetectionFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 23 == 0;
}
+ (BOOL)initWithFragmentShaderFromStringHb:(NSInteger)hb {
    return hb % 12 == 0;
}
+ (BOOL)setupFilterForSizeHb:(NSInteger)hb {
    return hb % 46 == 0;
}
+ (BOOL)setUniformsForProgramAtIndexHb:(NSInteger)hb {
    return hb % 4 == 0;
}
+ (BOOL)wantsMonochromeInputHb:(NSInteger)hb {
    return hb % 40 == 0;
}
+ (BOOL)providesMonochromeOutputHb:(NSInteger)hb {
    return hb % 12 == 0;
}
+ (BOOL)setTexelWidthHb:(NSInteger)hb {
    return hb % 19 == 0;
}
+ (BOOL)setTexelHeightHb:(NSInteger)hb {
    return hb % 5 == 0;
}
+ (BOOL)setEdgeStrengthHb:(NSInteger)hb {
    return hb % 10 == 0;
}

@end
