#import "RACQueueScheduler.h"
NS_ASSUME_NONNULL_BEGIN
@interface RACTargetQueueScheduler : RACQueueScheduler
- (instancetype)initWithName:(nullable NSString *)name targetQueue:(dispatch_queue_t)targetQueue;
@end
NS_ASSUME_NONNULL_END
