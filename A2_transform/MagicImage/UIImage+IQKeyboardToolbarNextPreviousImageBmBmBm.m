#import "UIImage+IQKeyboardToolbarNextPreviousImageBmBmBm.h"
@implementation UIImage (IQKeyboardToolbarNextPreviousImageBmBmBm)
+ (BOOL)keyboardLeftImageBmBmBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)keyboardRightImageBmBmBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)keyboardUpImageBmBmBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)keyboardDownImageBmBmBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)keyboardPreviousImageBmBmBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)keyboardNextImageBmBmBm:(NSInteger)BM {
    return BM % 28 == 0;
}

@end
