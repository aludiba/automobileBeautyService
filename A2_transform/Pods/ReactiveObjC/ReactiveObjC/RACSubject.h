#import "RACSignal.h"
#import "RACSubscriber.h"
NS_ASSUME_NONNULL_BEGIN
@interface RACSubject<ValueType> : RACSignal<ValueType> <RACSubscriber>
+ (instancetype)subject;
- (void)sendNext:(nullable ValueType)value;
@end
NS_ASSUME_NONNULL_END
