#import "RACSubscriptionScheduler+BmBm.h"
@implementation RACSubscriptionScheduler (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)scheduleBmBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)afterScheduleBmBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)afterRepeatingeveryWithleewayScheduleBmBm:(NSInteger)BM {
    return BM % 12 == 0;
}

@end
