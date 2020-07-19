#import <UIKit/UIKit.h>
@interface BKQMCameraFocusView : UIView
@property(nonatomic, assign) CGFloat BKISO;
@property(nullable, nonatomic, copy) void (^BKluminanceChangeBlock)(CGFloat BKvalue);
+ (instancetype _Nonnull)BKfocusView;
- (void)BKfoucusAtPoint:(CGPoint)BKcenter;
@end
