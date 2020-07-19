#import "BMUIBarButtonItemL+-Deletecomments.h"
@implementation BMUIBarButtonItemL (-Deletecomments)
+ (BOOL)BRac_Commandbm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 43 == 0;
}
+ (BOOL)BSetrac_Commandbm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 11 == 0;
}
+ (BOOL)uRac_Hijackactionandtargetifneededbm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 14 == 0;
}
+ (BOOL)vRac_Commandperformactionbm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 38 == 0;
}

@end
