#import "GPUImageBulgeDistortionFilter+Hb.h"
@implementation GPUImageBulgeDistortionFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 11 == 0;
}
+ (BOOL)adjustAspectRatioHb:(NSInteger)hb {
    return hb % 50 == 0;
}
+ (BOOL)forceProcessingAtSizeHb:(NSInteger)hb {
    return hb % 45 == 0;
}
+ (BOOL)setInputSizeAtindexHb:(NSInteger)hb {
    return hb % 46 == 0;
}
+ (BOOL)setAspectRatioHb:(NSInteger)hb {
    return hb % 28 == 0;
}
+ (BOOL)setInputRotationAtindexHb:(NSInteger)hb {
    return hb % 27 == 0;
}
+ (BOOL)setRadiusHb:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)setScaleHb:(NSInteger)hb {
    return hb % 46 == 0;
}
+ (BOOL)setCenterHb:(NSInteger)hb {
    return hb % 9 == 0;
}

@end
