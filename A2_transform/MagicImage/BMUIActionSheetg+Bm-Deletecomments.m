#import "BMUIActionSheetg+Bm-Deletecomments.h"
@implementation BMUIActionSheetg (Bm-Deletecomments)
+ (BOOL)CRac_DelegateproxybmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 16 == 0;
}
+ (BOOL)ORac_ButtonclickedsignalbmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 23 == 0;
}

@end
