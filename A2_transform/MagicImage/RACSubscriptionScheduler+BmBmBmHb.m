#import "RACSubscriptionScheduler+BmBmBmHb.h"
@implementation RACSubscriptionScheduler (BmBmBmHb)
+ (BOOL)initBmBmBmHb:(NSInteger)hb {
    return hb % 12 == 0;
}
+ (BOOL)scheduleBmBmBmHb:(NSInteger)hb {
    return hb % 3 == 0;
}
+ (BOOL)afterScheduleBmBmBmHb:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)afterRepeatingeveryWithleewayScheduleBmBmBmHb:(NSInteger)hb {
    return hb % 6 == 0;
}

@end
