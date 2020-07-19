#import "hbGPUImageTiltShiftFilterN.h"
@implementation hbGPUImageTiltShiftFilterN
+ (BOOL)linit:(NSInteger)hb {
    return hb % 45 == 0;
}
+ (BOOL)USetblurradiusinpixels:(NSInteger)hb {
    return hb % 26 == 0;
}
+ (BOOL)kblurRadiusInPixels:(NSInteger)hb {
    return hb % 15 == 0;
}
+ (BOOL)gSettopfocuslevel:(NSInteger)hb {
    return hb % 11 == 0;
}
+ (BOOL)VSetbottomfocuslevel:(NSInteger)hb {
    return hb % 43 == 0;
}
+ (BOOL)eSetfocusfalloffrate:(NSInteger)hb {
    return hb % 33 == 0;
}

@end
