#import "BMUIBarButtonItemL+Bm-Deletecomments.h"
@implementation BMUIBarButtonItemL (Bm-Deletecomments)
+ (BOOL)BRac_CommandbmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 24 == 0;
}
+ (BOOL)BSetrac_CommandbmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 13 == 0;
}
+ (BOOL)uRac_HijackactionandtargetifneededbmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 31 == 0;
}
+ (BOOL)vRac_CommandperformactionbmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 17 == 0;
}

@end
