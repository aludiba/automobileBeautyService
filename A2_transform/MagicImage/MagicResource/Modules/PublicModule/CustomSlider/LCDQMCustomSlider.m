#import "LCDQMCustomSlider.h"
#import <ReactiveObjC.h>
#define kCustomSliderHeight     2
#define kCustomSliderMargin     0.01f
@interface LCDQMCustomSlider ()
{
    UIView      *_LCDleftLineView;
    UIView      *_LCDrightLineView;
    UIImageView *_LCDimageView;
}
@end
@implementation LCDQMCustomSlider
- (instancetype)initWithFrame:(CGRect)LCDframe
{
    if (self = [super initWithFrame:LCDframe]) {
        _LCDvalue = 0.0f;
        [self setBackgroundColor:[UIColor clearColor]];
        _LCDleftLineView = [[UIView alloc] initWithFrame:CGRectZero];
        _LCDleftLineView.backgroundColor = [UIColor whiteColor];
        [self addSubview:_LCDleftLineView];
        CGFloat LCDimageViewSize = LCDframe.size.height;
        _LCDrightLineView = [[UIView alloc] initWithFrame:CGRectMake(LCDimageViewSize+kCustomSliderMargin, LCDimageViewSize/2-kCustomSliderHeight/2, LCDframe.size.width-LCDimageViewSize, kCustomSliderHeight)];
        _LCDrightLineView.backgroundColor = [UIColor whiteColor];
        [self addSubview:_LCDrightLineView];
        _LCDimageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, LCDimageViewSize, LCDimageViewSize)];
        [self addSubview:_LCDimageView];
        _LCDimageView.userInteractionEnabled = YES;
        UIPanGestureRecognizer *LCDpanGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(LCDonPanGestureRecognizerTrick:)];
        [_LCDimageView addGestureRecognizer:LCDpanGesture];
    }
    return self;
}
- (void)LCDonPanGestureRecognizerTrick:(UIPanGestureRecognizer *)LCDgesture
{
    CGFloat LCDimageSize = self.bounds.size.height;
    CGFloat LCDx = MAX(MIN([LCDgesture locationInView:self].x, self.bounds.size.width-LCDimageSize/2), LCDimageSize/2);
    [self LCDrender:LCDx completeCallback:_LCDsliderValueChangeBlock];
}
- (void)LCDrender:(CGFloat)LCDx completeCallback:(void(^)(CGFloat value))LCDsliderValueChangeBlock
{
    CGFloat LCDimageSize = self.bounds.size.height;
    CGFloat LCDsliderAvailabelLength = self.bounds.size.width - LCDimageSize;
    CGFloat LCDvalue = (LCDx-LCDimageSize/2)/LCDsliderAvailabelLength;
    _LCDimageView.center = CGPointMake(LCDx, LCDimageSize/2);
    _LCDleftLineView.frame = CGRectMake(0, LCDimageSize/2-kCustomSliderHeight/2, _LCDimageView.frame.origin.x-kCustomSliderMargin, kCustomSliderHeight);
    _LCDrightLineView.frame = CGRectMake(_LCDimageView.frame.origin.x+LCDimageSize+kCustomSliderMargin, LCDimageSize/2-kCustomSliderHeight/2, self.bounds.size.width-(_LCDimageView.frame.origin.x+LCDimageSize+kCustomSliderMargin), kCustomSliderHeight);
    _LCDvalue = LCDvalue;
    if (LCDsliderValueChangeBlock) {
        LCDsliderValueChangeBlock(_LCDvalue);
    }
}
#pragma mark - PublicMethod
- (void)setLCDvalue:(CGFloat)LCDvalue
{
    _LCDvalue = LCDvalue;
    CGFloat LCDimageSize = self.bounds.size.height;
    CGFloat LCDsliderAvailabelLength = self.bounds.size.width-LCDimageSize;
    CGFloat LCDx = LCDvalue*LCDsliderAvailabelLength + LCDimageSize/2;
    [self LCDrender:LCDx completeCallback:_LCDsliderValueChangeBlock];
}
- (void)LCDsetThumbImage:(UIImage *)LCDimage
{
    _LCDimageView.image = LCDimage;
}
- (void)setLCDmaximumTrackTintColor:(UIColor *)LCDmaximumTrackTintColor
{
    _LCDrightLineView.backgroundColor = LCDmaximumTrackTintColor;
}
- (void)setLCDminimumTrackTintColor:(UIColor *)LCDminimumTrackTintColor
{
    _LCDleftLineView.backgroundColor = LCDminimumTrackTintColor;
}
- (void)LCDsetValue:(CGFloat)LCDvalue wantCallBack:(BOOL)LCDcallback
{
    CGFloat LCDimageSize = self.bounds.size.height;
    CGFloat LCDsliderAvailabelLength = self.bounds.size.width-LCDimageSize;
    CGFloat LCDx = LCDvalue*LCDsliderAvailabelLength + LCDimageSize/2;
    if (LCDcallback) {
        [self LCDrender:LCDx completeCallback:_LCDsliderValueChangeBlock];
    }else {
        [self LCDrender:LCDx completeCallback:nil];
    }
}
@end
