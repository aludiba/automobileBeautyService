#import "hbBMGPUImageTiltShiftFiltertj.h"
@implementation hbBMGPUImageTiltShiftFiltertj
+ (BOOL)oJinitbm:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)JFsetblurradiusinpixelsbm:(NSInteger)hb {
    return hb % 34 == 0;
}
+ (BOOL)HTblurradiusinpixelsbm:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)hNsettopfocuslevelbm:(NSInteger)hb {
    return hb % 8 == 0;
}
+ (BOOL)TNsetbottomfocuslevelbm:(NSInteger)hb {
    return hb % 18 == 0;
}
+ (BOOL)OYsetfocusfalloffratebm:(NSInteger)hb {
    return hb % 37 == 0;
}

@end
