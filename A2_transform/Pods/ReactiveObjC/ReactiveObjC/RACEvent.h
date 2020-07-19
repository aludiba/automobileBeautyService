#import <Foundation/Foundation.h>
NS_ASSUME_NONNULL_BEGIN
typedef NS_ENUM(NSUInteger, RACEventType) {
    RACEventTypeCompleted,
    RACEventTypeError,
    RACEventTypeNext
};
@interface RACEvent<__covariant ValueType> : NSObject <NSCopying>
+ (RACEvent<ValueType> *)completedEvent;
+ (RACEvent<ValueType> *)eventWithError:(nullable NSError *)error;
+ (RACEvent<ValueType> *)eventWithValue:(nullable ValueType)value;
@property (nonatomic, assign, readonly) RACEventType eventType;
@property (nonatomic, getter = isFinished, assign, readonly) BOOL finished;
@property (nonatomic, strong, readonly, nullable) NSError *error;
@property (nonatomic, strong, readonly, nullable) ValueType value;
@end
NS_ASSUME_NONNULL_END
