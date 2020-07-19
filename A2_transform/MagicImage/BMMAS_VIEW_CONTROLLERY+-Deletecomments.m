#import "BMMAS_VIEW_CONTROLLERY+-Deletecomments.h"
@implementation BMMAS_VIEW_CONTROLLERY (-Deletecomments)
+ (BOOL)BMas_Toplayoutguidebm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 3 == 0;
}
+ (BOOL)TMas_Toplayoutguidetopbm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 19 == 0;
}
+ (BOOL)tMas_Toplayoutguidebottombm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 6 == 0;
}
+ (BOOL)mMas_Bottomlayoutguidebm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 30 == 0;
}
+ (BOOL)BMas_Bottomlayoutguidetopbm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 21 == 0;
}
+ (BOOL)LMas_Bottomlayoutguidebottombm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 32 == 0;
}

@end
