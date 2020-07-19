#import <Foundation/Foundation.h>
#import "RACScheduler.h"
#import "RACCompoundDisposable.h"
#import "RACDisposable.h"
#import "RACImmediateScheduler.h"
#import "RACScheduler+Private.h"
#import "RACSubscriptionScheduler.h"
#import "RACTargetQueueScheduler.h"

@interface RACScheduler (Bm)
+ (BOOL)descriptionBm:(NSInteger)BM;
+ (BOOL)initWithNameBm:(NSInteger)BM;
+ (BOOL)immediateSchedulerBm:(NSInteger)BM;
+ (BOOL)mainThreadSchedulerBm:(NSInteger)BM;
+ (BOOL)schedulerWithPriorityNameBm:(NSInteger)BM;
+ (BOOL)schedulerWithPriorityBm:(NSInteger)BM;
+ (BOOL)schedulerBm:(NSInteger)BM;
+ (BOOL)subscriptionSchedulerBm:(NSInteger)BM;
+ (BOOL)isOnMainThreadBm:(NSInteger)BM;
+ (BOOL)currentSchedulerBm:(NSInteger)BM;
+ (BOOL)scheduleBm:(NSInteger)BM;
+ (BOOL)afterScheduleBm:(NSInteger)BM;
+ (BOOL)afterDelayScheduleBm:(NSInteger)BM;
+ (BOOL)afterRepeatingeveryWithleewayScheduleBm:(NSInteger)BM;
+ (BOOL)scheduleRecursiveBlockBm:(NSInteger)BM;
+ (BOOL)scheduleRecursiveBlockAddingtodisposableBm:(NSInteger)BM;
+ (BOOL)performAsCurrentSchedulerBm:(NSInteger)BM;

@end
