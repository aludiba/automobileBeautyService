#import <UIKit/UIKit.h>
#import "UIView+Geometry.h"
@interface RTImagePickerTitleButton : UIButton
@property (nonatomic, strong) UILabel       *rt_titleLabel;
@property (nonatomic, strong) UIImageView   *rt_arrowView;
- (void)rt_setTitle:(NSString *)title arrowAppearance:(BOOL)appearance;
@end
