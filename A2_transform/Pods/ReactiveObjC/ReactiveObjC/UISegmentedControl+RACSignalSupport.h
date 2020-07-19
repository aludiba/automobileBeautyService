#import <UIKit/UIKit.h>
@class RACChannelTerminal<ValueType>;
NS_ASSUME_NONNULL_BEGIN
@interface UISegmentedControl (RACSignalSupport)
- (RACChannelTerminal<NSNumber *> *)rac_newSelectedSegmentIndexChannelWithNilValue:(nullable NSNumber *)nilValue;
@end
NS_ASSUME_NONNULL_END
