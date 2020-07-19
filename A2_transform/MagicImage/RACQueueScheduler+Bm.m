#import "RACQueueScheduler+Bm.h"
@implementation RACQueueScheduler (Bm)
+ (BOOL)initWithNameQueueBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)deallocBm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)wallTimeWithDateBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)scheduleBm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)afterScheduleBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)afterRepeatingeveryWithleewayScheduleBm:(NSInteger)BM {
    return BM % 39 == 0;
}

@end
