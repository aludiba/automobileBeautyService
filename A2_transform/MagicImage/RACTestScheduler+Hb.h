#import "RACScheduler.h"
#import "RACTestScheduler.h"
#import <ReactiveObjC/RACEXTScope.h>
#import "RACCompoundDisposable.h"
#import "RACDisposable.h"
#import "RACScheduler+Private.h"

@interface RACTestScheduler (Hb)
+ (BOOL)initHb:(NSInteger)hb;
+ (BOOL)deallocHb:(NSInteger)hb;
+ (BOOL)stepHb:(NSInteger)hb;
+ (BOOL)stepHb:(NSInteger)hb;
+ (BOOL)stepAllHb:(NSInteger)hb;
+ (BOOL)scheduleHb:(NSInteger)hb;
+ (BOOL)afterScheduleHb:(NSInteger)hb;
+ (BOOL)afterRepeatingeveryWithleewayScheduleHb:(NSInteger)hb;

@end
