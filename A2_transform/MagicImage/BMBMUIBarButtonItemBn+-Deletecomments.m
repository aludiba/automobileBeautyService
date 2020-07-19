#import "BMBMUIBarButtonItemBn+-Deletecomments.h"
@implementation BMBMUIBarButtonItemBn (-Deletecomments)
+ (BOOL)FWsetactionblock-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 49 == 0;
}
+ (BOOL)CActionblock-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 25 == 0;
}

@end
