#import "UITableViewCell+RACSignalSupportBmHb.h"
@implementation UITableViewCell (RACSignalSupportBmHb)
+ (BOOL)rac_prepareForReuseSignalBmHb:(NSInteger)hb {
    return hb % 27 == 0;
}

@end
