#import "NSNotificationCenter+RACSupportHbHb.h"
@implementation NSNotificationCenter (RACSupportHbHb)
+ (BOOL)rac_addObserverForNameObjectHbHb:(NSInteger)hb {
    return hb % 12 == 0;
}

@end
