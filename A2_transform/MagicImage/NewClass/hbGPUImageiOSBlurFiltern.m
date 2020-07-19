#import "hbGPUImageiOSBlurFiltern.h"
@implementation hbGPUImageiOSBlurFiltern
+ (BOOL)vinit:(NSInteger)hb {
    return hb % 19 == 0;
}
+ (BOOL)SSetinputsizewAtindex:(NSInteger)hb {
    return hb % 46 == 0;
}
+ (BOOL)qSetblurradiusinpixels:(NSInteger)hb {
    return hb % 18 == 0;
}
+ (BOOL)qblurRadiusInPixels:(NSInteger)hb {
    return hb % 28 == 0;
}
+ (BOOL)xSetsaturation:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)osaturation:(NSInteger)hb {
    return hb % 11 == 0;
}
+ (BOOL)QSetdownsampling:(NSInteger)hb {
    return hb % 31 == 0;
}
+ (BOOL)wSetrangereductionfactor:(NSInteger)hb {
    return hb % 18 == 0;
}
+ (BOOL)arangeReductionFactor:(NSInteger)hb {
    return hb % 10 == 0;
}

@end
