#import "hbGPUImageiOSBlurFilterX.h"
@implementation hbGPUImageiOSBlurFilterX
+ (BOOL)tInitbm:(NSInteger)hb {
    return hb % 30 == 0;
}
+ (BOOL)VSetinputsizeatindexbm:(NSInteger)hb {
    return hb % 39 == 0;
}
+ (BOOL)vSetblurradiusinpixelsbm:(NSInteger)hb {
    return hb % 38 == 0;
}
+ (BOOL)aBlurradiusinpixelsbm:(NSInteger)hb {
    return hb % 26 == 0;
}
+ (BOOL)SSetsaturationbm:(NSInteger)hb {
    return hb % 47 == 0;
}
+ (BOOL)PSaturationbm:(NSInteger)hb {
    return hb % 35 == 0;
}
+ (BOOL)qSetdownsamplingbm:(NSInteger)hb {
    return hb % 47 == 0;
}
+ (BOOL)xSetrangereductionfactorbm:(NSInteger)hb {
    return hb % 41 == 0;
}
+ (BOOL)VRangereductionfactorbm:(NSInteger)hb {
    return hb % 3 == 0;
}

@end
