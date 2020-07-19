#import "BKQMCustomSlider.h"
#import <ReactiveObjC.h>
#define kCustomSliderHeight     2
#define kCustomSliderMargin     0.01f
@interface BKQMCustomSlider ()
{
    UIView      *_BKleftLineView;
    UIView      *_BKrightLineView;
    UIImageView *_BKimageView;
}
@end
@implementation BKQMCustomSlider
- (instancetype)initWithFrame:(CGRect)BKframe
{
    if (self = [super initWithFrame:BKframe]) {
        _BKvalue = 0.0f;
        [self setBackgroundColor:[UIColor clearColor]];
        _BKleftLineView = [[UIView alloc] initWithFrame:CGRectZero];
        _BKleftLineView.backgroundColor = [UIColor whiteColor];
        [self addSubview:_BKleftLineView];
        CGFloat BKimageViewSize = BKframe.size.height;
        _BKrightLineView = [[UIView alloc] initWithFrame:CGRectMake(BKimageViewSize+kCustomSliderMargin, BKimageViewSize/2-kCustomSliderHeight/2, BKframe.size.width-BKimageViewSize, kCustomSliderHeight)];
        _BKrightLineView.backgroundColor = [UIColor whiteColor];
        [self addSubview:_BKrightLineView];
        _BKimageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, BKimageViewSize, BKimageViewSize)];
        [self addSubview:_BKimageView];
        _BKimageView.userInteractionEnabled = YES;
        UIPanGestureRecognizer *BKpanGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(BKonPanGestureRecognizerTrick:)];
        [_BKimageView addGestureRecognizer:BKpanGesture];
    }
    return self;
}
- (void)BKonPanGestureRecognizerTrick:(UIPanGestureRecognizer *)BKgesture
{
    CGFloat BKimageSize = self.bounds.size.height;
    CGFloat BKx = MAX(MIN([BKgesture locationInView:self].x, self.bounds.size.width-BKimageSize/2), BKimageSize/2);
    [self BKrender:BKx completeCallback:_BKsliderValueChangeBlock];
}
- (void)BKrender:(CGFloat)BKx completeCallback:(void(^)(CGFloat value))BKsliderValueChangeBlock
{
    CGFloat BKimageSize = self.bounds.size.height;
    CGFloat BKsliderAvailabelLength = self.bounds.size.width - BKimageSize;
    CGFloat BKvalue = (BKx-BKimageSize/2)/BKsliderAvailabelLength;
    _BKimageView.center = CGPointMake(BKx, BKimageSize/2);
    _BKleftLineView.frame = CGRectMake(0, BKimageSize/2-kCustomSliderHeight/2, _BKimageView.frame.origin.x-kCustomSliderMargin, kCustomSliderHeight);
    _BKrightLineView.frame = CGRectMake(_BKimageView.frame.origin.x+BKimageSize+kCustomSliderMargin, BKimageSize/2-kCustomSliderHeight/2, self.bounds.size.width-(_BKimageView.frame.origin.x+BKimageSize+kCustomSliderMargin), kCustomSliderHeight);
    _BKvalue = BKvalue;
    if (BKsliderValueChangeBlock) {
        BKsliderValueChangeBlock(_BKvalue);
    }
}
#pragma mark - PublicMethod
- (void)setBKvalue:(CGFloat)BKvalue
{
    _BKvalue = BKvalue;
    CGFloat BKimageSize = self.bounds.size.height;
    CGFloat BKsliderAvailabelLength = self.bounds.size.width-BKimageSize;
    CGFloat BKx = BKvalue*BKsliderAvailabelLength + BKimageSize/2;
    [self BKrender:BKx completeCallback:_BKsliderValueChangeBlock];
}
- (void)BKsetThumbImage:(UIImage *)BKimage
{
    _BKimageView.image = BKimage;
}
- (void)setBKmaximumTrackTintColor:(UIColor *)BKmaximumTrackTintColor
{
    _BKrightLineView.backgroundColor = BKmaximumTrackTintColor;
}
- (void)setBKminimumTrackTintColor:(UIColor *)BKminimumTrackTintColor
{
    _BKleftLineView.backgroundColor = BKminimumTrackTintColor;
}
- (void)BKsetValue:(CGFloat)BKvalue wantCallBack:(BOOL)BKcallback
{
    CGFloat BKimageSize = self.bounds.size.height;
    CGFloat BKsliderAvailabelLength = self.bounds.size.width-BKimageSize;
    CGFloat BKx = BKvalue*BKsliderAvailabelLength + BKimageSize/2;
    if (BKcallback) {
        [self BKrender:BKx completeCallback:_BKsliderValueChangeBlock];
    }else {
        [self BKrender:BKx completeCallback:nil];
    }
}
@end
