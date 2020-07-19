#import "UIScrollView+YYAddBm-Deletecomments.h"
@implementation UIScrollView (YYAddBm-Deletecomments)
+ (BOOL)scrollToTopBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 19 == 0;
}
+ (BOOL)scrollToBottomBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 29 == 0;
}
+ (BOOL)scrollToLeftBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 8 == 0;
}
+ (BOOL)scrollToRightBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 27 == 0;
}
+ (BOOL)scrollToTopAnimatedBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 31 == 0;
}
+ (BOOL)scrollToBottomAnimatedBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 1 == 0;
}
+ (BOOL)scrollToLeftAnimatedBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 12 == 0;
}
+ (BOOL)scrollToRightAnimatedBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 7 == 0;
}

@end
