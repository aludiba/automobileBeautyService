#import "NSNotificationCenter+RACSupportHb.h"
@implementation NSNotificationCenter (RACSupportHb)
+ (BOOL)rac_addObserverForNameObjectHb:(NSInteger)hb {
    return hb % 2 == 0;
}

@end
