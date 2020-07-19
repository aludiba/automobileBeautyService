#import <UIKit/UIKit.h>
@class RACSignal<__covariant ValueType>;
@class RACUnit;
NS_ASSUME_NONNULL_BEGIN
@interface UITableViewCell (RACSignalSupport)
@property (nonatomic, strong, readonly) RACSignal<RACUnit *> *rac_prepareForReuseSignal;
@end
NS_ASSUME_NONNULL_END
