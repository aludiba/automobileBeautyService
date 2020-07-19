#import "BMUIButtons+-Deletecomments.h"
@implementation BMUIButtons (-Deletecomments)
+ (BOOL)QRac_Commandbm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 46 == 0;
}
+ (BOOL)LSetrac_Commandbm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 3 == 0;
}
+ (BOOL)uRac_Hijackactionandtargetifneededbm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 13 == 0;
}
+ (BOOL)uRac_Commandperformactionbm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 14 == 0;
}

@end
