#import "LCDQMDragView.h"
#import <GLKit/GLKit.h>
#define kDragCloseBtnTag        1
#define kDragFlipBtnTag         2
#define kDragScaleBtnTag        3
#define kDragRotationBtnTag     4
#define kDefaultDragViewWidth   80
#define kDefaultDragIconSize    30
@interface LCDQMDragView ()
@property (nonatomic, strong) UIImage *LCDimage;
@property (nonatomic, assign) float LCDratio;
@property (nonatomic, assign) BOOL LCDcurrentTooBarHidden;
@property (nonatomic, strong) UIView *LCDborderView;
@property (nonatomic, assign) CGPoint LCDimageOffset;
@property (nonatomic, strong) UIButton *LCDcloseBtn;
@property (nonatomic, strong) UIButton *LCDflipBtn;
@property (nonatomic, strong) UIButton *LCDrotationBtn;
@property (nonatomic, strong) UIButton *LCDscaleBtn;
@end
@implementation LCDQMDragView
- (instancetype)initWithFrame:(CGRect)LCDframe image:(UIImage *)LCDimage
{
    size_t LCDwidth = CGImageGetWidth(LCDimage.CGImage);
    size_t LCDheight = CGImageGetHeight(LCDimage.CGImage);
    _LCDratio = ((float)LCDwidth)/((float)LCDheight);
    LCDwidth = kDefaultDragViewWidth;
    LCDheight = LCDwidth / _LCDratio;
    if (self = [self initWithFrame:LCDframe]) {
        _LCDimage = LCDimage;
        [self LCDsetupUIWithSize:CGSizeMake(LCDwidth, LCDheight)];
        [self setBackgroundColor:[UIColor clearColor]];
        [self setUserInteractionEnabled:YES];
    }
    return self;
}
- (void)LCDsetupUIWithSize:(CGSize)LCDsize
{
    _LCDborderView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, LCDsize.width, LCDsize.height)];
    _LCDborderView.center = CGPointMake(self.frame.size.width/2, self.frame.size.height/2);
    _LCDborderView.layer.borderColor = [UIColor whiteColor].CGColor;
    _LCDborderView.userInteractionEnabled = NO;
    [self addSubview:_LCDborderView];
    _LCDborderView.layer.borderColor = [UIColor whiteColor].CGColor;
    _LCDborderView.layer.borderWidth = 1.0f;
    _LCDimageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, LCDsize.width, LCDsize.height)];
    _LCDimageView.center = CGPointMake(self.frame.size.width/2, self.frame.size.height/2);
    _LCDimageView.userInteractionEnabled = YES;
    UIPanGestureRecognizer *LCDpanGestureImageView = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(LCDonImageDrag:)];
    [_LCDimageView setImage:_LCDimage];
    [_LCDimageView addGestureRecognizer:LCDpanGestureImageView];
    [self addSubview:_LCDimageView];
    _LCDcloseBtn = [[UIButton alloc] initWithFrame:CGRectMake(_LCDimageView.center.x-_LCDimageView.frame.size.width/2-kDefaultDragIconSize/2-7, _LCDimageView.center.y-_LCDimageView.frame.size.height/2-kDefaultDragIconSize/2-7, kDefaultDragIconSize, kDefaultDragIconSize)];
    [_LCDcloseBtn setImage:[UIImage imageNamed:@"qmkit_drag_close"] forState:UIControlStateNormal];
    [_LCDcloseBtn addTarget:self action:@selector(LCDbuttonTapped:) forControlEvents:UIControlEventTouchUpInside];
    [_LCDcloseBtn setTag:kDragCloseBtnTag];
    [self addSubview:_LCDcloseBtn];
    _LCDflipBtn = [[UIButton alloc] initWithFrame:CGRectMake(_LCDimageView.center.x-_LCDimageView.frame.size.width/2-kDefaultDragIconSize+6, _LCDimageView.center.y+_LCDimageView.frame.size.height/2-4, kDefaultDragIconSize, kDefaultDragIconSize)];
    [_LCDflipBtn setImage:[UIImage imageNamed:@"qmkit_drag_flip"] forState:UIControlStateNormal];
    [_LCDflipBtn addTarget:self action:@selector(LCDbuttonTapped:) forControlEvents:UIControlEventTouchUpInside];
    [_LCDflipBtn setTag:kDragFlipBtnTag];
    [self addSubview:_LCDflipBtn];
    _LCDrotationBtn = [[UIButton alloc] initWithFrame:CGRectMake(_LCDimageView.frame.size.width/2+_LCDimageView.center.x-3, _LCDimageView.center.y-_LCDimageView.frame.size.height/2-kDefaultDragIconSize/2-5, kDefaultDragIconSize, kDefaultDragIconSize)];
    UIPanGestureRecognizer *LCDpanGestureRotate = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(LCDonButtonRotate:)];
    [_LCDrotationBtn setImage:[UIImage imageNamed:@"qmkit_drag_rotate"] forState:UIControlStateNormal];
    [_LCDrotationBtn setTag:kDragRotationBtnTag];
    [_LCDrotationBtn addGestureRecognizer:LCDpanGestureRotate];
    [self addSubview:_LCDrotationBtn];
    _LCDscaleBtn = [[UIButton alloc] initWithFrame:CGRectMake(_LCDimageView.frame.size.width/2+_LCDimageView.center.x-5, _LCDimageView.frame.size.height/2+_LCDimageView.center.y-5, kDefaultDragIconSize, kDefaultDragIconSize)];
    UIPanGestureRecognizer *LCDpanGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(LCDonButtonScale:)];
    [_LCDscaleBtn setImage:[UIImage imageNamed:@"qmkit_drag_scale"] forState:UIControlStateNormal];
    [_LCDscaleBtn setTag:kDragScaleBtnTag];
    [_LCDscaleBtn addGestureRecognizer:LCDpanGesture];
    [self addSubview:_LCDscaleBtn];
}
#pragma mark - Events
- (void)LCDbuttonTapped:(UIButton *)LCDsender
{
    switch (LCDsender.tag) {
        case kDragCloseBtnTag:
            [self removeFromSuperview];
            break;
        case kDragScaleBtnTag:
            break;
        case kDragFlipBtnTag:
            [self LCDflipImage];
            break;
        case kDragRotationBtnTag:
            break;
        default:
            break;
    }
}
- (void)LCDonImageDrag:(UIPanGestureRecognizer *)LCDgesture
{
    CGPoint LCDgestureOrigin = [LCDgesture locationInView:self.superview];
    switch (LCDgesture.state) {
        case UIGestureRecognizerStateBegan:
            _LCDcurrentTooBarHidden = [self LCDisToolBarHidden];
            _LCDimageOffset = CGPointMake(LCDgestureOrigin.x-self.center.x, LCDgestureOrigin.y-self.center.y);
            break;
        case UIGestureRecognizerStateChanged:
            [self LCDhideToolBar];
            self.center = CGPointMake(LCDgestureOrigin.x-_LCDimageOffset.x, LCDgestureOrigin.y-_LCDimageOffset.y);
            break;
        case UIGestureRecognizerStateEnded:
            if (!_LCDcurrentTooBarHidden) [self LCDshowToolBar];
            _LCDimageOffset = CGPointZero;
            break;
        default:
            _LCDimageOffset = CGPointZero;
            break;
    }
}
- (void)LCDonButtonScale:(UIPanGestureRecognizer *)LCDgesture
{
    CGPoint LCDgestureOrigin = [LCDgesture locationInView:self];
    LCDgestureOrigin.x = LCDgestureOrigin.x - kDefaultDragIconSize/2;
    LCDgestureOrigin.y = LCDgestureOrigin.y - kDefaultDragIconSize/2;
    CGFloat LCDdeltaX = LCDgestureOrigin.x - _LCDimageView.center.x;
    CGFloat LCDdeltaY = LCDgestureOrigin.y - _LCDimageView.center.y;
    CGFloat LCDscaleX = LCDdeltaX/(_LCDimageView.frame.size.width/2);
    CGFloat LCDscaleY = LCDdeltaY/(_LCDimageView.frame.size.height/2);
    LCDscaleX = MAX(LCDscaleX, 0);
    LCDscaleY = MAX(LCDscaleY, 0);
    if (LCDscaleX < 1.0f && _LCDimageView.frame.size.width*LCDscaleX <= kDefaultDragIconSize) {
        LCDscaleX = kDefaultDragIconSize/_LCDimageView.frame.size.width;
    }
    if (LCDscaleY < 1.0f && _LCDimageView.frame.size.height*LCDscaleY <= kDefaultDragIconSize) {
        LCDscaleY = kDefaultDragIconSize/_LCDimageView.frame.size.height;
    }
    _LCDimageView.transform = CGAffineTransformScale(_LCDimageView.transform, LCDscaleX, LCDscaleY);
    _LCDcloseBtn.frame = CGRectMake(_LCDimageView.center.x-_LCDimageView.frame.size.width/2-kDefaultDragIconSize/2-7, _LCDimageView.center.y-_LCDimageView.frame.size.height/2-kDefaultDragIconSize/2-7, kDefaultDragIconSize, kDefaultDragIconSize);
    _LCDrotationBtn.frame = CGRectMake(_LCDimageView.frame.size.width/2+_LCDimageView.center.x-3, _LCDimageView.center.y-_LCDimageView.frame.size.height/2-kDefaultDragIconSize/2-5, kDefaultDragIconSize, kDefaultDragIconSize);
    _LCDscaleBtn.frame = CGRectMake(_LCDimageView.frame.size.width/2+_LCDimageView.center.x-5, _LCDimageView.frame.size.height/2+_LCDimageView.center.y-5, kDefaultDragIconSize, kDefaultDragIconSize);
    _LCDflipBtn.frame = CGRectMake(_LCDimageView.center.x-_LCDimageView.frame.size.width/2-kDefaultDragIconSize+6, _LCDimageView.center.y+_LCDimageView.frame.size.height/2-4, kDefaultDragIconSize, kDefaultDragIconSize);
    _LCDborderView.frame = _LCDimageView.frame;
}
- (void)LCDonButtonRotate:(UIPanGestureRecognizer *)LCDgesture
{
    CGPoint LCDgestureOrigin = [LCDgesture locationInView:self];
    CGPoint LCDcenter = _LCDimageView.center;
    GLKVector2 LCDoriginVec = GLKVector2Normalize(GLKVector2Make(_LCDrotationBtn.center.x - LCDcenter.x, _LCDrotationBtn.center.y - LCDcenter.y));
    GLKVector2 LCDnewVec = GLKVector2Normalize(GLKVector2Make(LCDgestureOrigin.x - LCDcenter.x, LCDgestureOrigin.y - LCDcenter.y));
    CGFloat LCDcos = GLKVector2DotProduct(LCDoriginVec, LCDnewVec);
    CGFloat LCDrad = MAX(MIN(acos(LCDcos), 2*M_PI), 0);
    if (LCDnewVec.x > LCDoriginVec.x) {
        LCDrad = LCDrad;
    }else {
        LCDrad = -LCDrad;
    }
    self.transform = CGAffineTransformRotate(self.transform, LCDrad);
}
#pragma mark - Override
- (UIView *)hitTest:(CGPoint)LCDpoint withEvent:(UIEvent *)LCDevent
{
    NSArray *LCDsubviews = [[self.subviews reverseObjectEnumerator] allObjects];
    for (UIView *LCDview in LCDsubviews) {
        if (LCDview.userInteractionEnabled && CGRectContainsPoint(LCDview.frame, LCDpoint)) {
            return LCDview;
        }
    }
    return nil;
}
- (BOOL)pointInside:(CGPoint)LCDpoint withEvent:(nullable UIEvent *)LCDevent
{
    return YES;
}
#pragma mark - PrivateMethod
- (void)LCDflipImage
{
    _LCDimageView.transform = CGAffineTransformScale(_LCDimageView.transform, -1.0, 1.0);
}
#pragma mark - PublicMethod
- (void)LCDshowToolBar
{
    _LCDrotationBtn.hidden = NO;
    _LCDcloseBtn.hidden = NO;
    _LCDflipBtn.hidden = NO;
    _LCDscaleBtn.hidden = NO;
    _LCDborderView.layer.borderWidth = 1.0f;
}
- (void)LCDhideToolBar
{
    _LCDrotationBtn.hidden = YES;
    _LCDcloseBtn.hidden = YES;
    _LCDflipBtn.hidden = YES;
    _LCDscaleBtn.hidden = YES;
    _LCDborderView.layer.borderWidth = 0.0f;
}
- (BOOL)LCDisToolBarHidden
{
    return _LCDscaleBtn.hidden && _LCDrotationBtn.hidden && _LCDcloseBtn.hidden && _LCDflipBtn.hidden;
}
- (instancetype)LCDcopyWithScaleFactor:(CGFloat)factor relativedView:(UIView *)imageView
{
    LCDQMDragView *LCDdrag = [[[self class] alloc] initWithFrame:[UIScreen mainScreen].bounds image:self.LCDimage];
    LCDdrag.transform = self.transform;
    LCDdrag.LCDimageView.transform = CGAffineTransformScale(self.LCDimageView.transform, 1.0f/factor, 1.0f/factor);
    CGFloat LCDcenterX = self.center.x - imageView.frame.origin.x;
    CGFloat LCDcenterY = self.center.y - imageView.frame.origin.y;
    LCDdrag.center = CGPointMake(LCDcenterX/factor, LCDcenterY/factor);
    return LCDdrag;
}
@end
