#import <UIKit/UIKit.h>
@interface LCDQMCustomSlider : UIView
@property(nullable, nonatomic, strong) UIColor *LCDminimumTrackTintColor;
@property(nullable, nonatomic, strong) UIColor *LCDmaximumTrackTintColor;
@property(nullable, nonatomic, copy) void (^LCDsliderValueChangeBlock)(CGFloat LCDvalue);
@property(nonatomic, assign) CGFloat LCDvalue;
- (void)LCDsetThumbImage:(nullable UIImage *)LCDimage;
- (void)LCDsetValue:(CGFloat)LCDvalue wantCallBack:(BOOL)LCDcallback;
@end
