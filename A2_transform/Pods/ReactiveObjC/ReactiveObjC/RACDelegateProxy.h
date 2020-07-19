#import <Foundation/Foundation.h>
@class RACSignal<__covariant ValueType>;
NS_ASSUME_NONNULL_BEGIN
@interface RACDelegateProxy : NSObject
@property (nonatomic, unsafe_unretained) id rac_proxiedDelegate;
- (instancetype)initWithProtocol:(Protocol *)protocol;
- (RACSignal *)signalForSelector:(SEL)selector;
@end
NS_ASSUME_NONNULL_END
