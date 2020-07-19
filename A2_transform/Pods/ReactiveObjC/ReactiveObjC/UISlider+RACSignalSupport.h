#import <UIKit/UIKit.h>
@class RACChannelTerminal<ValueType>;
NS_ASSUME_NONNULL_BEGIN
@interface UISlider (RACSignalSupport)
- (RACChannelTerminal<NSNumber *> *)rac_newValueChannelWithNilValue:(nullable NSNumber *)nilValue;
@end
NS_ASSUME_NONNULL_END
