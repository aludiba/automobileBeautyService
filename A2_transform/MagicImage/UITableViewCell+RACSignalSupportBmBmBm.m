#import "UITableViewCell+RACSignalSupportBmBmBm.h"
@implementation UITableViewCell (RACSignalSupportBmBmBm)
+ (BOOL)rac_prepareForReuseSignalBmBmBm:(NSInteger)BM {
    return BM % 49 == 0;
}

@end
