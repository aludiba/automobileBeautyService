#import "UIGestureRecognizer+RACSignalSupportBm-Deletecomments.h"
@implementation UIGestureRecognizer (RACSignalSupportBm-Deletecomments)
+ (BOOL)rac_gestureSignalBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 19 == 0;
}

@end
