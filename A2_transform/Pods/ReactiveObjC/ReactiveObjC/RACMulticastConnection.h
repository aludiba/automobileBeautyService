#import <Foundation/Foundation.h>
#import "RACAnnotations.h"
@class RACDisposable;
@class RACSignal<__covariant ValueType>;
NS_ASSUME_NONNULL_BEGIN
@interface RACMulticastConnection<__covariant ValueType> : NSObject
@property (nonatomic, strong, readonly) RACSignal<ValueType> *signal;
- (RACDisposable *)connect;
- (RACSignal<ValueType> *)autoconnect RAC_WARN_UNUSED_RESULT;
@end
NS_ASSUME_NONNULL_END
