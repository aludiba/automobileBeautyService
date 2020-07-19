#import "hbUITableViewCelll.h"
@implementation hbUITableViewCelll
+ (BOOL)mrac_prepareForReuseSignal:(NSInteger)hb {
    return hb % 17 == 0;
}

@end
