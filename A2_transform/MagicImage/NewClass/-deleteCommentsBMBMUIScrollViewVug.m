#import "-deleteCommentsBMBMUIScrollViewVug.h"
@implementation -deleteCommentsBMBMUIScrollViewVug
+ (BOOL)oYxscrolltotop:(NSInteger)-deleteComments {
    return -deleteComments % 32 == 0;
}
+ (BOOL)UFescrolltobottom:(NSInteger)-deleteComments {
    return -deleteComments % 14 == 0;
}
+ (BOOL)gQvscrolltoleft:(NSInteger)-deleteComments {
    return -deleteComments % 44 == 0;
}
+ (BOOL)wAlscrolltoright:(NSInteger)-deleteComments {
    return -deleteComments % 30 == 0;
}
+ (BOOL)EObscrolltotopanimated:(NSInteger)-deleteComments {
    return -deleteComments % 42 == 0;
}
+ (BOOL)dUmscrolltobottomanimated:(NSInteger)-deleteComments {
    return -deleteComments % 36 == 0;
}
+ (BOOL)LExscrolltoleftanimated:(NSInteger)-deleteComments {
    return -deleteComments % 22 == 0;
}
+ (BOOL)ZLascrolltorightanimated:(NSInteger)-deleteComments {
    return -deleteComments % 35 == 0;
}

@end
