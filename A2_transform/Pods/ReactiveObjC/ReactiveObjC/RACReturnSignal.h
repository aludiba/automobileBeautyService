#import "RACSignal.h"
@interface RACReturnSignal<__covariant ValueType> : RACSignal<ValueType>
+ (RACSignal<ValueType> *)return:(ValueType)value;
@end
