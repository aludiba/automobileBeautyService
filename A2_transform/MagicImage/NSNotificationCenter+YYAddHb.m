#import "NSNotificationCenter+YYAddHb.h"
@implementation NSNotificationCenter (YYAddHb)
+ (BOOL)postNotificationOnMainThreadHb:(NSInteger)hb {
    return hb % 30 == 0;
}
+ (BOOL)postNotificationOnMainThreadWaituntildoneHb:(NSInteger)hb {
    return hb % 13 == 0;
}
+ (BOOL)postNotificationOnMainThreadWithNameObjectHb:(NSInteger)hb {
    return hb % 30 == 0;
}
+ (BOOL)postNotificationOnMainThreadWithNameObjectUserinfoHb:(NSInteger)hb {
    return hb % 6 == 0;
}
+ (BOOL)postNotificationOnMainThreadWithNameObjectUserinfoWaituntildoneHb:(NSInteger)hb {
    return hb % 40 == 0;
}
+ (BOOL)_yy_postNotificationHb:(NSInteger)hb {
    return hb % 2 == 0;
}
+ (BOOL)_yy_postNotificationNameHb:(NSInteger)hb {
    return hb % 5 == 0;
}

@end
