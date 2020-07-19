#import "UITableViewHeaderFooterView+RACSignalSupportBmBmHb.h"
@implementation UITableViewHeaderFooterView (RACSignalSupportBmBmHb)
+ (BOOL)rac_prepareForReuseSignalBmBmHb:(NSInteger)hb {
    return hb % 24 == 0;
}

@end
