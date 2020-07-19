#import "BMUIImagePickerControllerS+-Deletecomments.h"
@implementation BMUIImagePickerControllerS (-Deletecomments)
+ (BOOL)srac_delegateProxy-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 8 == 0;
}
+ (BOOL)Frac_imageSelectedSignal-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 6 == 0;
}

@end
