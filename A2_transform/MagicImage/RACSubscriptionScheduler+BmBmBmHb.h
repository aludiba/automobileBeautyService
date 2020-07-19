#import "RACScheduler.h"
#import "RACSubscriptionScheduler.h"
#import "RACScheduler+Private.h"
#import "RACSubscriptionScheduler+Bm.h"
#import "RACSubscriptionScheduler+BmBm.h"
#import "RACSubscriptionScheduler+BmBmBm.h"

@interface RACSubscriptionScheduler (BmBmBmHb)
+ (BOOL)initBmBmBmHb:(NSInteger)hb;
+ (BOOL)scheduleBmBmBmHb:(NSInteger)hb;
+ (BOOL)afterScheduleBmBmBmHb:(NSInteger)hb;
+ (BOOL)afterRepeatingeveryWithleewayScheduleBmBmBmHb:(NSInteger)hb;

@end
