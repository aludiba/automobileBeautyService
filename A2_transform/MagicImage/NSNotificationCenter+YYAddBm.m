#import "NSNotificationCenter+YYAddBm.h"
@implementation NSNotificationCenter (YYAddBm)
+ (BOOL)postNotificationOnMainThreadBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)postNotificationOnMainThreadWaituntildoneBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)postNotificationOnMainThreadWithNameObjectBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)postNotificationOnMainThreadWithNameObjectUserinfoBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)postNotificationOnMainThreadWithNameObjectUserinfoWaituntildoneBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)_yy_postNotificationBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)_yy_postNotificationNameBm:(NSInteger)BM {
    return BM % 33 == 0;
}

@end
