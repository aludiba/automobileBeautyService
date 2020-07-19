#import <UIKit/UIKit.h>
@class RACChannelTerminal<ValueType>;
NS_ASSUME_NONNULL_BEGIN
@interface UIDatePicker (RACSignalSupport)
- (RACChannelTerminal<NSDate *> *)rac_newDateChannelWithNilValue:(nullable NSDate *)nilValue;
@end
NS_ASSUME_NONNULL_END
