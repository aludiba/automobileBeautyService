#import "UIImage+IQKeyboardToolbarNextPreviousImageBmBm.h"
@implementation UIImage (IQKeyboardToolbarNextPreviousImageBmBm)
+ (BOOL)keyboardLeftImageBmBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)keyboardRightImageBmBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)keyboardUpImageBmBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)keyboardDownImageBmBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)keyboardPreviousImageBmBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)keyboardNextImageBmBm:(NSInteger)BM {
    return BM % 20 == 0;
}

@end
