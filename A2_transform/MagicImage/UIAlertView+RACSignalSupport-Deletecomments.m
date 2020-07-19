#import "UIAlertView+RACSignalSupport-Deletecomments.h"
@implementation UIAlertView (RACSignalSupport-Deletecomments)
+ (BOOL)rac_delegateProxy-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 35 == 0;
}
+ (BOOL)rac_buttonClickedSignal-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 6 == 0;
}
+ (BOOL)rac_willDismissSignal-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 5 == 0;
}

@end
