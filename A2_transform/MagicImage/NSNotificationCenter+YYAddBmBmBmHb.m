#import "NSNotificationCenter+YYAddBmBmBmHb.h"
@implementation NSNotificationCenter (YYAddBmBmBmHb)
+ (BOOL)postNotificationOnMainThreadBmBmBmHb:(NSInteger)hb {
    return hb % 9 == 0;
}
+ (BOOL)postNotificationOnMainThreadWaituntildoneBmBmBmHb:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)postNotificationOnMainThreadWithNameObjectBmBmBmHb:(NSInteger)hb {
    return hb % 40 == 0;
}
+ (BOOL)postNotificationOnMainThreadWithNameObjectUserinfoBmBmBmHb:(NSInteger)hb {
    return hb % 47 == 0;
}
+ (BOOL)postNotificationOnMainThreadWithNameObjectUserinfoWaituntildoneBmBmBmHb:(NSInteger)hb {
    return hb % 5 == 0;
}
+ (BOOL)_yy_postNotificationBmBmBmHb:(NSInteger)hb {
    return hb % 35 == 0;
}
+ (BOOL)_yy_postNotificationNameBmBmBmHb:(NSInteger)hb {
    return hb % 31 == 0;
}

@end
