#import "LCDCKStillCameraPreview.h"
#define kCameraViewTopBGHeight      70
@interface LCDCKStillCameraPreview()
{
    CGFloat     _LCDlastTwoFingerDistance;
}
@end
@implementation LCDCKStillCameraPreview
- (instancetype)initWithFrame:(CGRect)LCDframe
{
    if (self = [super initWithFrame:LCDframe]) {
        [self setUserInteractionEnabled:YES];
        [self LCDsetupGesture];
    }
    return self;
}
- (void)LCDsetupGesture
{
    UIPinchGestureRecognizer *LCDpinchGesture = [[UIPinchGestureRecognizer alloc] init];
    [self addGestureRecognizer:LCDpinchGesture];
    _LCDpinchGestureSignal = [LCDpinchGesture rac_gestureSignal];
    UITapGestureRecognizer *LCDtapGesture = [[UITapGestureRecognizer alloc] init];
    [self addGestureRecognizer:LCDtapGesture];
    _LCDtapGestureSignal = [LCDtapGesture rac_gestureSignal];
    UISwipeGestureRecognizer *LCDswipeRightGesture = [[UISwipeGestureRecognizer alloc] init];
    LCDswipeRightGesture.direction = UISwipeGestureRecognizerDirectionRight;
    [self addGestureRecognizer:LCDswipeRightGesture];
    _LCDswipeRightGestureSignal = [LCDswipeRightGesture rac_gestureSignal];
    UISwipeGestureRecognizer *LCDswipeGestureLeft = [[UISwipeGestureRecognizer alloc] init];
    LCDswipeGestureLeft.direction = UISwipeGestureRecognizerDirectionLeft;
    [self addGestureRecognizer:LCDswipeGestureLeft];
    _LCDswipeLeftGestureSignal = [LCDswipeGestureLeft rac_gestureSignal];
}
@end
