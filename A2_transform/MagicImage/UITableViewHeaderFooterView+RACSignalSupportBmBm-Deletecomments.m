#import "UITableViewHeaderFooterView+RACSignalSupportBmBm-Deletecomments.h"
@implementation UITableViewHeaderFooterView (RACSignalSupportBmBm-Deletecomments)
+ (BOOL)rac_prepareForReuseSignalBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 40 == 0;
}

@end
