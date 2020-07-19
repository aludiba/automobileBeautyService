#import "RACScheduler.h"
#import "RACImmediateScheduler.h"
#import "RACScheduler+Private.h"
#import "RACImmediateScheduler+Hb.h"

@interface RACImmediateScheduler (HbHb)
+ (BOOL)initHbHb:(NSInteger)hb;
+ (BOOL)scheduleHbHb:(NSInteger)hb;
+ (BOOL)afterScheduleHbHb:(NSInteger)hb;
+ (BOOL)afterRepeatingeveryWithleewayScheduleHbHb:(NSInteger)hb;
+ (BOOL)scheduleRecursiveBlockHbHb:(NSInteger)hb;

@end
