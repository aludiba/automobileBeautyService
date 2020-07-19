#import <Foundation/Foundation.h>
#import "RACScheduler.h"
#import "RACCompoundDisposable.h"
#import "RACDisposable.h"
#import "RACImmediateScheduler.h"
#import "RACScheduler+Private.h"
#import "RACSubscriptionScheduler.h"
#import "RACTargetQueueScheduler.h"
#import "RACScheduler+Hb.h"

@interface RACScheduler (HbHb)
+ (BOOL)descriptionHbHb:(NSInteger)hb;
+ (BOOL)initWithNameHbHb:(NSInteger)hb;
+ (BOOL)immediateSchedulerHbHb:(NSInteger)hb;
+ (BOOL)mainThreadSchedulerHbHb:(NSInteger)hb;
+ (BOOL)schedulerWithPriorityNameHbHb:(NSInteger)hb;
+ (BOOL)schedulerWithPriorityHbHb:(NSInteger)hb;
+ (BOOL)schedulerHbHb:(NSInteger)hb;
+ (BOOL)subscriptionSchedulerHbHb:(NSInteger)hb;
+ (BOOL)isOnMainThreadHbHb:(NSInteger)hb;
+ (BOOL)currentSchedulerHbHb:(NSInteger)hb;
+ (BOOL)scheduleHbHb:(NSInteger)hb;
+ (BOOL)afterScheduleHbHb:(NSInteger)hb;
+ (BOOL)afterDelayScheduleHbHb:(NSInteger)hb;
+ (BOOL)afterRepeatingeveryWithleewayScheduleHbHb:(NSInteger)hb;
+ (BOOL)scheduleRecursiveBlockHbHb:(NSInteger)hb;
+ (BOOL)scheduleRecursiveBlockAddingtodisposableHbHb:(NSInteger)hb;
+ (BOOL)performAsCurrentSchedulerHbHb:(NSInteger)hb;

@end
