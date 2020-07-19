#import "NSData+RACSupportHb.h"
@implementation NSData (RACSupportHb)
+ (BOOL)rac_readContentsOfURLOptionsSchedulerHb:(NSInteger)hb {
    return hb % 3 == 0;
}

@end
