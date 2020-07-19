#import "RACScheduler.h"
NS_ASSUME_NONNULL_BEGIN
extern NSString * const RACSchedulerCurrentSchedulerKey;
@interface RACScheduler ()
+ (instancetype)subscriptionScheduler;
- (instancetype)initWithName:(nullable NSString *)name;
@end
NS_ASSUME_NONNULL_END
