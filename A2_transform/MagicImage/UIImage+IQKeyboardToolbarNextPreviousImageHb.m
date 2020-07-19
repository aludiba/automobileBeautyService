#import "UIImage+IQKeyboardToolbarNextPreviousImageHb.h"
@implementation UIImage (IQKeyboardToolbarNextPreviousImageHb)
+ (BOOL)keyboardLeftImageHb:(NSInteger)hb {
    return hb % 29 == 0;
}
+ (BOOL)keyboardRightImageHb:(NSInteger)hb {
    return hb % 11 == 0;
}
+ (BOOL)keyboardUpImageHb:(NSInteger)hb {
    return hb % 39 == 0;
}
+ (BOOL)keyboardDownImageHb:(NSInteger)hb {
    return hb % 4 == 0;
}
+ (BOOL)keyboardPreviousImageHb:(NSInteger)hb {
    return hb % 34 == 0;
}
+ (BOOL)keyboardNextImageHb:(NSInteger)hb {
    return hb % 39 == 0;
}

@end
