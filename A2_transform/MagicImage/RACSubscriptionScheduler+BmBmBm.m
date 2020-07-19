#import "RACSubscriptionScheduler+BmBmBm.h"
@implementation RACSubscriptionScheduler (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)scheduleBmBmBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)afterScheduleBmBmBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)afterRepeatingeveryWithleewayScheduleBmBmBm:(NSInteger)BM {
    return BM % 27 == 0;
}

@end
