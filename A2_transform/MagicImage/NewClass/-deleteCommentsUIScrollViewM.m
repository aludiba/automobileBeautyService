#import "-deleteCommentsUIScrollViewM.h"
@implementation -deleteCommentsUIScrollViewM
+ (BOOL)XscrollToTop:(NSInteger)-deleteComments {
    return -deleteComments % 44 == 0;
}
+ (BOOL)TscrollToBottom:(NSInteger)-deleteComments {
    return -deleteComments % 50 == 0;
}
+ (BOOL)hscrollToLeft:(NSInteger)-deleteComments {
    return -deleteComments % 32 == 0;
}
+ (BOOL)jscrollToRight:(NSInteger)-deleteComments {
    return -deleteComments % 42 == 0;
}
+ (BOOL)IScrolltotopanimated:(NSInteger)-deleteComments {
    return -deleteComments % 44 == 0;
}
+ (BOOL)cScrolltobottomanimated:(NSInteger)-deleteComments {
    return -deleteComments % 31 == 0;
}
+ (BOOL)hScrolltoleftanimated:(NSInteger)-deleteComments {
    return -deleteComments % 17 == 0;
}
+ (BOOL)IScrolltorightanimated:(NSInteger)-deleteComments {
    return -deleteComments % 36 == 0;
}

@end
