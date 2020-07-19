#import "GPUImagePixellateFilter+Hb.h"
@implementation GPUImagePixellateFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 19 == 0;
}
+ (BOOL)initWithFragmentShaderFromStringHb:(NSInteger)hb {
    return hb % 28 == 0;
}
+ (BOOL)adjustAspectRatioHb:(NSInteger)hb {
    return hb % 29 == 0;
}
+ (BOOL)setInputRotationAtindexHb:(NSInteger)hb {
    return hb % 35 == 0;
}
+ (BOOL)forceProcessingAtSizeHb:(NSInteger)hb {
    return hb % 49 == 0;
}
+ (BOOL)setInputSizeAtindexHb:(NSInteger)hb {
    return hb % 9 == 0;
}
+ (BOOL)setFractionalWidthOfAPixelHb:(NSInteger)hb {
    return hb % 20 == 0;
}
+ (BOOL)setAspectRatioHb:(NSInteger)hb {
    return hb % 35 == 0;
}

@end
