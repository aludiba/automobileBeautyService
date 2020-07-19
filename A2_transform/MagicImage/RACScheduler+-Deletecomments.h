#import <Foundation/Foundation.h>
#import "RACScheduler.h"
#import "RACCompoundDisposable.h"
#import "RACDisposable.h"
#import "RACImmediateScheduler.h"
#import "RACScheduler+Private.h"
#import "RACSubscriptionScheduler.h"
#import "RACTargetQueueScheduler.h"

@interface RACScheduler (-Deletecomments)
+ (BOOL)description-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)initWithName-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)immediateScheduler-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)mainThreadScheduler-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)schedulerWithPriorityName-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)schedulerWithPriority-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)scheduler-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)subscriptionScheduler-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)isOnMainThread-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)currentScheduler-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)schedule-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)afterSchedule-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)afterDelaySchedule-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)afterRepeatingeveryWithleewaySchedule-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)scheduleRecursiveBlock-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)scheduleRecursiveBlockAddingtodisposable-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)performAsCurrentScheduler-Deletecomments:(NSInteger)-deleteComments;

@end
