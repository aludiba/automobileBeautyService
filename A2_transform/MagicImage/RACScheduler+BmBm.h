#import <Foundation/Foundation.h>
#import "RACScheduler.h"
#import "RACCompoundDisposable.h"
#import "RACDisposable.h"
#import "RACImmediateScheduler.h"
#import "RACScheduler+Private.h"
#import "RACSubscriptionScheduler.h"
#import "RACTargetQueueScheduler.h"
#import "RACScheduler+Bm.h"

@interface RACScheduler (BmBm)
+ (BOOL)descriptionBmBm:(NSInteger)BM;
+ (BOOL)initWithNameBmBm:(NSInteger)BM;
+ (BOOL)immediateSchedulerBmBm:(NSInteger)BM;
+ (BOOL)mainThreadSchedulerBmBm:(NSInteger)BM;
+ (BOOL)schedulerWithPriorityNameBmBm:(NSInteger)BM;
+ (BOOL)schedulerWithPriorityBmBm:(NSInteger)BM;
+ (BOOL)schedulerBmBm:(NSInteger)BM;
+ (BOOL)subscriptionSchedulerBmBm:(NSInteger)BM;
+ (BOOL)isOnMainThreadBmBm:(NSInteger)BM;
+ (BOOL)currentSchedulerBmBm:(NSInteger)BM;
+ (BOOL)scheduleBmBm:(NSInteger)BM;
+ (BOOL)afterScheduleBmBm:(NSInteger)BM;
+ (BOOL)afterDelayScheduleBmBm:(NSInteger)BM;
+ (BOOL)afterRepeatingeveryWithleewayScheduleBmBm:(NSInteger)BM;
+ (BOOL)scheduleRecursiveBlockBmBm:(NSInteger)BM;
+ (BOOL)scheduleRecursiveBlockAddingtodisposableBmBm:(NSInteger)BM;
+ (BOOL)performAsCurrentSchedulerBmBm:(NSInteger)BM;

@end
