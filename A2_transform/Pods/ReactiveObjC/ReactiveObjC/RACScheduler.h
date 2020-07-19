#import <Foundation/Foundation.h>
NS_ASSUME_NONNULL_BEGIN
typedef enum : long {
	RACSchedulerPriorityHigh = DISPATCH_QUEUE_PRIORITY_HIGH,
	RACSchedulerPriorityDefault = DISPATCH_QUEUE_PRIORITY_DEFAULT,
	RACSchedulerPriorityLow = DISPATCH_QUEUE_PRIORITY_LOW,
	RACSchedulerPriorityBackground = DISPATCH_QUEUE_PRIORITY_BACKGROUND,
} RACSchedulerPriority;
typedef void (^RACSchedulerRecursiveBlock)(void (^reschedule)(void));
@class RACDisposable;
@interface RACScheduler : NSObject
+ (RACScheduler *)immediateScheduler;
+ (RACScheduler *)mainThreadScheduler;
+ (RACScheduler *)schedulerWithPriority:(RACSchedulerPriority)priority name:(nullable NSString *)name;
+ (RACScheduler *)schedulerWithPriority:(RACSchedulerPriority)priority;
+ (RACScheduler *)scheduler;
+ (nullable RACScheduler *)currentScheduler;
- (nullable RACDisposable *)schedule:(void (^)(void))block;
- (nullable RACDisposable *)after:(NSDate *)date schedule:(void (^)(void))block;
- (nullable RACDisposable *)afterDelay:(NSTimeInterval)delay schedule:(void (^)(void))block;
- (nullable RACDisposable *)after:(NSDate *)date repeatingEvery:(NSTimeInterval)interval withLeeway:(NSTimeInterval)leeway schedule:(void (^)(void))block;
- (nullable RACDisposable *)scheduleRecursiveBlock:(RACSchedulerRecursiveBlock)recursiveBlock;
@end
NS_ASSUME_NONNULL_END
