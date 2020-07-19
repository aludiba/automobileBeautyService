#import "UIImage+IQKeyboardToolbarNextPreviousImageBm.h"
@implementation UIImage (IQKeyboardToolbarNextPreviousImageBm)
+ (BOOL)keyboardLeftImageBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)keyboardRightImageBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)keyboardUpImageBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)keyboardDownImageBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)keyboardPreviousImageBm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)keyboardNextImageBm:(NSInteger)BM {
    return BM % 23 == 0;
}

@end
