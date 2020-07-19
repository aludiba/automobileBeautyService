#import <UIKit/UIKit.h>
@interface BKQMCustomSlider : UIView
@property(nullable, nonatomic, strong) UIColor *BKminimumTrackTintColor;
@property(nullable, nonatomic, strong) UIColor *BKmaximumTrackTintColor;
@property(nullable, nonatomic, copy) void (^BKsliderValueChangeBlock)(CGFloat BKvalue);
@property(nonatomic, assign) CGFloat BKvalue;
- (void)BKsetThumbImage:(nullable UIImage *)BKimage;
- (void)BKsetValue:(CGFloat)BKvalue wantCallBack:(BOOL)BKcallback;
@end
