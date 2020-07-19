#import "-deleteCommentsBMMAS_VIEW_CONTROLLERHQ.h"
@implementation -deleteCommentsBMMAS_VIEW_CONTROLLERHQ
+ (BOOL)gFmas_Toplayoutguide:(NSInteger)-deleteComments {
    return -deleteComments % 4 == 0;
}
+ (BOOL)JPmas_Toplayoutguidetop:(NSInteger)-deleteComments {
    return -deleteComments % 30 == 0;
}
+ (BOOL)NUmas_Toplayoutguidebottom:(NSInteger)-deleteComments {
    return -deleteComments % 4 == 0;
}
+ (BOOL)cFmas_Bottomlayoutguide:(NSInteger)-deleteComments {
    return -deleteComments % 3 == 0;
}
+ (BOOL)WYmas_Bottomlayoutguidetop:(NSInteger)-deleteComments {
    return -deleteComments % 27 == 0;
}
+ (BOOL)xNmas_Bottomlayoutguidebottom:(NSInteger)-deleteComments {
    return -deleteComments % 35 == 0;
}

@end
