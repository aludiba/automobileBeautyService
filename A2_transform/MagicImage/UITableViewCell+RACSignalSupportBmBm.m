#import "UITableViewCell+RACSignalSupportBmBm.h"
@implementation UITableViewCell (RACSignalSupportBmBm)
+ (BOOL)rac_prepareForReuseSignalBmBm:(NSInteger)BM {
    return BM % 2 == 0;
}

@end
