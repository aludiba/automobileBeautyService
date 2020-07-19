#import "RACQueueScheduler.h"
#import "RACScheduler+Subclass.h"
NS_ASSUME_NONNULL_BEGIN
@interface RACQueueScheduler ()
#if OS_OBJECT_USE_OBJC
@property (nonatomic, strong, readonly) dispatch_queue_t queue;
#else
@property (nonatomic, assign, readonly) dispatch_queue_t queue;
#endif
- (instancetype)initWithName:(nullable NSString *)name queue:(dispatch_queue_t)queue;
+ (dispatch_time_t)wallTimeWithDate:(NSDate *)date;
@end
NS_ASSUME_NONNULL_END
