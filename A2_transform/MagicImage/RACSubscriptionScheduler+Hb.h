#import "RACScheduler.h"
#import "RACSubscriptionScheduler.h"
#import "RACScheduler+Private.h"

@interface RACSubscriptionScheduler (Hb)
+ (BOOL)initHb:(NSInteger)hb;
+ (BOOL)scheduleHb:(NSInteger)hb;
+ (BOOL)afterScheduleHb:(NSInteger)hb;
+ (BOOL)afterRepeatingeveryWithleewayScheduleHb:(NSInteger)hb;

@end
