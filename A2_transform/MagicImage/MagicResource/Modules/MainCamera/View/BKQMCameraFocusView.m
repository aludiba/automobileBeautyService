#import "BKQMCameraFocusView.h"
#import "Constants.h"
#import "BKQMCustomSlider.h"
#define kFocusViewMaxSize 100
#define kFocusViewMinSize 50
@interface BKQMCameraFocusView()
@property (nonatomic, strong) BKQMCustomSlider *BKluminanceView;
@end
@implementation BKQMCameraFocusView
+ (instancetype)BKfocusView
{
    BKQMCameraFocusView *BKfocusView = [[BKQMCameraFocusView alloc] initWithFrame:CGRectMake(0, 0, kFocusViewMaxSize, kFocusViewMaxSize)];
    BKfocusView.hidden = YES;
    return BKfocusView;
}
- (instancetype)initWithFrame:(CGRect)BKframe
{
    if (self = [super initWithFrame:BKframe]) {
        self.backgroundColor = [UIColor clearColor];
        [self BKrender];
    }
    return self;
}
- (void)BKrender
{
    UIGraphicsBeginImageContext(self.frame.size);
    CGContextRef BKctx = UIGraphicsGetCurrentContext();
    CGFloat BKlineWidth = 2;
    CGMutablePathRef BKpath = CGPathCreateMutable();
    CGPathAddEllipseInRect(BKpath, NULL, CGRectMake(BKlineWidth, BKlineWidth, kFocusViewMaxSize-2 * BKlineWidth, kFocusViewMaxSize-2 * BKlineWidth));
    CGFloat BKlineLength = 10.0;
    CGPathMoveToPoint(BKpath, NULL, BKlineWidth, kFocusViewMaxSize/2);
    CGPathAddLineToPoint(BKpath, NULL, BKlineLength, kFocusViewMaxSize/2);
    CGPathMoveToPoint(BKpath, NULL, kFocusViewMaxSize - BKlineLength, kFocusViewMaxSize/2);
    CGPathAddLineToPoint(BKpath, NULL, kFocusViewMaxSize - BKlineWidth, kFocusViewMaxSize/2);
    CGPathMoveToPoint(BKpath, NULL, kFocusViewMaxSize/2, BKlineWidth);
    CGPathAddLineToPoint(BKpath, NULL, kFocusViewMaxSize/2, BKlineLength);
    CGPathMoveToPoint(BKpath, NULL, kFocusViewMaxSize/2, kFocusViewMaxSize - BKlineLength);
    CGPathAddLineToPoint(BKpath, NULL, kFocusViewMaxSize/2, kFocusViewMaxSize - BKlineWidth);
    [[UIColor whiteColor] setStroke];
    CGContextSetLineWidth(BKctx, BKlineWidth);
    CGContextAddPath(BKctx, BKpath);
    CGContextDrawPath(BKctx, kCGPathStroke);
    CGPathRelease(BKpath);
    UIImage *BKimage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    self.layer.contents = (__bridge id _Nullable)(BKimage.CGImage);
}
#pragma mark - Public
- (void)setBKISO:(CGFloat)BKISO
{
    _BKISO = BKISO;
    [self.BKluminanceView BKsetValue:BKISO wantCallBack:NO];
}
- (void)BKfoucusAtPoint:(CGPoint)BKcenter
{
    [NSObject cancelPreviousPerformRequestsWithTarget:self];
    self.BKluminanceView.hidden = NO;
    self.BKluminanceView.alpha = 1.0f;
    self.hidden = NO;
    self.alpha = 1.0f;
    self.frame = CGRectMake(0, 0, kFocusViewMaxSize, kFocusViewMaxSize);
    self.center = BKcenter;
    [UIView animateWithDuration:0.3f animations:^{
        self.frame = CGRectMake(0, 0, kFocusViewMinSize, kFocusViewMinSize);
        self.center = BKcenter;
    } completion:^(BOOL finished) {
        [self performSelector:@selector(hideFoucusView) withObject:nil afterDelay:0.9f];
    }];
}
#pragma mark - Private
- (void)BKhideFoucusView
{
    [UIView animateWithDuration:0.1f animations:^{
        self.BKluminanceView.alpha = 0.1f;
        self.alpha = 0.1f;
    } completion:^(BOOL finished) {
        self.BKluminanceView.hidden = YES;
        self.hidden = YES;
    }];
}
- (UIView *)BKluminanceView
{
    if (!_BKluminanceView) {
        weakSelf();
        _BKluminanceView = [[BKQMCustomSlider alloc] initWithFrame:CGRectMake(30, kScreenW*4.0f/3.0f-60, kScreenW-60, 30)];
        _BKluminanceView.hidden = YES;
        [_BKluminanceView BKsetThumbImage:[UIImage imageNamed:@"qmkit_luminance_adjust"]];
        [self.superview addSubview:_BKluminanceView];
        [_BKluminanceView setBKsliderValueChangeBlock:^(CGFloat BKvalue) {
            wself.alpha = 0.8f;
            [NSObject cancelPreviousPerformRequestsWithTarget:wself];
            [wself performSelector:@selector(hideFoucusView) withObject:nil afterDelay:0.9f];
            if (wself.BKluminanceChangeBlock) {
                wself.BKluminanceChangeBlock(BKvalue);
            }
        }];
    }
    return _BKluminanceView;
}
@end
