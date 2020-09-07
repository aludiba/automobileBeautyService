#import <UIKit/UIKit.h>
@interface LCDQMDragView : UIView
@property (nonatomic, strong, readonly) UIImageView *LCDimageView;
- (instancetype)initWithFrame:(CGRect)frame image:(UIImage *)image;
- (instancetype)LCDcopyWithScaleFactor:(CGFloat)factor relativedView:(UIView *)imageView;
- (void)LCDhideToolBar;
- (void)LCDshowToolBar;
- (BOOL)LCDisToolBarHidden;
@end
