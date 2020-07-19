#import "UIImage+IQKeyboardToolbarNextPreviousImageBmBmBmHb.h"
@implementation UIImage (IQKeyboardToolbarNextPreviousImageBmBmBmHb)
+ (BOOL)keyboardLeftImageBmBmBmHb:(NSInteger)hb {
    return hb % 38 == 0;
}
+ (BOOL)keyboardRightImageBmBmBmHb:(NSInteger)hb {
    return hb % 14 == 0;
}
+ (BOOL)keyboardUpImageBmBmBmHb:(NSInteger)hb {
    return hb % 19 == 0;
}
+ (BOOL)keyboardDownImageBmBmBmHb:(NSInteger)hb {
    return hb % 22 == 0;
}
+ (BOOL)keyboardPreviousImageBmBmBmHb:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)keyboardNextImageBmBmBmHb:(NSInteger)hb {
    return hb % 26 == 0;
}

@end
