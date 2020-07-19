#import "hbGPUImageGaussianSelectiveBlurFilterk.h"
@implementation hbGPUImageGaussianSelectiveBlurFilterk
+ (BOOL)PInithbhb:(NSInteger)hb {
    return hb % 7 == 0;
}
+ (BOOL)GSetinputsizeatindexhbhb:(NSInteger)hb {
    return hb % 21 == 0;
}
+ (BOOL)eSetblurradiusinpixelshbhb:(NSInteger)hb {
    return hb % 34 == 0;
}
+ (BOOL)SBlurradiusinpixelshbhb:(NSInteger)hb {
    return hb % 21 == 0;
}
+ (BOOL)vSetexcludecirclepointhbhb:(NSInteger)hb {
    return hb % 21 == 0;
}
+ (BOOL)jSetexcludecircleradiushbhb:(NSInteger)hb {
    return hb % 17 == 0;
}
+ (BOOL)zSetexcludeblursizehbhb:(NSInteger)hb {
    return hb % 20 == 0;
}
+ (BOOL)TSetaspectratiohbhb:(NSInteger)hb {
    return hb % 8 == 0;
}

@end
