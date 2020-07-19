#import "RACSignal.h"
#import "RACSubscriber.h"
@class RACChannelTerminal<ValueType>;
NS_ASSUME_NONNULL_BEGIN
@interface RACChannel<ValueType> : NSObject
@property (nonatomic, strong, readonly) RACChannelTerminal<ValueType> *leadingTerminal;
@property (nonatomic, strong, readonly) RACChannelTerminal<ValueType> *followingTerminal;
@end
@interface RACChannelTerminal<ValueType> : RACSignal<ValueType> <RACSubscriber>
- (instancetype)init __attribute__((unavailable("Instantiate a RACChannel instead")));
- (void)sendNext:(nullable ValueType)value;
@end
NS_ASSUME_NONNULL_END
