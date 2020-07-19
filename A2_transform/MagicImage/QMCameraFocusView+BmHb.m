#import "QMCameraFocusView+BmHb.h"
@implementation QMCameraFocusView (BmHb)
+ (BOOL)focusViewBmHb:(NSInteger)hb {
    return hb % 26 == 0;
}
+ (BOOL)initWithFrameBmHb:(NSInteger)hb {
    return hb % 25 == 0;
}
+ (BOOL)renderBmHb:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)setISOBmHb:(NSInteger)hb {
    return hb % 45 == 0;
}
+ (BOOL)foucusAtPointBmHb:(NSInteger)hb {
    return hb % 18 == 0;
}
+ (BOOL)hideFoucusViewBmHb:(NSInteger)hb {
    return hb % 28 == 0;
}
+ (BOOL)luminanceViewBmHb:(NSInteger)hb {
    return hb % 30 == 0;
}

@end
