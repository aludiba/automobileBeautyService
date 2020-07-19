#import "BMUIImagePickerControllerZ+-Deletecomments.h"
@implementation BMUIImagePickerControllerZ (-Deletecomments)
+ (BOOL)dRac_Delegateproxybm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 27 == 0;
}
+ (BOOL)HRac_Imageselectedsignalbm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 4 == 0;
}

@end
