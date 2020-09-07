#import "LCDQMCameraFocusView.h"
#import "Constants.h"
#import "LCDQMCustomSlider.h"
#define kFocusViewMaxSize 100
#define kFocusViewMinSize 50
@interface LCDQMCameraFocusView()
@property (nonatomic, strong) LCDQMCustomSlider *LCDluminanceView;
@end
@implementation LCDQMCameraFocusView
+ (instancetype)LCDfocusView
{
    LCDQMCameraFocusView *LCDfocusView = [[LCDQMCameraFocusView alloc] initWithFrame:CGRectMake(0, 0, kFocusViewMaxSize, kFocusViewMaxSize)];
    LCDfocusView.hidden = YES;
    return LCDfocusView;
}
- (instancetype)initWithFrame:(CGRect)LCDframe
{
    if (self = [super initWithFrame:LCDframe]) {
        self.backgroundColor = [UIColor clearColor];
        [self LCDrender];
    }
    return self;
}
- (void)LCDrender
{
    UIGraphicsBeginImageContext(self.frame.size);
    CGContextRef LCDctx = UIGraphicsGetCurrentContext();
    CGFloat LCDlineWidth = 2;
    CGMutablePathRef LCDpath = CGPathCreateMutable();
    CGPathAddEllipseInRect(LCDpath, NULL, CGRectMake(LCDlineWidth, LCDlineWidth, kFocusViewMaxSize-2 * LCDlineWidth, kFocusViewMaxSize-2 * LCDlineWidth));
    CGFloat LCDlineLength = 10.0;
    CGPathMoveToPoint(LCDpath, NULL, LCDlineWidth, kFocusViewMaxSize/2);
    CGPathAddLineToPoint(LCDpath, NULL, LCDlineLength, kFocusViewMaxSize/2);
    CGPathMoveToPoint(LCDpath, NULL, kFocusViewMaxSize - LCDlineLength, kFocusViewMaxSize/2);
    CGPathAddLineToPoint(LCDpath, NULL, kFocusViewMaxSize - LCDlineWidth, kFocusViewMaxSize/2);
    CGPathMoveToPoint(LCDpath, NULL, kFocusViewMaxSize/2, LCDlineWidth);
    CGPathAddLineToPoint(LCDpath, NULL, kFocusViewMaxSize/2, LCDlineLength);
    CGPathMoveToPoint(LCDpath, NULL, kFocusViewMaxSize/2, kFocusViewMaxSize - LCDlineLength);
    CGPathAddLineToPoint(LCDpath, NULL, kFocusViewMaxSize/2, kFocusViewMaxSize - LCDlineWidth);
    [[UIColor whiteColor] setStroke];
    CGContextSetLineWidth(LCDctx, LCDlineWidth);
    CGContextAddPath(LCDctx, LCDpath);
    CGContextDrawPath(LCDctx, kCGPathStroke);
    CGPathRelease(LCDpath);
    UIImage *LCDimage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    self.layer.contents = (__bridge id _Nullable)(LCDimage.CGImage);
}
#pragma mark - Public
- (void)setLCDISO:(CGFloat)LCDISO
{
    _LCDISO = LCDISO;
    [self.LCDluminanceView LCDsetValue:LCDISO wantCallBack:NO];
}
- (void)LCDfoucusAtPoint:(CGPoint)LCDcenter
{
    [NSObject cancelPreviousPerformRequestsWithTarget:self];
    self.LCDluminanceView.hidden = NO;
    self.LCDluminanceView.alpha = 1.0f;
    self.hidden = NO;
    self.alpha = 1.0f;
    self.frame = CGRectMake(0, 0, kFocusViewMaxSize, kFocusViewMaxSize);
    self.center = LCDcenter;
    [UIView animateWithDuration:0.3f animations:^{
        self.frame = CGRectMake(0, 0, kFocusViewMinSize, kFocusViewMinSize);
        self.center = LCDcenter;
    } completion:^(BOOL finished) {
        [self performSelector:@selector(hideFoucusView) withObject:nil afterDelay:0.9f];
    }];
}
#pragma mark - Private
- (void)LCDhideFoucusView
{
    [UIView animateWithDuration:0.1f animations:^{
        self.LCDluminanceView.alpha = 0.1f;
        self.alpha = 0.1f;
    } completion:^(BOOL finished) {
        self.LCDluminanceView.hidden = YES;
        self.hidden = YES;
    }];
}
- (UIView *)LCDluminanceView
{
    if (!_LCDluminanceView) {
        weakSelf();
        _LCDluminanceView = [[LCDQMCustomSlider alloc] initWithFrame:CGRectMake(30, kScreenW*4.0f/3.0f-60, kScreenW-60, 30)];
        _LCDluminanceView.hidden = YES;
        [_LCDluminanceView LCDsetThumbImage:[UIImage imageNamed:@"qmkit_luminance_adjust"]];
        [self.superview addSubview:_LCDluminanceView];
        [_LCDluminanceView setLCDsliderValueChangeBlock:^(CGFloat LCDvalue) {
            wself.alpha = 0.8f;
            [NSObject cancelPreviousPerformRequestsWithTarget:wself];
            [wself performSelector:@selector(hideFoucusView) withObject:nil afterDelay:0.9f];
            if (wself.LCDluminanceChangeBlock) {
                wself.LCDluminanceChangeBlock(LCDvalue);
            }
        }];
    }
    return _LCDluminanceView;
}
@end
