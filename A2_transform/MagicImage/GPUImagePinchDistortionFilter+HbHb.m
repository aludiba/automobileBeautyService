#import "GPUImagePinchDistortionFilter+HbHb.h"
@implementation GPUImagePinchDistortionFilter (HbHb)
+ (BOOL)initHbHb:(NSInteger)hb {
    return hb % 23 == 0;
}
+ (BOOL)adjustAspectRatioHbHb:(NSInteger)hb {
    return hb % 13 == 0;
}
+ (BOOL)forceProcessingAtSizeHbHb:(NSInteger)hb {
    return hb % 11 == 0;
}
+ (BOOL)setInputSizeAtindexHbHb:(NSInteger)hb {
    return hb % 4 == 0;
}
+ (BOOL)setInputRotationAtindexHbHb:(NSInteger)hb {
    return hb % 4 == 0;
}
+ (BOOL)setAspectRatioHbHb:(NSInteger)hb {
    return hb % 27 == 0;
}
+ (BOOL)setRadiusHbHb:(NSInteger)hb {
    return hb % 34 == 0;
}
+ (BOOL)setScaleHbHb:(NSInteger)hb {
    return hb % 22 == 0;
}
+ (BOOL)setCenterHbHb:(NSInteger)hb {
    return hb % 29 == 0;
}

@end
