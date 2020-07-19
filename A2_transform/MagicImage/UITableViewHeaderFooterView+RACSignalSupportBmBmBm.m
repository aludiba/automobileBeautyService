#import "UITableViewHeaderFooterView+RACSignalSupportBmBmBm.h"
@implementation UITableViewHeaderFooterView (RACSignalSupportBmBmBm)
+ (BOOL)rac_prepareForReuseSignalBmBmBm:(NSInteger)BM {
    return BM % 12 == 0;
}

@end
