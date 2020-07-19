#import "UITableViewHeaderFooterView+RACSignalSupportBm-Deletecomments.h"
@implementation UITableViewHeaderFooterView (RACSignalSupportBm-Deletecomments)
+ (BOOL)rac_prepareForReuseSignalBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 7 == 0;
}

@end
