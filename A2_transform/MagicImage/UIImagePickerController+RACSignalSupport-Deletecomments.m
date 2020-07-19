#import "UIImagePickerController+RACSignalSupport-Deletecomments.h"
@implementation UIImagePickerController (RACSignalSupport-Deletecomments)
+ (BOOL)rac_delegateProxy-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 23 == 0;
}
+ (BOOL)rac_imageSelectedSignal-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 38 == 0;
}

@end
