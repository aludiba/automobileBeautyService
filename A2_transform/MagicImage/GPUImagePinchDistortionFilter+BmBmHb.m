#import "GPUImagePinchDistortionFilter+BmBmHb.h"
@implementation GPUImagePinchDistortionFilter (BmBmHb)
+ (BOOL)initBmBmHb:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)adjustAspectRatioBmBmHb:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)forceProcessingAtSizeBmBmHb:(NSInteger)hb {
    return hb % 23 == 0;
}
+ (BOOL)setInputSizeAtindexBmBmHb:(NSInteger)hb {
    return hb % 15 == 0;
}
+ (BOOL)setInputRotationAtindexBmBmHb:(NSInteger)hb {
    return hb % 26 == 0;
}
+ (BOOL)setAspectRatioBmBmHb:(NSInteger)hb {
    return hb % 31 == 0;
}
+ (BOOL)setRadiusBmBmHb:(NSInteger)hb {
    return hb % 46 == 0;
}
+ (BOOL)setScaleBmBmHb:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)setCenterBmBmHb:(NSInteger)hb {
    return hb % 43 == 0;
}

@end
