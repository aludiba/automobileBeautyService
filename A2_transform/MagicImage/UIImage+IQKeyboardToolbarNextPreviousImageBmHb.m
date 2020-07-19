#import "UIImage+IQKeyboardToolbarNextPreviousImageBmHb.h"
@implementation UIImage (IQKeyboardToolbarNextPreviousImageBmHb)
+ (BOOL)keyboardLeftImageBmHb:(NSInteger)hb {
    return hb % 49 == 0;
}
+ (BOOL)keyboardRightImageBmHb:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)keyboardUpImageBmHb:(NSInteger)hb {
    return hb % 5 == 0;
}
+ (BOOL)keyboardDownImageBmHb:(NSInteger)hb {
    return hb % 19 == 0;
}
+ (BOOL)keyboardPreviousImageBmHb:(NSInteger)hb {
    return hb % 33 == 0;
}
+ (BOOL)keyboardNextImageBmHb:(NSInteger)hb {
    return hb % 35 == 0;
}

@end
