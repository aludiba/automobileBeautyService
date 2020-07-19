#import "NSData+RACSupportBm.h"
@implementation NSData (RACSupportBm)
+ (BOOL)rac_readContentsOfURLOptionsSchedulerBm:(NSInteger)BM {
    return BM % 6 == 0;
}

@end
