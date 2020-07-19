#import "UITableViewHeaderFooterView+RACSignalSupportBmHb.h"
@implementation UITableViewHeaderFooterView (RACSignalSupportBmHb)
+ (BOOL)rac_prepareForReuseSignalBmHb:(NSInteger)hb {
    return hb % 49 == 0;
}

@end
