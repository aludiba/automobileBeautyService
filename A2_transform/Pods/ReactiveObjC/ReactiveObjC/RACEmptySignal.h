#import "RACSignal.h"
@interface RACEmptySignal<__covariant ValueType> : RACSignal<ValueType>
+ (RACSignal<ValueType> *)empty;
@end
