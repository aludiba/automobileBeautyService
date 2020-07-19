#import "RACChannel.h"
#import <ReactiveObjC/RACEXTKeyPathCoding.h>
#import "RACmetamacros.h"
#define RACChannelTo(TARGET, ...) \
    metamacro_if_eq(1, metamacro_argcount(__VA_ARGS__)) \
        (RACChannelTo_(TARGET, __VA_ARGS__, nil)) \
        (RACChannelTo_(TARGET, __VA_ARGS__))
#define RACChannelTo_(TARGET, KEYPATH, NILVALUE) \
    [[RACKVOChannel alloc] initWithTarget:(TARGET) keyPath:@keypath(TARGET, KEYPATH) nilValue:(NILVALUE)][@keypath(RACKVOChannel.new, followingTerminal)]
NS_ASSUME_NONNULL_BEGIN
@interface RACKVOChannel<ValueType> : RACChannel<ValueType>
#if OS_OBJECT_HAVE_OBJC_SUPPORT
- (instancetype)initWithTarget:(__weak NSObject *)target keyPath:(NSString *)keyPath nilValue:(nullable ValueType)nilValue;
#else
- (instancetype)initWithTarget:(NSObject *)target keyPath:(NSString *)keyPath nilValue:(nullable ValueType)nilValue;
#endif
- (instancetype)init __attribute__((unavailable("Use -initWithTarget:keyPath:nilValue: instead")));
@end
@interface RACKVOChannel (RACChannelTo)
- (RACChannelTerminal *)objectForKeyedSubscript:(NSString *)key;
- (void)setObject:(RACChannelTerminal *)otherTerminal forKeyedSubscript:(NSString *)key;
@end
NS_ASSUME_NONNULL_END
