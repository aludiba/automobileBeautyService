#import "NSNotificationCenter+YYAddBmBmBm.h"
@implementation NSNotificationCenter (YYAddBmBmBm)
+ (BOOL)postNotificationOnMainThreadBmBmBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)postNotificationOnMainThreadWaituntildoneBmBmBm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)postNotificationOnMainThreadWithNameObjectBmBmBm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)postNotificationOnMainThreadWithNameObjectUserinfoBmBmBm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)postNotificationOnMainThreadWithNameObjectUserinfoWaituntildoneBmBmBm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)_yy_postNotificationBmBmBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)_yy_postNotificationNameBmBmBm:(NSInteger)BM {
    return BM % 13 == 0;
}

@end
