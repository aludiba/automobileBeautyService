#import <Foundation/Foundation.h>
@class RACSignal<__covariant ValueType>;
@class RACTuple;
NS_ASSUME_NONNULL_BEGIN
@interface NSObject (RACLifting)
- (RACSignal *)rac_liftSelector:(SEL)selector withSignals:(RACSignal *)firstSignal, ... NS_REQUIRES_NIL_TERMINATION;
- (RACSignal *)rac_liftSelector:(SEL)selector withSignalsFromArray:(NSArray<RACSignal *> *)signals;
- (RACSignal *)rac_liftSelector:(SEL)selector withSignalOfArguments:(RACSignal<RACTuple *> *)arguments;
@end
NS_ASSUME_NONNULL_END
