#import "UIImage+IQKeyboardToolbarNextPreviousImage-Deletecomments.h"
@implementation UIImage (IQKeyboardToolbarNextPreviousImage-Deletecomments)
+ (BOOL)keyboardLeftImage-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 18 == 0;
}
+ (BOOL)keyboardRightImage-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 37 == 0;
}
+ (BOOL)keyboardUpImage-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 22 == 0;
}
+ (BOOL)keyboardDownImage-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 37 == 0;
}
+ (BOOL)keyboardPreviousImage-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 13 == 0;
}
+ (BOOL)keyboardNextImage-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 38 == 0;
}

@end
