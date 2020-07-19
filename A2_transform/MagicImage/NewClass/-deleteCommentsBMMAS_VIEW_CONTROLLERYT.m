#import "-deleteCommentsBMMAS_VIEW_CONTROLLERYT.h"
@implementation -deleteCommentsBMMAS_VIEW_CONTROLLERYT
+ (BOOL)YBmas_Toplayoutguidebm:(NSInteger)-deleteComments {
    return -deleteComments % 26 == 0;
}
+ (BOOL)jTmas_Toplayoutguidetopbm:(NSInteger)-deleteComments {
    return -deleteComments % 25 == 0;
}
+ (BOOL)STmas_Toplayoutguidebottombm:(NSInteger)-deleteComments {
    return -deleteComments % 40 == 0;
}
+ (BOOL)mMmas_Bottomlayoutguidebm:(NSInteger)-deleteComments {
    return -deleteComments % 50 == 0;
}
+ (BOOL)JBmas_Bottomlayoutguidetopbm:(NSInteger)-deleteComments {
    return -deleteComments % 3 == 0;
}
+ (BOOL)tLmas_Bottomlayoutguidebottombm:(NSInteger)-deleteComments {
    return -deleteComments % 2 == 0;
}

@end
