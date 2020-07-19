#import "hbGPUImageTiltShiftFilterG.h"
@implementation hbGPUImageTiltShiftFilterG
+ (BOOL)Tinit:(NSInteger)hb {
    return hb % 26 == 0;
}
+ (BOOL)cSetblurradiusinpixels:(NSInteger)hb {
    return hb % 9 == 0;
}
+ (BOOL)bblurRadiusInPixels:(NSInteger)hb {
    return hb % 23 == 0;
}
+ (BOOL)ySettopfocuslevel:(NSInteger)hb {
    return hb % 13 == 0;
}
+ (BOOL)ySetbottomfocuslevel:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)jSetfocusfalloffrate:(NSInteger)hb {
    return hb % 32 == 0;
}

@end
