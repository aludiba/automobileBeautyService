#import "BKCKStillCameraPreview.h"
#define kCameraViewTopBGHeight      70
@interface BKCKStillCameraPreview()
{
    CGFloat     _BKlastTwoFingerDistance;
}
@end
@implementation BKCKStillCameraPreview
- (instancetype)initWithFrame:(CGRect)BKframe
{
    if (self = [super initWithFrame:BKframe]) {
        [self setUserInteractionEnabled:YES];
        [self BKsetupGesture];
    }
    return self;
}
- (void)BKsetupGesture
{
    UIPinchGestureRecognizer *BKpinchGesture = [[UIPinchGestureRecognizer alloc] init];
    [self addGestureRecognizer:BKpinchGesture];
    _BKpinchGestureSignal = [BKpinchGesture rac_gestureSignal];
    UITapGestureRecognizer *BKtapGesture = [[UITapGestureRecognizer alloc] init];
    [self addGestureRecognizer:BKtapGesture];
    _BKtapGestureSignal = [BKtapGesture rac_gestureSignal];
    UISwipeGestureRecognizer *BKswipeRightGesture = [[UISwipeGestureRecognizer alloc] init];
    BKswipeRightGesture.direction = UISwipeGestureRecognizerDirectionRight;
    [self addGestureRecognizer:BKswipeRightGesture];
    _BKswipeRightGestureSignal = [BKswipeRightGesture rac_gestureSignal];
    UISwipeGestureRecognizer *BKswipeGestureLeft = [[UISwipeGestureRecognizer alloc] init];
    BKswipeGestureLeft.direction = UISwipeGestureRecognizerDirectionLeft;
    [self addGestureRecognizer:BKswipeGestureLeft];
    _BKswipeLeftGestureSignal = [BKswipeGestureLeft rac_gestureSignal];
}
@end
