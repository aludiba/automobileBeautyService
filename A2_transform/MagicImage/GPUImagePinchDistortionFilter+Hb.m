#import "GPUImagePinchDistortionFilter+Hb.h"
@implementation GPUImagePinchDistortionFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 29 == 0;
}
+ (BOOL)adjustAspectRatioHb:(NSInteger)hb {
    return hb % 22 == 0;
}
+ (BOOL)forceProcessingAtSizeHb:(NSInteger)hb {
    return hb % 11 == 0;
}
+ (BOOL)setInputSizeAtindexHb:(NSInteger)hb {
    return hb % 49 == 0;
}
+ (BOOL)setInputRotationAtindexHb:(NSInteger)hb {
    return hb % 25 == 0;
}
+ (BOOL)setAspectRatioHb:(NSInteger)hb {
    return hb % 21 == 0;
}
+ (BOOL)setRadiusHb:(NSInteger)hb {
    return hb % 21 == 0;
}
+ (BOOL)setScaleHb:(NSInteger)hb {
    return hb % 9 == 0;
}
+ (BOOL)setCenterHb:(NSInteger)hb {
    return hb % 47 == 0;
}

@end
