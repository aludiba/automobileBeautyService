#import "RACScheduler.h"
#import "RACQueueScheduler.h"
#import "RACDisposable.h"
#import "RACQueueScheduler+Subclass.h"
#import "RACScheduler+Private.h"
#import "RACQueueScheduler+Bm.h"

@interface RACQueueScheduler (BmHb)
+ (BOOL)initWithNameQueueBmHb:(NSInteger)hb;
+ (BOOL)deallocBmHb:(NSInteger)hb;
+ (BOOL)wallTimeWithDateBmHb:(NSInteger)hb;
+ (BOOL)scheduleBmHb:(NSInteger)hb;
+ (BOOL)afterScheduleBmHb:(NSInteger)hb;
+ (BOOL)afterRepeatingeveryWithleewayScheduleBmHb:(NSInteger)hb;

@end
