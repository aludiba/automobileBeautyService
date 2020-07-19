#import <Foundation/Foundation.h>
@class RACSignal<__covariant ValueType>;
NS_ASSUME_NONNULL_BEGIN
@interface NSNotificationCenter (RACSupport)
- (RACSignal<NSNotification *> *)rac_addObserverForName:(nullable NSString *)notificationName object:(nullable id)object;
@end
NS_ASSUME_NONNULL_END
