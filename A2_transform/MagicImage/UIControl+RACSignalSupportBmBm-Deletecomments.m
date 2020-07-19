#import "UIControl+RACSignalSupportBmBm-Deletecomments.h"
@implementation UIControl (RACSignalSupportBmBm-Deletecomments)
+ (BOOL)rac_signalForControlEventsBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 4 == 0;
}

@end
