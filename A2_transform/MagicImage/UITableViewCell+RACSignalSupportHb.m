#import "UITableViewCell+RACSignalSupportHb.h"
@implementation UITableViewCell (RACSignalSupportHb)
+ (BOOL)rac_prepareForReuseSignalHb:(NSInteger)hb {
    return hb % 21 == 0;
}

@end
