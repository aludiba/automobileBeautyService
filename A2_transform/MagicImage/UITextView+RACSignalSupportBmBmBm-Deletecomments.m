#import "UITextView+RACSignalSupportBmBmBm-Deletecomments.h"
@implementation UITextView (RACSignalSupportBmBmBm-Deletecomments)
+ (BOOL)rac_delegateProxyBmBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 11 == 0;
}
+ (BOOL)rac_textSignalBmBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 34 == 0;
}

@end
