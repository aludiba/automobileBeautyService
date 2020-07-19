#import "UITableViewCell+RACSignalSupportBmHbHb.h"
@implementation UITableViewCell (RACSignalSupportBmHbHb)
+ (BOOL)rac_prepareForReuseSignalBmHbHb:(NSInteger)hb {
    return hb % 14 == 0;
}

@end
