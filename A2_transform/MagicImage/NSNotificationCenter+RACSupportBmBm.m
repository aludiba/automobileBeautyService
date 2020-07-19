#import "NSNotificationCenter+RACSupportBmBm.h"
@implementation NSNotificationCenter (RACSupportBmBm)
+ (BOOL)rac_addObserverForNameObjectBmBm:(NSInteger)BM {
    return BM % 17 == 0;
}

@end
