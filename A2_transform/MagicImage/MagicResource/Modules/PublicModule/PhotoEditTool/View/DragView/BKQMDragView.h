#import <UIKit/UIKit.h>
@interface BKQMDragView : UIView
@property (nonatomic, strong, readonly) UIImageView *BKimageView;
- (instancetype)initWithFrame:(CGRect)frame image:(UIImage *)image;
- (instancetype)BKcopyWithScaleFactor:(CGFloat)factor relativedView:(UIView *)imageView;
- (void)BKhideToolBar;
- (void)BKshowToolBar;
- (BOOL)BKisToolBarHidden;
@end
