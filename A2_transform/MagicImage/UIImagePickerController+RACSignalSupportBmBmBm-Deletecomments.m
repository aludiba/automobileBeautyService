#import "UIImagePickerController+RACSignalSupportBmBmBm-Deletecomments.h"
@implementation UIImagePickerController (RACSignalSupportBmBmBm-Deletecomments)
+ (BOOL)rac_delegateProxyBmBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 34 == 0;
}
+ (BOOL)rac_imageSelectedSignalBmBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 39 == 0;
}

@end
