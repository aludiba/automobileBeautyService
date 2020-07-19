#import <Foundation/Foundation.h>
#import "RACStream.h"
@class RACTuple;
@class RACScheduler;
@class RACSignal<__covariant ValueType>;
NS_ASSUME_NONNULL_BEGIN
@interface RACSequence<__covariant ValueType> : RACStream <NSCoding, NSCopying, NSFastEnumeration>
@property (nonatomic, strong, readonly, nullable) ValueType head;
@property (nonatomic, strong, readonly, nullable) RACSequence<ValueType> *tail;
@property (nonatomic, copy, readonly) NSArray<ValueType> *array;
@property (nonatomic, copy, readonly) NSEnumerator<ValueType> *objectEnumerator;
@property (nonatomic, copy, readonly) RACSequence<ValueType> *eagerSequence;
@property (nonatomic, copy, readonly) RACSequence<ValueType> *lazySequence;
- (RACSignal<ValueType> *)signal;
- (RACSignal<ValueType> *)signalWithScheduler:(RACScheduler *)scheduler;
- (id)foldLeftWithStart:(nullable id)start reduce:(id _Nullable (^)(id _Nullable accumulator, ValueType _Nullable value))reduce;
- (id)foldRightWithStart:(nullable id)start reduce:(id _Nullable (^)(id _Nullable first, RACSequence *rest))reduce;
- (BOOL)any:(BOOL (^)(ValueType _Nullable value))block;
- (BOOL)all:(BOOL (^)(ValueType _Nullable value))block;
- (nullable ValueType)objectPassingTest:(BOOL (^)(ValueType _Nullable value))block;
+ (RACSequence<ValueType> *)sequenceWithHeadBlock:(ValueType _Nullable (^)(void))headBlock tailBlock:(nullable RACSequence<ValueType> *(^)(void))tailBlock;
@end
@interface RACSequence<__covariant ValueType> (RACStream)
+ (RACSequence<ValueType> *)return:(nullable ValueType)value;
+ (RACSequence<ValueType> *)empty;
typedef RACSequence * _Nullable (^RACSequenceBindBlock)(ValueType _Nullable value, BOOL *stop);
- (RACSequence *)bind:(RACSequenceBindBlock (^)(void))block;
- (RACSequence *)concat:(RACSequence *)sequence;
- (RACSequence<RACTuple *> *)zipWith:(RACSequence *)sequence;
@end
@interface RACSequence<__covariant ValueType> (RACStreamOperations)
- (RACSequence *)flattenMap:(__kindof RACSequence * _Nullable (^)(ValueType _Nullable value))block;
- (RACSequence *)flatten;
- (RACSequence *)map:(id _Nullable (^)(ValueType _Nullable value))block;
- (RACSequence *)mapReplace:(nullable id)object;
- (RACSequence<ValueType> *)filter:(BOOL (^)(id _Nullable value))block;
- (RACSequence *)ignore:(nullable ValueType)value;
- (RACSequence *)reduceEach:(RACReduceBlock)reduceBlock;
- (RACSequence<ValueType> *)startWith:(nullable ValueType)value;
- (RACSequence<ValueType> *)skip:(NSUInteger)skipCount;
- (RACSequence<ValueType> *)take:(NSUInteger)count;
+ (RACSequence<RACTuple *> *)zip:(id<NSFastEnumeration>)sequence;
+ (RACSequence<ValueType> *)zip:(id<NSFastEnumeration>)sequences reduce:(RACReduceBlock)reduceBlock;
+ (RACSequence<ValueType> *)concat:(id<NSFastEnumeration>)sequences;
- (RACSequence *)scanWithStart:(nullable id)startingValue reduce:(id _Nullable (^)(id _Nullable running, ValueType _Nullable next))reduceBlock;
- (RACSequence *)scanWithStart:(nullable id)startingValue reduceWithIndex:(id _Nullable (^)(id _Nullable running, ValueType _Nullable next, NSUInteger index))reduceBlock;
- (RACSequence *)combinePreviousWithStart:(nullable ValueType)start reduce:(id _Nullable (^)(ValueType _Nullable previous, ValueType _Nullable current))reduceBlock;
- (RACSequence<ValueType> *)takeUntilBlock:(BOOL (^)(ValueType _Nullable x))predicate;
- (RACSequence<ValueType> *)takeWhileBlock:(BOOL (^)(ValueType _Nullable x))predicate;
- (RACSequence<ValueType> *)skipUntilBlock:(BOOL (^)(ValueType _Nullable x))predicate;
- (RACSequence<ValueType> *)skipWhileBlock:(BOOL (^)(ValueType _Nullable x))predicate;
- (RACSequence<ValueType> *)distinctUntilChanged;
@end
NS_ASSUME_NONNULL_END
