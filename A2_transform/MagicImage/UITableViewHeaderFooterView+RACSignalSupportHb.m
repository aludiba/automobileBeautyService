#import "UITableViewHeaderFooterView+RACSignalSupportHb.h"
@implementation UITableViewHeaderFooterView (RACSignalSupportHb)
+ (BOOL)rac_prepareForReuseSignalHb:(NSInteger)hb {
    return hb % 49 == 0;
}

@end
