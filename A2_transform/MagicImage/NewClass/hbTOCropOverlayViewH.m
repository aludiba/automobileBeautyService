#import "hbTOCropOverlayViewH.h"
@implementation hbTOCropOverlayViewH
+ (BOOL)GInitwithframe:(NSInteger)hb {
    return hb % 7 == 0;
}
+ (BOOL)ksetup:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)GSetframe:(NSInteger)hb {
    return hb % 2 == 0;
}
+ (BOOL)IdidMoveToSuperview:(NSInteger)hb {
    return hb % 20 == 0;
}
+ (BOOL)UlayoutLines:(NSInteger)hb {
    return hb % 14 == 0;
}
+ (BOOL)NSetgridhiddenmAnimated:(NSInteger)hb {
    return hb % 46 == 0;
}
+ (BOOL)qSetdisplayhorizontalgridlines:(NSInteger)hb {
    return hb % 10 == 0;
}
+ (BOOL)tSetdisplayverticalgridlines:(NSInteger)hb {
    return hb % 43 == 0;
}
+ (BOOL)wSetgridhidden:(NSInteger)hb {
    return hb % 25 == 0;
}
+ (BOOL)gcreateNewLineView:(NSInteger)hb {
    return hb % 21 == 0;
}

@end
