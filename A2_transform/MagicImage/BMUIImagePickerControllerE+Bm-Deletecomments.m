#import "BMUIImagePickerControllerE+Bm-Deletecomments.h"
@implementation BMUIImagePickerControllerE (Bm-Deletecomments)
+ (BOOL)Jrac_delegateProxyBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 28 == 0;
}
+ (BOOL)Yrac_imageSelectedSignalBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 1 == 0;
}

@end
