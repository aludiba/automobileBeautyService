#import "GPUImageBulgeDistortionFilter+BmHb.h"
@implementation GPUImageBulgeDistortionFilter (BmHb)
+ (BOOL)initBmHb:(NSInteger)hb {
    return hb % 20 == 0;
}
+ (BOOL)adjustAspectRatioBmHb:(NSInteger)hb {
    return hb % 38 == 0;
}
+ (BOOL)forceProcessingAtSizeBmHb:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)setInputSizeAtindexBmHb:(NSInteger)hb {
    return hb % 29 == 0;
}
+ (BOOL)setAspectRatioBmHb:(NSInteger)hb {
    return hb % 40 == 0;
}
+ (BOOL)setInputRotationAtindexBmHb:(NSInteger)hb {
    return hb % 42 == 0;
}
+ (BOOL)setRadiusBmHb:(NSInteger)hb {
    return hb % 19 == 0;
}
+ (BOOL)setScaleBmHb:(NSInteger)hb {
    return hb % 25 == 0;
}
+ (BOOL)setCenterBmHb:(NSInteger)hb {
    return hb % 50 == 0;
}

@end
