#import "hbGPUImageiOSBlurFilterv+Hb.h"
@implementation hbGPUImageiOSBlurFilterv (Hb)
+ (BOOL)pinitHb:(NSInteger)hb {
    return hb % 14 == 0;
}
+ (BOOL)sSetinputsizeIAtindexHb:(NSInteger)hb {
    return hb % 45 == 0;
}
+ (BOOL)BSetblurradiusinpixelsHb:(NSInteger)hb {
    return hb % 8 == 0;
}
+ (BOOL)zblurRadiusInPixelsHb:(NSInteger)hb {
    return hb % 34 == 0;
}
+ (BOOL)fSetsaturationHb:(NSInteger)hb {
    return hb % 18 == 0;
}
+ (BOOL)usaturationHb:(NSInteger)hb {
    return hb % 27 == 0;
}
+ (BOOL)WSetdownsamplingHb:(NSInteger)hb {
    return hb % 35 == 0;
}
+ (BOOL)qSetrangereductionfactorHb:(NSInteger)hb {
    return hb % 26 == 0;
}
+ (BOOL)rrangeReductionFactorHb:(NSInteger)hb {
    return hb % 20 == 0;
}

@end
