#import <UIKit/UIKit.h>
@class RACCommand<__contravariant InputType, __covariant ValueType>;
NS_ASSUME_NONNULL_BEGIN
@interface UIBarButtonItem (RACCommandSupport)
@property (nonatomic, strong, nullable) RACCommand<__kindof UIBarButtonItem *, id> *rac_command;
@end
NS_ASSUME_NONNULL_END
