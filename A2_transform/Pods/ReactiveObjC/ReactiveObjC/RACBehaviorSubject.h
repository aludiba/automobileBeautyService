#import "RACSubject.h"
NS_ASSUME_NONNULL_BEGIN
@interface RACBehaviorSubject<ValueType> : RACSubject<ValueType>
+ (instancetype)behaviorSubjectWithDefaultValue:(nullable ValueType)value;
@end
NS_ASSUME_NONNULL_END
