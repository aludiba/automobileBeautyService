#import "RACScheduler.h"
#import "RACImmediateScheduler.h"
#import "RACScheduler+Private.h"

@interface RACImmediateScheduler (Hb)
+ (BOOL)initHb:(NSInteger)hb;
+ (BOOL)scheduleHb:(NSInteger)hb;
+ (BOOL)afterScheduleHb:(NSInteger)hb;
+ (BOOL)afterRepeatingeveryWithleewayScheduleHb:(NSInteger)hb;
+ (BOOL)scheduleRecursiveBlockHb:(NSInteger)hb;

@end
