#import "BMGPUImageTiltShiftFiltert+BmHb.h"
@implementation BMGPUImageTiltShiftFiltert (BmHb)
+ (BOOL)JinitBmHb:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)fSetblurradiusinpixelsBmHb:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)TblurRadiusInPixelsBmHb:(NSInteger)hb {
    return hb % 7 == 0;
}
+ (BOOL)NSettopfocuslevelBmHb:(NSInteger)hb {
    return hb % 37 == 0;
}
+ (BOOL)NSetbottomfocuslevelBmHb:(NSInteger)hb {
    return hb % 19 == 0;
}
+ (BOOL)ySetfocusfalloffrateBmHb:(NSInteger)hb {
    return hb % 5 == 0;
}

@end
