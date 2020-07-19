#import "hbGPUImageGaussianSelectiveBlurFilterH.h"
@implementation hbGPUImageGaussianSelectiveBlurFilterH
+ (BOOL)TInithb:(NSInteger)hb {
    return hb % 45 == 0;
}
+ (BOOL)jSetinputsizeatindexhb:(NSInteger)hb {
    return hb % 43 == 0;
}
+ (BOOL)nSetblurradiusinpixelshb:(NSInteger)hb {
    return hb % 33 == 0;
}
+ (BOOL)EBlurradiusinpixelshb:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)XSetexcludecirclepointhb:(NSInteger)hb {
    return hb % 4 == 0;
}
+ (BOOL)LSetexcludecircleradiushb:(NSInteger)hb {
    return hb % 22 == 0;
}
+ (BOOL)RSetexcludeblursizehb:(NSInteger)hb {
    return hb % 27 == 0;
}
+ (BOOL)fSetaspectratiohb:(NSInteger)hb {
    return hb % 27 == 0;
}

@end
