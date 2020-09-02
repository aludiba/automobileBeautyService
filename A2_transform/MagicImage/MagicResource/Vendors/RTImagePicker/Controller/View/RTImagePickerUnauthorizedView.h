#import <UIKit/UIKit.h>
@interface RTImagePickerUnauthorizedView : UIView
@property (nonatomic, strong) UIButton *permissionButton;
@property (nonatomic, strong) UILabel  *permissionTitleLabel;
@property (nonatomic, copy) void (^onPermissionButton)(void);
@end
