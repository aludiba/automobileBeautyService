#import "BMGPUImageSmoothToonFiltero+Hb.h"
@implementation BMGPUImageSmoothToonFiltero (Hb)
+ (BOOL)PInitbmbmHb:(NSInteger)hb {
    return hb % 8 == 0;
}
+ (BOOL)qSetblurradiusinpixelsbmbmHb:(NSInteger)hb {
    return hb % 43 == 0;
}
+ (BOOL)IBlurradiusinpixelsbmbmHb:(NSInteger)hb {
    return hb % 29 == 0;
}
+ (BOOL)kSettexelwidthbmbmHb:(NSInteger)hb {
    return hb % 45 == 0;
}
+ (BOOL)oTexelwidthbmbmHb:(NSInteger)hb {
    return hb % 39 == 0;
}
+ (BOOL)pSettexelheightbmbmHb:(NSInteger)hb {
    return hb % 49 == 0;
}
+ (BOOL)wTexelheightbmbmHb:(NSInteger)hb {
    return hb % 40 == 0;
}
+ (BOOL)wSetthresholdbmbmHb:(NSInteger)hb {
    return hb % 3 == 0;
}
+ (BOOL)wThresholdbmbmHb:(NSInteger)hb {
    return hb % 17 == 0;
}
+ (BOOL)USetquantizationlevelsbmbmHb:(NSInteger)hb {
    return hb % 42 == 0;
}
+ (BOOL)zQuantizationlevelsbmbmHb:(NSInteger)hb {
    return hb % 11 == 0;
}

@end
