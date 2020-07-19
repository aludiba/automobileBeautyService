#import "RACSubject.h"
NS_ASSUME_NONNULL_BEGIN
@interface RACGroupedSignal : RACSubject
@property (nonatomic, readonly, copy) id<NSCopying> key;
+ (instancetype)signalWithKey:(id<NSCopying>)key;
@end
NS_ASSUME_NONNULL_END
