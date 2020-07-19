#import "hbUITableViewHeaderFooterViewA.h"
@implementation hbUITableViewHeaderFooterViewA
+ (BOOL)brac_prepareForReuseSignal:(NSInteger)hb {
    return hb % 44 == 0;
}

@end
