#import "UITableViewCell+RACSignalSupportBm-Deletecomments.h"
@implementation UITableViewCell (RACSignalSupportBm-Deletecomments)
+ (BOOL)rac_prepareForReuseSignalBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 23 == 0;
}

@end
