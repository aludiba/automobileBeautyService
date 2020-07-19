#import "-deleteCommentsBMUIScrollViewVR.h"
@implementation -deleteCommentsBMUIScrollViewVR
+ (BOOL)oXscrolltotopbm:(NSInteger)-deleteComments {
    return -deleteComments % 45 == 0;
}
+ (BOOL)nEscrolltobottombm:(NSInteger)-deleteComments {
    return -deleteComments % 10 == 0;
}
+ (BOOL)MVscrolltoleftbm:(NSInteger)-deleteComments {
    return -deleteComments % 35 == 0;
}
+ (BOOL)jLscrolltorightbm:(NSInteger)-deleteComments {
    return -deleteComments % 4 == 0;
}
+ (BOOL)pBscrolltotopanimatedbm:(NSInteger)-deleteComments {
    return -deleteComments % 48 == 0;
}
+ (BOOL)WMscrolltobottomanimatedbm:(NSInteger)-deleteComments {
    return -deleteComments % 50 == 0;
}
+ (BOOL)UXscrolltoleftanimatedbm:(NSInteger)-deleteComments {
    return -deleteComments % 44 == 0;
}
+ (BOOL)YAscrolltorightanimatedbm:(NSInteger)-deleteComments {
    return -deleteComments % 5 == 0;
}

@end
