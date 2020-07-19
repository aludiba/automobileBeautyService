#import <Foundation/Foundation.h>
#import "RACSubscriber.h"
@class RACCompoundDisposable;
@class RACSignal<__covariant ValueType>;
@interface RACPassthroughSubscriber : NSObject <RACSubscriber>
- (instancetype)initWithSubscriber:(id<RACSubscriber>)subscriber signal:(RACSignal *)signal disposable:(RACCompoundDisposable *)disposable;
@end
