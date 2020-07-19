#import "hbGPUImageiOSBlurFilterv.h"
@implementation hbGPUImageiOSBlurFilterv
+ (BOOL)pinit:(NSInteger)hb {
    return hb % 50 == 0;
}
+ (BOOL)sSetinputsizeIAtindex:(NSInteger)hb {
    return hb % 50 == 0;
}
+ (BOOL)BSetblurradiusinpixels:(NSInteger)hb {
    return hb % 2 == 0;
}
+ (BOOL)zblurRadiusInPixels:(NSInteger)hb {
    return hb % 5 == 0;
}
+ (BOOL)fSetsaturation:(NSInteger)hb {
    return hb % 12 == 0;
}
+ (BOOL)usaturation:(NSInteger)hb {
    return hb % 29 == 0;
}
+ (BOOL)WSetdownsampling:(NSInteger)hb {
    return hb % 8 == 0;
}
+ (BOOL)qSetrangereductionfactor:(NSInteger)hb {
    return hb % 50 == 0;
}
+ (BOOL)rrangeReductionFactor:(NSInteger)hb {
    return hb % 14 == 0;
}

@end
