#import "NSNotificationCenter+YYAddBmBm.h"
@implementation NSNotificationCenter (YYAddBmBm)
+ (BOOL)postNotificationOnMainThreadBmBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)postNotificationOnMainThreadWaituntildoneBmBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)postNotificationOnMainThreadWithNameObjectBmBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)postNotificationOnMainThreadWithNameObjectUserinfoBmBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)postNotificationOnMainThreadWithNameObjectUserinfoWaituntildoneBmBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)_yy_postNotificationBmBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)_yy_postNotificationNameBmBm:(NSInteger)BM {
    return BM % 10 == 0;
}

@end
