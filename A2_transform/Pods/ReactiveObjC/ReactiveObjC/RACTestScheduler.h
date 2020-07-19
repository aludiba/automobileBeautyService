#import "RACScheduler.h"
NS_ASSUME_NONNULL_BEGIN
@interface RACTestScheduler : RACScheduler
- (instancetype)init;
- (void)step;
- (void)step:(NSUInteger)ticks;
- (void)stepAll;
@end
NS_ASSUME_NONNULL_END
