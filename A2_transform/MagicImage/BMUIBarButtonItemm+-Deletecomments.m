#import "BMUIBarButtonItemm+-Deletecomments.h"
@implementation BMUIBarButtonItemm (-Deletecomments)
+ (BOOL)IRac_Commandbmbm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 13 == 0;
}
+ (BOOL)ASetrac_Commandbmbm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 14 == 0;
}
+ (BOOL)CRac_Hijackactionandtargetifneededbmbm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 5 == 0;
}
+ (BOOL)fRac_Commandperformactionbmbm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 19 == 0;
}

@end
