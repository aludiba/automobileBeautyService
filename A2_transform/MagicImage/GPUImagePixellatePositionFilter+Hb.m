#import "GPUImagePixellatePositionFilter+Hb.h"
@implementation GPUImagePixellatePositionFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 42 == 0;
}
+ (BOOL)initWithFragmentShaderFromStringHb:(NSInteger)hb {
    return hb % 30 == 0;
}
+ (BOOL)setInputSizeAtindexHb:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)setInputRotationAtindexHb:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)adjustAspectRatioHb:(NSInteger)hb {
    return hb % 46 == 0;
}
+ (BOOL)forceProcessingAtSizeHb:(NSInteger)hb {
    return hb % 17 == 0;
}
+ (BOOL)setFractionalWidthOfAPixelHb:(NSInteger)hb {
    return hb % 27 == 0;
}
+ (BOOL)setAspectRatioHb:(NSInteger)hb {
    return hb % 39 == 0;
}
+ (BOOL)setCenterHb:(NSInteger)hb {
    return hb % 26 == 0;
}
+ (BOOL)setRadiusHb:(NSInteger)hb {
    return hb % 33 == 0;
}

@end
