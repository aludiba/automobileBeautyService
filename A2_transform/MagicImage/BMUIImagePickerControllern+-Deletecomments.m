#import "BMUIImagePickerControllern+-Deletecomments.h"
@implementation BMUIImagePickerControllern (-Deletecomments)
+ (BOOL)NRac_Delegateproxybm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 2 == 0;
}
+ (BOOL)eRac_Imageselectedsignalbm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 39 == 0;
}

@end
