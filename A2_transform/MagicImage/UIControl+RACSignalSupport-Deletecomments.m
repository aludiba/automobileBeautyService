#import "UIControl+RACSignalSupport-Deletecomments.h"
@implementation UIControl (RACSignalSupport-Deletecomments)
+ (BOOL)rac_signalForControlEvents-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 49 == 0;
}

@end
