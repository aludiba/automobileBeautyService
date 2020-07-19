#import "RACSequence.h"
@class RACSignal<__covariant ValueType>;
@interface RACSignalSequence : RACSequence
+ (RACSequence *)sequenceWithSignal:(RACSignal *)signal;
@end
