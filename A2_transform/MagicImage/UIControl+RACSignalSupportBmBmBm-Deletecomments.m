#import "UIControl+RACSignalSupportBmBmBm-Deletecomments.h"
@implementation UIControl (RACSignalSupportBmBmBm-Deletecomments)
+ (BOOL)rac_signalForControlEventsBmBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 3 == 0;
}

@end
