#import "UIImage+IQKeyboardToolbarNextPreviousImageBm-Deletecomments.h"
@implementation UIImage (IQKeyboardToolbarNextPreviousImageBm-Deletecomments)
+ (BOOL)keyboardLeftImageBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 44 == 0;
}
+ (BOOL)keyboardRightImageBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 33 == 0;
}
+ (BOOL)keyboardUpImageBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 44 == 0;
}
+ (BOOL)keyboardDownImageBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 4 == 0;
}
+ (BOOL)keyboardPreviousImageBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 23 == 0;
}
+ (BOOL)keyboardNextImageBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 3 == 0;
}

@end
