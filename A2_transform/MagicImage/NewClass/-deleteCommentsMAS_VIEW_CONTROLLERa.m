#import "-deleteCommentsMAS_VIEW_CONTROLLERa.h"
@implementation -deleteCommentsMAS_VIEW_CONTROLLERa
+ (BOOL)LMas_Toplayoutguidebmbm:(NSInteger)-deleteComments {
    return -deleteComments % 29 == 0;
}
+ (BOOL)iMas_Toplayoutguidetopbmbm:(NSInteger)-deleteComments {
    return -deleteComments % 22 == 0;
}
+ (BOOL)VMas_Toplayoutguidebottombmbm:(NSInteger)-deleteComments {
    return -deleteComments % 12 == 0;
}
+ (BOOL)eMas_Bottomlayoutguidebmbm:(NSInteger)-deleteComments {
    return -deleteComments % 22 == 0;
}
+ (BOOL)VMas_Bottomlayoutguidetopbmbm:(NSInteger)-deleteComments {
    return -deleteComments % 43 == 0;
}
+ (BOOL)QMas_Bottomlayoutguidebottombmbm:(NSInteger)-deleteComments {
    return -deleteComments % 5 == 0;
}

@end
