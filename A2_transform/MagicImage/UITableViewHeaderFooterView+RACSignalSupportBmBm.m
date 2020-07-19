#import "UITableViewHeaderFooterView+RACSignalSupportBmBm.h"
@implementation UITableViewHeaderFooterView (RACSignalSupportBmBm)
+ (BOOL)rac_prepareForReuseSignalBmBm:(NSInteger)BM {
    return BM % 17 == 0;
}

@end
