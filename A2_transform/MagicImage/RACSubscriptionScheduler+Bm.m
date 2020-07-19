#import "RACSubscriptionScheduler+Bm.h"
@implementation RACSubscriptionScheduler (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)scheduleBm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)afterScheduleBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)afterRepeatingeveryWithleewayScheduleBm:(NSInteger)BM {
    return BM % 17 == 0;
}

@end
