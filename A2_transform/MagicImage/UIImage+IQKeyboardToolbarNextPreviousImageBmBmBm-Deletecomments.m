#import "UIImage+IQKeyboardToolbarNextPreviousImageBmBmBm-Deletecomments.h"
@implementation UIImage (IQKeyboardToolbarNextPreviousImageBmBmBm-Deletecomments)
+ (BOOL)keyboardLeftImageBmBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 42 == 0;
}
+ (BOOL)keyboardRightImageBmBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 25 == 0;
}
+ (BOOL)keyboardUpImageBmBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 20 == 0;
}
+ (BOOL)keyboardDownImageBmBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 22 == 0;
}
+ (BOOL)keyboardPreviousImageBmBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 50 == 0;
}
+ (BOOL)keyboardNextImageBmBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 33 == 0;
}

@end
