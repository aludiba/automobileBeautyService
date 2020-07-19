#import <Foundation/Foundation.h>
#import <ReactiveObjC/RACEXTKeyPathCoding.h>
#import "RACmetamacros.h"
#define _RACObserve(TARGET, KEYPATH) \
({ \
	__weak id target_ = (TARGET); \
	[target_ rac_valuesForKeyPath:@keypath(TARGET, KEYPATH) observer:self]; \
})
#if __clang__ && (__clang_major__ >= 8)
#define RACObserve(TARGET, KEYPATH) _RACObserve(TARGET, KEYPATH)
#else
#define RACObserve(TARGET, KEYPATH) \
({ \
	_Pragma("clang diagnostic push") \
	_Pragma("clang diagnostic ignored \"-Wreceiver-is-weak\"") \
	_RACObserve(TARGET, KEYPATH) \
	_Pragma("clang diagnostic pop") \
})
#endif
@class RACDisposable;
@class RACTwoTuple<__covariant First, __covariant Second>;
@class RACSignal<__covariant ValueType>;
NS_ASSUME_NONNULL_BEGIN
@interface NSObject (RACPropertySubscribing)
#if OS_OBJECT_HAVE_OBJC_SUPPORT
- (RACSignal *)rac_valuesForKeyPath:(NSString *)keyPath observer:(__weak NSObject *)observer;
#else
- (RACSignal *)rac_valuesForKeyPath:(NSString *)keyPath observer:(NSObject *)observer;
#endif
#if OS_OBJECT_HAVE_OBJC_SUPPORT
- (RACSignal<RACTwoTuple<id, NSDictionary *> *> *)rac_valuesAndChangesForKeyPath:(NSString *)keyPath options:(NSKeyValueObservingOptions)options observer:(__weak NSObject *)observer;
#else
- (RACSignal<RACTwoTuple<id, NSDictionary *> *> *)rac_valuesAndChangesForKeyPath:(NSString *)keyPath options:(NSKeyValueObservingOptions)options observer:(NSObject *)observer;
#endif
@end
NS_ASSUME_NONNULL_END
#define RACAble(...) \
	metamacro_if_eq(1, metamacro_argcount(__VA_ARGS__)) \
		(_RACAbleObject(self, __VA_ARGS__)) \
		(_RACAbleObject(__VA_ARGS__))
#define _RACAbleObject(object, property) [object rac_signalForKeyPath:@keypath(object, property) observer:self]
#define RACAbleWithStart(...) \
	metamacro_if_eq(1, metamacro_argcount(__VA_ARGS__)) \
		(_RACAbleWithStartObject(self, __VA_ARGS__)) \
		(_RACAbleWithStartObject(__VA_ARGS__))
#define _RACAbleWithStartObject(object, property) [object rac_signalWithStartingValueForKeyPath:@keypath(object, property) observer:self]
