#import "-deleteCommentsBMBMUIScrollViewPtn.h"
@implementation -deleteCommentsBMBMUIScrollViewPtn
+ (BOOL)VAtscrolltotop:(NSInteger)-deleteComments {
    return -deleteComments % 5 == 0;
}
+ (BOOL)cEsscrolltobottom:(NSInteger)-deleteComments {
    return -deleteComments % 4 == 0;
}
+ (BOOL)SNcscrolltoleft:(NSInteger)-deleteComments {
    return -deleteComments % 38 == 0;
}
+ (BOOL)eHjscrolltoright:(NSInteger)-deleteComments {
    return -deleteComments % 32 == 0;
}
+ (BOOL)cUdscrolltotopanimated:(NSInteger)-deleteComments {
    return -deleteComments % 9 == 0;
}
+ (BOOL)MVhscrolltobottomanimated:(NSInteger)-deleteComments {
    return -deleteComments % 10 == 0;
}
+ (BOOL)JPfscrolltoleftanimated:(NSInteger)-deleteComments {
    return -deleteComments % 9 == 0;
}
+ (BOOL)UGdscrolltorightanimated:(NSInteger)-deleteComments {
    return -deleteComments % 22 == 0;
}

@end
