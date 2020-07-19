#import <Foundation/Foundation.h>
#import "RACAnnotations.h"
#import "RACStream.h"
@class RACDisposable;
@class RACScheduler;
@class RACSubject;
@class RACTuple;
@class RACTwoTuple<__covariant First, __covariant Second>;
@protocol RACSubscriber;
NS_ASSUME_NONNULL_BEGIN
@interface RACSignal<__covariant ValueType> : RACStream
+ (RACSignal<ValueType> *)createSignal:(RACDisposable * _Nullable (^)(id<RACSubscriber> subscriber))didSubscribe RAC_WARN_UNUSED_RESULT;
+ (RACSignal<ValueType> *)error:(nullable NSError *)error RAC_WARN_UNUSED_RESULT;
+ (RACSignal<ValueType> *)never RAC_WARN_UNUSED_RESULT;
+ (RACSignal<ValueType> *)startEagerlyWithScheduler:(RACScheduler *)scheduler block:(void (^)(id<RACSubscriber> subscriber))block;
+ (RACSignal<ValueType> *)startLazilyWithScheduler:(RACScheduler *)scheduler block:(void (^)(id<RACSubscriber> subscriber))block RAC_WARN_UNUSED_RESULT;
@end
@interface RACSignal<__covariant ValueType> (RACStream)
+ (RACSignal<ValueType> *)return:(nullable ValueType)value RAC_WARN_UNUSED_RESULT;
+ (RACSignal<ValueType> *)empty RAC_WARN_UNUSED_RESULT;
typedef RACSignal * _Nullable (^RACSignalBindBlock)(ValueType _Nullable value, BOOL *stop);
- (RACSignal *)bind:(RACSignalBindBlock (^)(void))block RAC_WARN_UNUSED_RESULT;
- (RACSignal *)concat:(RACSignal *)signal RAC_WARN_UNUSED_RESULT;
- (RACSignal<RACTwoTuple<ValueType, id> *> *)zipWith:(RACSignal *)signal RAC_WARN_UNUSED_RESULT;
@end
@interface RACSignal<__covariant ValueType> (RACStreamOperations)
- (RACSignal *)flattenMap:(__kindof RACSignal * _Nullable (^)(ValueType _Nullable value))block RAC_WARN_UNUSED_RESULT;
- (RACSignal *)flatten RAC_WARN_UNUSED_RESULT;
- (RACSignal *)map:(id _Nullable (^)(ValueType _Nullable value))block RAC_WARN_UNUSED_RESULT;
- (RACSignal *)mapReplace:(nullable id)object RAC_WARN_UNUSED_RESULT;
- (RACSignal<ValueType> *)filter:(BOOL (^)(ValueType _Nullable value))block RAC_WARN_UNUSED_RESULT;
- (RACSignal<ValueType> *)ignore:(nullable ValueType)value RAC_WARN_UNUSED_RESULT;
- (RACSignal *)reduceEach:(RACReduceBlock)reduceBlock RAC_WARN_UNUSED_RESULT;
- (RACSignal<ValueType> *)startWith:(nullable ValueType)value RAC_WARN_UNUSED_RESULT;
- (RACSignal<ValueType> *)skip:(NSUInteger)skipCount RAC_WARN_UNUSED_RESULT;
- (RACSignal<ValueType> *)take:(NSUInteger)count RAC_WARN_UNUSED_RESULT;
+ (RACSignal<RACTuple *> *)zip:(id<NSFastEnumeration>)signals RAC_WARN_UNUSED_RESULT;
+ (RACSignal<ValueType> *)zip:(id<NSFastEnumeration>)signals reduce:(RACGenericReduceBlock)reduceBlock RAC_WARN_UNUSED_RESULT;
+ (RACSignal<ValueType> *)concat:(id<NSFastEnumeration>)signals RAC_WARN_UNUSED_RESULT;
- (RACSignal *)scanWithStart:(nullable id)startingValue reduce:(id _Nullable (^)(id _Nullable running, ValueType _Nullable next))reduceBlock RAC_WARN_UNUSED_RESULT;
- (RACSignal *)scanWithStart:(nullable id)startingValue reduceWithIndex:(id _Nullable (^)(id _Nullable running, ValueType _Nullable next, NSUInteger index))reduceBlock RAC_WARN_UNUSED_RESULT;
- (RACSignal *)combinePreviousWithStart:(nullable ValueType)start reduce:(id _Nullable (^)(ValueType _Nullable previous, ValueType _Nullable current))reduceBlock RAC_WARN_UNUSED_RESULT;
- (RACSignal<ValueType> *)takeUntilBlock:(BOOL (^)(ValueType _Nullable x))predicate RAC_WARN_UNUSED_RESULT;
- (RACSignal<ValueType> *)takeWhileBlock:(BOOL (^)(ValueType _Nullable x))predicate RAC_WARN_UNUSED_RESULT;
- (RACSignal<ValueType> *)skipUntilBlock:(BOOL (^)(ValueType _Nullable x))predicate RAC_WARN_UNUSED_RESULT;
- (RACSignal<ValueType> *)skipWhileBlock:(BOOL (^)(ValueType _Nullable x))predicate RAC_WARN_UNUSED_RESULT;
- (RACSignal<ValueType> *)distinctUntilChanged RAC_WARN_UNUSED_RESULT;
@end
@interface RACSignal<__covariant ValueType> (Subscription)
- (RACDisposable *)subscribe:(id<RACSubscriber>)subscriber;
- (RACDisposable *)subscribeNext:(void (^)(ValueType _Nullable x))nextBlock;
- (RACDisposable *)subscribeNext:(void (^)(ValueType _Nullable x))nextBlock completed:(void (^)(void))completedBlock;
- (RACDisposable *)subscribeNext:(void (^)(ValueType _Nullable x))nextBlock error:(void (^)(NSError * _Nullable error))errorBlock completed:(void (^)(void))completedBlock;
- (RACDisposable *)subscribeError:(void (^)(NSError * _Nullable error))errorBlock;
- (RACDisposable *)subscribeCompleted:(void (^)(void))completedBlock;
- (RACDisposable *)subscribeNext:(void (^)(ValueType _Nullable x))nextBlock error:(void (^)(NSError * _Nullable error))errorBlock;
- (RACDisposable *)subscribeError:(void (^)(NSError * _Nullable error))errorBlock completed:(void (^)(void))completedBlock;
@end
@interface RACSignal<__covariant ValueType> (Debugging)
- (RACSignal<ValueType> *)logAll RAC_WARN_UNUSED_RESULT;
- (RACSignal<ValueType> *)logNext RAC_WARN_UNUSED_RESULT;
- (RACSignal<ValueType> *)logError RAC_WARN_UNUSED_RESULT;
- (RACSignal<ValueType> *)logCompleted RAC_WARN_UNUSED_RESULT;
@end
@interface RACSignal<__covariant ValueType> (Testing)
- (nullable ValueType)asynchronousFirstOrDefault:(nullable ValueType)defaultValue success:(nullable BOOL *)success error:(NSError * _Nullable * _Nullable)error timeout:(NSTimeInterval)timeout;
- (nullable ValueType)asynchronousFirstOrDefault:(nullable ValueType)defaultValue success:(nullable BOOL *)success error:(NSError * _Nullable * _Nullable)error;
- (BOOL)asynchronouslyWaitUntilCompleted:(NSError * _Nullable * _Nullable)error timeout:(NSTimeInterval)timeout;
- (BOOL)asynchronouslyWaitUntilCompleted:(NSError * _Nullable * _Nullable)error;
@end
NS_ASSUME_NONNULL_END
