#import "QMCameraFocusView+BmBmHb.h"
@implementation QMCameraFocusView (BmBmHb)
+ (BOOL)focusViewBmBmHb:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)initWithFrameBmBmHb:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)renderBmBmHb:(NSInteger)hb {
    return hb % 27 == 0;
}
+ (BOOL)setISOBmBmHb:(NSInteger)hb {
    return hb % 23 == 0;
}
+ (BOOL)foucusAtPointBmBmHb:(NSInteger)hb {
    return hb % 4 == 0;
}
+ (BOOL)hideFoucusViewBmBmHb:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)luminanceViewBmBmHb:(NSInteger)hb {
    return hb % 30 == 0;
}

@end
