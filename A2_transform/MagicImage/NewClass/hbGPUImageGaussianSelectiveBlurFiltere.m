#import "hbGPUImageGaussianSelectiveBlurFiltere.h"
@implementation hbGPUImageGaussianSelectiveBlurFiltere
+ (BOOL)IInitbmbm:(NSInteger)hb {
    return hb % 13 == 0;
}
+ (BOOL)vSetinputsizeatindexbmbm:(NSInteger)hb {
    return hb % 1 == 0;
}
+ (BOOL)CSetblurradiusinpixelsbmbm:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)wBlurradiusinpixelsbmbm:(NSInteger)hb {
    return hb % 26 == 0;
}
+ (BOOL)tSetexcludecirclepointbmbm:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)FSetexcludecircleradiusbmbm:(NSInteger)hb {
    return hb % 9 == 0;
}
+ (BOOL)sSetexcludeblursizebmbm:(NSInteger)hb {
    return hb % 8 == 0;
}
+ (BOOL)ySetaspectratiobmbm:(NSInteger)hb {
    return hb % 3 == 0;
}

@end
