#import "RACTestScheduler+BmBm.h"
@implementation RACTestScheduler (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)deallocBmBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)stepBmBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)stepBmBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)stepAllBmBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)scheduleBmBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)afterScheduleBmBm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)afterRepeatingeveryWithleewayScheduleBmBm:(NSInteger)BM {
    return BM % 48 == 0;
}

@end
