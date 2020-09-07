#import <UIKit/UIKit.h>
@interface LCDQMCameraFocusView : UIView
@property(nonatomic, assign) CGFloat LCDISO;
@property(nullable, nonatomic, copy) void (^LCDluminanceChangeBlock)(CGFloat LCDvalue);
+ (instancetype _Nonnull)LCDfocusView;
- (void)LCDfoucusAtPoint:(CGPoint)LCDcenter;
@end
