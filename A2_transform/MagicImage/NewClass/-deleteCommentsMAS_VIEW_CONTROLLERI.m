#import "-deleteCommentsMAS_VIEW_CONTROLLERI.h"
@implementation -deleteCommentsMAS_VIEW_CONTROLLERI
+ (BOOL)CMas_Toplayoutguidebmbmbm:(NSInteger)-deleteComments {
    return -deleteComments % 40 == 0;
}
+ (BOOL)rMas_Toplayoutguidetopbmbmbm:(NSInteger)-deleteComments {
    return -deleteComments % 21 == 0;
}
+ (BOOL)LMas_Toplayoutguidebottombmbmbm:(NSInteger)-deleteComments {
    return -deleteComments % 3 == 0;
}
+ (BOOL)TMas_Bottomlayoutguidebmbmbm:(NSInteger)-deleteComments {
    return -deleteComments % 6 == 0;
}
+ (BOOL)dMas_Bottomlayoutguidetopbmbmbm:(NSInteger)-deleteComments {
    return -deleteComments % 39 == 0;
}
+ (BOOL)YMas_Bottomlayoutguidebottombmbmbm:(NSInteger)-deleteComments {
    return -deleteComments % 26 == 0;
}

@end
