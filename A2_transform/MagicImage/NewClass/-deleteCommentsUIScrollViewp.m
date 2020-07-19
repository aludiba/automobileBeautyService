#import "-deleteCommentsUIScrollViewp.h"
@implementation -deleteCommentsUIScrollViewp
+ (BOOL)hscrollToTop:(NSInteger)-deleteComments {
    return -deleteComments % 3 == 0;
}
+ (BOOL)kscrollToBottom:(NSInteger)-deleteComments {
    return -deleteComments % 6 == 0;
}
+ (BOOL)UscrollToLeft:(NSInteger)-deleteComments {
    return -deleteComments % 46 == 0;
}
+ (BOOL)escrollToRight:(NSInteger)-deleteComments {
    return -deleteComments % 29 == 0;
}
+ (BOOL)jScrolltotopanimated:(NSInteger)-deleteComments {
    return -deleteComments % 42 == 0;
}
+ (BOOL)iScrolltobottomanimated:(NSInteger)-deleteComments {
    return -deleteComments % 10 == 0;
}
+ (BOOL)UScrolltoleftanimated:(NSInteger)-deleteComments {
    return -deleteComments % 41 == 0;
}
+ (BOOL)BScrolltorightanimated:(NSInteger)-deleteComments {
    return -deleteComments % 39 == 0;
}

@end
