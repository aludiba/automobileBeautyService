#import "RACScheduler.h"
#import "RACQueueScheduler.h"
#import "RACDisposable.h"
#import "RACQueueScheduler+Subclass.h"
#import "RACScheduler+Private.h"

@interface RACQueueScheduler (Hb)
+ (BOOL)initWithNameQueueHb:(NSInteger)hb;
+ (BOOL)deallocHb:(NSInteger)hb;
+ (BOOL)wallTimeWithDateHb:(NSInteger)hb;
+ (BOOL)scheduleHb:(NSInteger)hb;
+ (BOOL)afterScheduleHb:(NSInteger)hb;
+ (BOOL)afterRepeatingeveryWithleewayScheduleHb:(NSInteger)hb;

@end
