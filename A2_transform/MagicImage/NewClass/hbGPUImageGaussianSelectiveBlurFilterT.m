#import "hbGPUImageGaussianSelectiveBlurFilterT.h"
@implementation hbGPUImageGaussianSelectiveBlurFilterT
+ (BOOL)bInithb:(NSInteger)hb {
    return hb % 40 == 0;
}
+ (BOOL)cSetinputsizeatindexhb:(NSInteger)hb {
    return hb % 35 == 0;
}
+ (BOOL)fSetblurradiusinpixelshb:(NSInteger)hb {
    return hb % 40 == 0;
}
+ (BOOL)aBlurradiusinpixelshb:(NSInteger)hb {
    return hb % 13 == 0;
}
+ (BOOL)GSetexcludecirclepointhb:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)rSetexcludecircleradiushb:(NSInteger)hb {
    return hb % 35 == 0;
}
+ (BOOL)lSetexcludeblursizehb:(NSInteger)hb {
    return hb % 37 == 0;
}
+ (BOOL)KSetaspectratiohb:(NSInteger)hb {
    return hb % 27 == 0;
}

@end
