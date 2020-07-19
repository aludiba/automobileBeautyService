#import <Foundation/Foundation.h>
#import <ReactiveObjC/RACEXTKeyPathCoding.h>
@class RACSignal<__covariant ValueType>;
NS_ASSUME_NONNULL_BEGIN
#define RAC(TARGET, ...) \
    metamacro_if_eq(1, metamacro_argcount(__VA_ARGS__)) \
        (RAC_(TARGET, __VA_ARGS__, nil)) \
        (RAC_(TARGET, __VA_ARGS__))
#define RAC_(TARGET, KEYPATH, NILVALUE) \
    [[RACSubscriptingAssignmentTrampoline alloc] initWithTarget:(TARGET) nilValue:(NILVALUE)][@keypath(TARGET, KEYPATH)]
@interface RACSubscriptingAssignmentTrampoline : NSObject
- (nullable instancetype)initWithTarget:(nullable id)target nilValue:(nullable id)nilValue;
- (void)setObject:(RACSignal *)signal forKeyedSubscript:(NSString *)keyPath;
@end
NS_ASSUME_NONNULL_END
