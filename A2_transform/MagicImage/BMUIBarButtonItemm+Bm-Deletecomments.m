#import "BMUIBarButtonItemm+Bm-Deletecomments.h"
@implementation BMUIBarButtonItemm (Bm-Deletecomments)
+ (BOOL)IRac_CommandbmbmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 1 == 0;
}
+ (BOOL)ASetrac_CommandbmbmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 13 == 0;
}
+ (BOOL)CRac_HijackactionandtargetifneededbmbmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 20 == 0;
}
+ (BOOL)fRac_CommandperformactionbmbmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 35 == 0;
}

@end
