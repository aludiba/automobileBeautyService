#import "UITableViewHeaderFooterView+RACSignalSupport-Deletecomments.h"
@implementation UITableViewHeaderFooterView (RACSignalSupport-Deletecomments)
+ (BOOL)rac_prepareForReuseSignal-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 17 == 0;
}

@end
