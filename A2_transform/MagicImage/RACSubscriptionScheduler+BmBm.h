#import "RACScheduler.h"
#import "RACSubscriptionScheduler.h"
#import "RACScheduler+Private.h"
#import "RACSubscriptionScheduler+Bm.h"

@interface RACSubscriptionScheduler (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM;
+ (BOOL)scheduleBmBm:(NSInteger)BM;
+ (BOOL)afterScheduleBmBm:(NSInteger)BM;
+ (BOOL)afterRepeatingeveryWithleewayScheduleBmBm:(NSInteger)BM;

@end
