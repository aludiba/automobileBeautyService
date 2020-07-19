#import <Foundation/Foundation.h>
@class RACTuple;
@class RACSignal<__covariant ValueType>;
NS_ASSUME_NONNULL_BEGIN
extern NSString * const RACSelectorSignalErrorDomain;
extern const NSInteger RACSelectorSignalErrorMethodSwizzlingRace;
@interface NSObject (RACSelectorSignal)
- (RACSignal<RACTuple *> *)rac_signalForSelector:(SEL)selector;
- (RACSignal<RACTuple *> *)rac_signalForSelector:(SEL)selector fromProtocol:(Protocol *)protocol;
@end
NS_ASSUME_NONNULL_END
