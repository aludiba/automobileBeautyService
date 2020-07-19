#import "-deleteCommentsBMUIScrollViewVk.h"
@implementation -deleteCommentsBMUIScrollViewVk
+ (BOOL)TXscrolltotopbm:(NSInteger)-deleteComments {
    return -deleteComments % 40 == 0;
}
+ (BOOL)GEscrolltobottombm:(NSInteger)-deleteComments {
    return -deleteComments % 48 == 0;
}
+ (BOOL)AVscrolltoleftbm:(NSInteger)-deleteComments {
    return -deleteComments % 13 == 0;
}
+ (BOOL)gLscrolltorightbm:(NSInteger)-deleteComments {
    return -deleteComments % 15 == 0;
}
+ (BOOL)SBscrolltotopanimatedbm:(NSInteger)-deleteComments {
    return -deleteComments % 27 == 0;
}
+ (BOOL)dMscrolltobottomanimatedbm:(NSInteger)-deleteComments {
    return -deleteComments % 5 == 0;
}
+ (BOOL)xXscrolltoleftanimatedbm:(NSInteger)-deleteComments {
    return -deleteComments % 12 == 0;
}
+ (BOOL)NAscrolltorightanimatedbm:(NSInteger)-deleteComments {
    return -deleteComments % 41 == 0;
}

@end
