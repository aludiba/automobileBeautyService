#import <UIKit/UIKit.h>
@class RACCommand<__contravariant InputType, __covariant ValueType>;
NS_ASSUME_NONNULL_BEGIN
@interface UIRefreshControl (RACCommandSupport)
@property (nonatomic, strong, nullable) RACCommand<__kindof UIRefreshControl *, id> *rac_command;
@end
NS_ASSUME_NONNULL_END
