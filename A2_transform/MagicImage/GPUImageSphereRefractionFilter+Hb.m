#import "GPUImageSphereRefractionFilter+Hb.h"
@implementation GPUImageSphereRefractionFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 33 == 0;
}
+ (BOOL)initWithFragmentShaderFromStringHb:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)setInputSizeAtindexHb:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)adjustAspectRatioHb:(NSInteger)hb {
    return hb % 3 == 0;
}
+ (BOOL)setInputRotationAtindexHb:(NSInteger)hb {
    return hb % 40 == 0;
}
+ (BOOL)forceProcessingAtSizeHb:(NSInteger)hb {
    return hb % 22 == 0;
}
+ (BOOL)setRadiusHb:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)setCenterHb:(NSInteger)hb {
    return hb % 1 == 0;
}
+ (BOOL)setAspectRatioHb:(NSInteger)hb {
    return hb % 35 == 0;
}
+ (BOOL)setRefractiveIndexHb:(NSInteger)hb {
    return hb % 44 == 0;
}

@end
