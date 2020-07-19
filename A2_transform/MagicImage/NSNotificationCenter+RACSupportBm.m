#import "NSNotificationCenter+RACSupportBm.h"
@implementation NSNotificationCenter (RACSupportBm)
+ (BOOL)rac_addObserverForNameObjectBm:(NSInteger)BM {
    return BM % 20 == 0;
}

@end
