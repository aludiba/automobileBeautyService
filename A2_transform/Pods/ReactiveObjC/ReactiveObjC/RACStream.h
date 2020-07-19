#import <Foundation/Foundation.h>
@class RACStream;
NS_ASSUME_NONNULL_BEGIN
@interface RACStream<__covariant ValueType> : NSObject
_Pragma("clang diagnostic push") \
_Pragma("clang diagnostic ignored \"-Wstrict-prototypes\"") \
typedef id _Nonnull (^RACReduceBlock)();
typedef ValueType _Nonnull (^RACGenericReduceBlock)();
_Pragma("clang diagnostic pop")
+ (__kindof RACStream<ValueType> *)empty;
+ (__kindof RACStream<ValueType> *)return:(nullable ValueType)value;
typedef RACStream * _Nullable (^RACStreamBindBlock)(ValueType _Nullable value, BOOL *stop);
- (__kindof RACStream *)bind:(RACStreamBindBlock (^)(void))block;
- (__kindof RACStream *)concat:(RACStream *)stream;
- (__kindof RACStream *)zipWith:(RACStream *)stream;
@end
@interface RACStream ()
@property (copy) NSString *name;
- (instancetype)setNameWithFormat:(NSString *)format, ... NS_FORMAT_FUNCTION(1, 2);
@end
@interface RACStream<__covariant ValueType> (Operations)
- (__kindof RACStream *)flattenMap:(__kindof RACStream * _Nullable (^)(ValueType _Nullable value))block;
- (__kindof RACStream *)flatten;
- (__kindof RACStream *)map:(id _Nullable (^)(ValueType _Nullable value))block;
- (__kindof RACStream *)mapReplace:(nullable id)object;
- (__kindof RACStream<ValueType> *)filter:(BOOL (^)(ValueType _Nullable value))block;
- (__kindof RACStream<ValueType> *)ignore:(nullable ValueType)value;
- (__kindof RACStream *)reduceEach:(RACReduceBlock)reduceBlock;
- (__kindof RACStream<ValueType> *)startWith:(nullable ValueType)value;
- (__kindof RACStream<ValueType> *)skip:(NSUInteger)skipCount;
- (__kindof RACStream<ValueType> *)take:(NSUInteger)count;
+ (__kindof RACStream<ValueType> *)zip:(id<NSFastEnumeration>)streams;
+ (__kindof RACStream<ValueType> *)zip:(id<NSFastEnumeration>)streams reduce:(RACGenericReduceBlock)reduceBlock;
+ (__kindof RACStream<ValueType> *)concat:(id<NSFastEnumeration>)streams;
- (__kindof RACStream *)scanWithStart:(nullable id)startingValue reduce:(id _Nullable (^)(id _Nullable running, ValueType _Nullable next))reduceBlock;
- (__kindof RACStream *)scanWithStart:(nullable id)startingValue reduceWithIndex:(id _Nullable (^)(id _Nullable running, ValueType _Nullable next, NSUInteger index))reduceBlock;
- (__kindof RACStream *)combinePreviousWithStart:(nullable ValueType)start reduce:(id _Nullable (^)(ValueType _Nullable previous, ValueType _Nullable current))reduceBlock;
- (__kindof RACStream<ValueType> *)takeUntilBlock:(BOOL (^)(ValueType _Nullable x))predicate;
- (__kindof RACStream<ValueType> *)takeWhileBlock:(BOOL (^)(ValueType _Nullable x))predicate;
- (__kindof RACStream<ValueType> *)skipUntilBlock:(BOOL (^)(ValueType _Nullable x))predicate;
- (__kindof RACStream<ValueType> *)skipWhileBlock:(BOOL (^)(ValueType _Nullable x))predicate;
- (__kindof RACStream<ValueType> *)distinctUntilChanged;
@end
NS_ASSUME_NONNULL_END
