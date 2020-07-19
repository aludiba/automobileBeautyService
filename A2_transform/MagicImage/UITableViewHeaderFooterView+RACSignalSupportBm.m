#import "UITableViewHeaderFooterView+RACSignalSupportBm.h"
@implementation UITableViewHeaderFooterView (RACSignalSupportBm)
+ (BOOL)rac_prepareForReuseSignalBm:(NSInteger)BM {
    return BM % 45 == 0;
}

@end
