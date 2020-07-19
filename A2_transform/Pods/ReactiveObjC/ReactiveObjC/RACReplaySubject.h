#import "RACSubject.h"
NS_ASSUME_NONNULL_BEGIN
extern const NSUInteger RACReplaySubjectUnlimitedCapacity;
@interface RACReplaySubject<ValueType> : RACSubject<ValueType>
+ (instancetype)replaySubjectWithCapacity:(NSUInteger)capacity;
@end
NS_ASSUME_NONNULL_END
