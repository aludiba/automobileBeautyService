#import "hbGPUImageGaussianSelectiveBlurFilterp.h"
@implementation hbGPUImageGaussianSelectiveBlurFilterp
+ (BOOL)mInitbmbm:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)tSetinputsizeatindexbmbm:(NSInteger)hb {
    return hb % 3 == 0;
}
+ (BOOL)gSetblurradiusinpixelsbmbm:(NSInteger)hb {
    return hb % 15 == 0;
}
+ (BOOL)NBlurradiusinpixelsbmbm:(NSInteger)hb {
    return hb % 39 == 0;
}
+ (BOOL)qSetexcludecirclepointbmbm:(NSInteger)hb {
    return hb % 9 == 0;
}
+ (BOOL)BSetexcludecircleradiusbmbm:(NSInteger)hb {
    return hb % 15 == 0;
}
+ (BOOL)kSetexcludeblursizebmbm:(NSInteger)hb {
    return hb % 45 == 0;
}
+ (BOOL)dSetaspectratiobmbm:(NSInteger)hb {
    return hb % 2 == 0;
}

@end
