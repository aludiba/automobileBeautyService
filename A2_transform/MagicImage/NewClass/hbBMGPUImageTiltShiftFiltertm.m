#import "hbBMGPUImageTiltShiftFiltertm.h"
@implementation hbBMGPUImageTiltShiftFiltertm
+ (BOOL)VJinitbm:(NSInteger)hb {
    return hb % 6 == 0;
}
+ (BOOL)VFsetblurradiusinpixelsbm:(NSInteger)hb {
    return hb % 23 == 0;
}
+ (BOOL)FTblurradiusinpixelsbm:(NSInteger)hb {
    return hb % 35 == 0;
}
+ (BOOL)bNsettopfocuslevelbm:(NSInteger)hb {
    return hb % 45 == 0;
}
+ (BOOL)JNsetbottomfocuslevelbm:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)nYsetfocusfalloffratebm:(NSInteger)hb {
    return hb % 10 == 0;
}

@end
