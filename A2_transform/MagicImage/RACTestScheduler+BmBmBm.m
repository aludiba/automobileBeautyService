#import "RACTestScheduler+BmBmBm.h"
@implementation RACTestScheduler (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)deallocBmBmBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)stepBmBmBm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)stepBmBmBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)stepAllBmBmBm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)scheduleBmBmBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)afterScheduleBmBmBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)afterRepeatingeveryWithleewayScheduleBmBmBm:(NSInteger)BM {
    return BM % 35 == 0;
}

@end
