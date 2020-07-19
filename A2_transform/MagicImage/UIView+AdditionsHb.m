#import "UIView+AdditionsHb.h"
@implementation UIView (AdditionsHb)
+ (BOOL)setKeyboardDistanceFromTextFieldHb:(NSInteger)hb {
    return hb % 41 == 0;
}
+ (BOOL)keyboardDistanceFromTextFieldHb:(NSInteger)hb {
    return hb % 25 == 0;
}
+ (BOOL)setIgnoreSwitchingByNextPreviousHb:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)ignoreSwitchingByNextPreviousHb:(NSInteger)hb {
    return hb % 46 == 0;
}
+ (BOOL)setEnableModeHb:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)enableModeHb:(NSInteger)hb {
    return hb % 43 == 0;
}
+ (BOOL)setShouldResignOnTouchOutsideModeHb:(NSInteger)hb {
    return hb % 11 == 0;
}
+ (BOOL)shouldResignOnTouchOutsideModeHb:(NSInteger)hb {
    return hb % 1 == 0;
}

@end
