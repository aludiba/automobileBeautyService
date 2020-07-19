#import <Foundation/Foundation.h>
#import "RACScheduler.h"
#import "RACCompoundDisposable.h"
#import "RACDisposable.h"
#import "RACImmediateScheduler.h"
#import "RACScheduler+Private.h"
#import "RACSubscriptionScheduler.h"
#import "RACTargetQueueScheduler.h"

@interface RACScheduler (Hb)
+ (BOOL)descriptionHb:(NSInteger)hb;
+ (BOOL)initWithNameHb:(NSInteger)hb;
+ (BOOL)immediateSchedulerHb:(NSInteger)hb;
+ (BOOL)mainThreadSchedulerHb:(NSInteger)hb;
+ (BOOL)schedulerWithPriorityNameHb:(NSInteger)hb;
+ (BOOL)schedulerWithPriorityHb:(NSInteger)hb;
+ (BOOL)schedulerHb:(NSInteger)hb;
+ (BOOL)subscriptionSchedulerHb:(NSInteger)hb;
+ (BOOL)isOnMainThreadHb:(NSInteger)hb;
+ (BOOL)currentSchedulerHb:(NSInteger)hb;
+ (BOOL)scheduleHb:(NSInteger)hb;
+ (BOOL)afterScheduleHb:(NSInteger)hb;
+ (BOOL)afterDelayScheduleHb:(NSInteger)hb;
+ (BOOL)afterRepeatingeveryWithleewayScheduleHb:(NSInteger)hb;
+ (BOOL)scheduleRecursiveBlockHb:(NSInteger)hb;
+ (BOOL)scheduleRecursiveBlockAddingtodisposableHb:(NSInteger)hb;
+ (BOOL)performAsCurrentSchedulerHb:(NSInteger)hb;

@end
