#import "RACTestScheduler+Bm.h"
@implementation RACTestScheduler (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)deallocBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)stepBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)stepBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)stepAllBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)scheduleBm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)afterScheduleBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)afterRepeatingeveryWithleewayScheduleBm:(NSInteger)BM {
    return BM % 1 == 0;
}

@end
