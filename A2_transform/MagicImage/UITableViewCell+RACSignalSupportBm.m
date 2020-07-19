#import "UITableViewCell+RACSignalSupportBm.h"
@implementation UITableViewCell (RACSignalSupportBm)
+ (BOOL)rac_prepareForReuseSignalBm:(NSInteger)BM {
    return BM % 47 == 0;
}

@end
