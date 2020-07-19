#import "-deleteCommentsBMUIScrollViewVc.h"
@implementation -deleteCommentsBMUIScrollViewVc
+ (BOOL)aXscrolltotopbm:(NSInteger)-deleteComments {
    return -deleteComments % 50 == 0;
}
+ (BOOL)IEscrolltobottombm:(NSInteger)-deleteComments {
    return -deleteComments % 26 == 0;
}
+ (BOOL)QVscrolltoleftbm:(NSInteger)-deleteComments {
    return -deleteComments % 15 == 0;
}
+ (BOOL)FLscrolltorightbm:(NSInteger)-deleteComments {
    return -deleteComments % 40 == 0;
}
+ (BOOL)gBscrolltotopanimatedbm:(NSInteger)-deleteComments {
    return -deleteComments % 17 == 0;
}
+ (BOOL)TMscrolltobottomanimatedbm:(NSInteger)-deleteComments {
    return -deleteComments % 44 == 0;
}
+ (BOOL)uXscrolltoleftanimatedbm:(NSInteger)-deleteComments {
    return -deleteComments % 18 == 0;
}
+ (BOOL)TAscrolltorightanimatedbm:(NSInteger)-deleteComments {
    return -deleteComments % 42 == 0;
}

@end
