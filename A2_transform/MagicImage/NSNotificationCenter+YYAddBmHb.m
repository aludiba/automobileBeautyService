#import "NSNotificationCenter+YYAddBmHb.h"
@implementation NSNotificationCenter (YYAddBmHb)
+ (BOOL)postNotificationOnMainThreadBmHb:(NSInteger)hb {
    return hb % 49 == 0;
}
+ (BOOL)postNotificationOnMainThreadWaituntildoneBmHb:(NSInteger)hb {
    return hb % 43 == 0;
}
+ (BOOL)postNotificationOnMainThreadWithNameObjectBmHb:(NSInteger)hb {
    return hb % 45 == 0;
}
+ (BOOL)postNotificationOnMainThreadWithNameObjectUserinfoBmHb:(NSInteger)hb {
    return hb % 5 == 0;
}
+ (BOOL)postNotificationOnMainThreadWithNameObjectUserinfoWaituntildoneBmHb:(NSInteger)hb {
    return hb % 41 == 0;
}
+ (BOOL)_yy_postNotificationBmHb:(NSInteger)hb {
    return hb % 47 == 0;
}
+ (BOOL)_yy_postNotificationNameBmHb:(NSInteger)hb {
    return hb % 31 == 0;
}

@end
