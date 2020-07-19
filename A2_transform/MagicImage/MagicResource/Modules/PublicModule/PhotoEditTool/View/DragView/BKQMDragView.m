#import "BKQMDragView.h"
#import <GLKit/GLKit.h>
#define kDragCloseBtnTag        1
#define kDragFlipBtnTag         2
#define kDragScaleBtnTag        3
#define kDragRotationBtnTag     4
#define kDefaultDragViewWidth   80
#define kDefaultDragIconSize    30
@interface BKQMDragView ()
@property (nonatomic, strong) UIImage *BKimage;
@property (nonatomic, assign) float BKratio;
@property (nonatomic, assign) BOOL BKcurrentTooBarHidden;
@property (nonatomic, strong) UIView *BKborderView;
@property (nonatomic, assign) CGPoint BKimageOffset;
@property (nonatomic, strong) UIButton *BKcloseBtn;
@property (nonatomic, strong) UIButton *BKflipBtn;
@property (nonatomic, strong) UIButton *BKrotationBtn;
@property (nonatomic, strong) UIButton *BKscaleBtn;
@end
@implementation BKQMDragView
- (instancetype)initWithFrame:(CGRect)BKframe image:(UIImage *)BKimage
{
    size_t BKwidth = CGImageGetWidth(BKimage.CGImage);
    size_t BKheight = CGImageGetHeight(BKimage.CGImage);
    _BKratio = ((float)BKwidth)/((float)BKheight);
    BKwidth = kDefaultDragViewWidth;
    BKheight = BKwidth / _BKratio;
    if (self = [self initWithFrame:BKframe]) {
        _BKimage = BKimage;
        [self BKsetupUIWithSize:CGSizeMake(BKwidth, BKheight)];
        [self setBackgroundColor:[UIColor clearColor]];
        [self setUserInteractionEnabled:YES];
    }
    return self;
}
- (void)BKsetupUIWithSize:(CGSize)BKsize
{
    _BKborderView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, BKsize.width, BKsize.height)];
    _BKborderView.center = CGPointMake(self.frame.size.width/2, self.frame.size.height/2);
    _BKborderView.layer.borderColor = [UIColor whiteColor].CGColor;
    _BKborderView.userInteractionEnabled = NO;
    [self addSubview:_BKborderView];
    _BKborderView.layer.borderColor = [UIColor whiteColor].CGColor;
    _BKborderView.layer.borderWidth = 1.0f;
    _BKimageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, BKsize.width, BKsize.height)];
    _BKimageView.center = CGPointMake(self.frame.size.width/2, self.frame.size.height/2);
    _BKimageView.userInteractionEnabled = YES;
    UIPanGestureRecognizer *BKpanGestureImageView = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(BKonImageDrag:)];
    [_BKimageView setImage:_BKimage];
    [_BKimageView addGestureRecognizer:BKpanGestureImageView];
    [self addSubview:_BKimageView];
    _BKcloseBtn = [[UIButton alloc] initWithFrame:CGRectMake(_BKimageView.center.x-_BKimageView.frame.size.width/2-kDefaultDragIconSize/2-7, _BKimageView.center.y-_BKimageView.frame.size.height/2-kDefaultDragIconSize/2-7, kDefaultDragIconSize, kDefaultDragIconSize)];
    [_BKcloseBtn setImage:[UIImage imageNamed:@"qmkit_drag_close"] forState:UIControlStateNormal];
    [_BKcloseBtn addTarget:self action:@selector(BKbuttonTapped:) forControlEvents:UIControlEventTouchUpInside];
    [_BKcloseBtn setTag:kDragCloseBtnTag];
    [self addSubview:_BKcloseBtn];
    _BKflipBtn = [[UIButton alloc] initWithFrame:CGRectMake(_BKimageView.center.x-_BKimageView.frame.size.width/2-kDefaultDragIconSize+6, _BKimageView.center.y+_BKimageView.frame.size.height/2-4, kDefaultDragIconSize, kDefaultDragIconSize)];
    [_BKflipBtn setImage:[UIImage imageNamed:@"qmkit_drag_flip"] forState:UIControlStateNormal];
    [_BKflipBtn addTarget:self action:@selector(BKbuttonTapped:) forControlEvents:UIControlEventTouchUpInside];
    [_BKflipBtn setTag:kDragFlipBtnTag];
    [self addSubview:_BKflipBtn];
    _BKrotationBtn = [[UIButton alloc] initWithFrame:CGRectMake(_BKimageView.frame.size.width/2+_BKimageView.center.x-3, _BKimageView.center.y-_BKimageView.frame.size.height/2-kDefaultDragIconSize/2-5, kDefaultDragIconSize, kDefaultDragIconSize)];
    UIPanGestureRecognizer *BKpanGestureRotate = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(BKonButtonRotate:)];
    [_BKrotationBtn setImage:[UIImage imageNamed:@"qmkit_drag_rotate"] forState:UIControlStateNormal];
    [_BKrotationBtn setTag:kDragRotationBtnTag];
    [_BKrotationBtn addGestureRecognizer:BKpanGestureRotate];
    [self addSubview:_BKrotationBtn];
    _BKscaleBtn = [[UIButton alloc] initWithFrame:CGRectMake(_BKimageView.frame.size.width/2+_BKimageView.center.x-5, _BKimageView.frame.size.height/2+_BKimageView.center.y-5, kDefaultDragIconSize, kDefaultDragIconSize)];
    UIPanGestureRecognizer *BKpanGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(BKonButtonScale:)];
    [_BKscaleBtn setImage:[UIImage imageNamed:@"qmkit_drag_scale"] forState:UIControlStateNormal];
    [_BKscaleBtn setTag:kDragScaleBtnTag];
    [_BKscaleBtn addGestureRecognizer:BKpanGesture];
    [self addSubview:_BKscaleBtn];
}
#pragma mark - Events
- (void)BKbuttonTapped:(UIButton *)BKsender
{
    switch (BKsender.tag) {
        case kDragCloseBtnTag:
            [self removeFromSuperview];
            break;
        case kDragScaleBtnTag:
            break;
        case kDragFlipBtnTag:
            [self BKflipImage];
            break;
        case kDragRotationBtnTag:
            break;
        default:
            break;
    }
}
- (void)BKonImageDrag:(UIPanGestureRecognizer *)BKgesture
{
    CGPoint BKgestureOrigin = [BKgesture locationInView:self.superview];
    switch (BKgesture.state) {
        case UIGestureRecognizerStateBegan:
            _BKcurrentTooBarHidden = [self BKisToolBarHidden];
            _BKimageOffset = CGPointMake(BKgestureOrigin.x-self.center.x, BKgestureOrigin.y-self.center.y);
            break;
        case UIGestureRecognizerStateChanged:
            [self BKhideToolBar];
            self.center = CGPointMake(BKgestureOrigin.x-_BKimageOffset.x, BKgestureOrigin.y-_BKimageOffset.y);
            break;
        case UIGestureRecognizerStateEnded:
            if (!_BKcurrentTooBarHidden) [self BKshowToolBar];
            _BKimageOffset = CGPointZero;
            break;
        default:
            _BKimageOffset = CGPointZero;
            break;
    }
}
- (void)BKonButtonScale:(UIPanGestureRecognizer *)BKgesture
{
    CGPoint BKgestureOrigin = [BKgesture locationInView:self];
    BKgestureOrigin.x = BKgestureOrigin.x - kDefaultDragIconSize/2;
    BKgestureOrigin.y = BKgestureOrigin.y - kDefaultDragIconSize/2;
    CGFloat BKdeltaX = BKgestureOrigin.x - _BKimageView.center.x;
    CGFloat BKdeltaY = BKgestureOrigin.y - _BKimageView.center.y;
    CGFloat BKscaleX = BKdeltaX/(_BKimageView.frame.size.width/2);
    CGFloat BKscaleY = BKdeltaY/(_BKimageView.frame.size.height/2);
    BKscaleX = MAX(BKscaleX, 0);
    BKscaleY = MAX(BKscaleY, 0);
    if (BKscaleX < 1.0f && _BKimageView.frame.size.width*BKscaleX <= kDefaultDragIconSize) {
        BKscaleX = kDefaultDragIconSize/_BKimageView.frame.size.width;
    }
    if (BKscaleY < 1.0f && _BKimageView.frame.size.height*BKscaleY <= kDefaultDragIconSize) {
        BKscaleY = kDefaultDragIconSize/_BKimageView.frame.size.height;
    }
    _BKimageView.transform = CGAffineTransformScale(_BKimageView.transform, BKscaleX, BKscaleY);
    _BKcloseBtn.frame = CGRectMake(_BKimageView.center.x-_BKimageView.frame.size.width/2-kDefaultDragIconSize/2-7, _BKimageView.center.y-_BKimageView.frame.size.height/2-kDefaultDragIconSize/2-7, kDefaultDragIconSize, kDefaultDragIconSize);
    _BKrotationBtn.frame = CGRectMake(_BKimageView.frame.size.width/2+_BKimageView.center.x-3, _BKimageView.center.y-_BKimageView.frame.size.height/2-kDefaultDragIconSize/2-5, kDefaultDragIconSize, kDefaultDragIconSize);
    _BKscaleBtn.frame = CGRectMake(_BKimageView.frame.size.width/2+_BKimageView.center.x-5, _BKimageView.frame.size.height/2+_BKimageView.center.y-5, kDefaultDragIconSize, kDefaultDragIconSize);
    _BKflipBtn.frame = CGRectMake(_BKimageView.center.x-_BKimageView.frame.size.width/2-kDefaultDragIconSize+6, _BKimageView.center.y+_BKimageView.frame.size.height/2-4, kDefaultDragIconSize, kDefaultDragIconSize);
    _BKborderView.frame = _BKimageView.frame;
}
- (void)BKonButtonRotate:(UIPanGestureRecognizer *)BKgesture
{
    CGPoint BKgestureOrigin = [BKgesture locationInView:self];
    CGPoint BKcenter = _BKimageView.center;
    GLKVector2 BKoriginVec = GLKVector2Normalize(GLKVector2Make(_BKrotationBtn.center.x - BKcenter.x, _BKrotationBtn.center.y - BKcenter.y));
    GLKVector2 BKnewVec = GLKVector2Normalize(GLKVector2Make(BKgestureOrigin.x - BKcenter.x, BKgestureOrigin.y - BKcenter.y));
    CGFloat BKcos = GLKVector2DotProduct(BKoriginVec, BKnewVec);
    CGFloat BKrad = MAX(MIN(acos(BKcos), 2*M_PI), 0);
    if (BKnewVec.x > BKoriginVec.x) {
        BKrad = BKrad;
    }else {
        BKrad = -BKrad;
    }
    self.transform = CGAffineTransformRotate(self.transform, BKrad);
}
#pragma mark - Override
- (UIView *)hitTest:(CGPoint)BKpoint withEvent:(UIEvent *)BKevent
{
    NSArray *BKsubviews = [[self.subviews reverseObjectEnumerator] allObjects];
    for (UIView *BKview in BKsubviews) {
        if (BKview.userInteractionEnabled && CGRectContainsPoint(BKview.frame, BKpoint)) {
            return BKview;
        }
    }
    return nil;
}
- (BOOL)pointInside:(CGPoint)BKpoint withEvent:(nullable UIEvent *)BKevent
{
    return YES;
}
#pragma mark - PrivateMethod
- (void)BKflipImage
{
    _BKimageView.transform = CGAffineTransformScale(_BKimageView.transform, -1.0, 1.0);
}
#pragma mark - PublicMethod
- (void)BKshowToolBar
{
    _BKrotationBtn.hidden = NO;
    _BKcloseBtn.hidden = NO;
    _BKflipBtn.hidden = NO;
    _BKscaleBtn.hidden = NO;
    _BKborderView.layer.borderWidth = 1.0f;
}
- (void)BKhideToolBar
{
    _BKrotationBtn.hidden = YES;
    _BKcloseBtn.hidden = YES;
    _BKflipBtn.hidden = YES;
    _BKscaleBtn.hidden = YES;
    _BKborderView.layer.borderWidth = 0.0f;
}
- (BOOL)BKisToolBarHidden
{
    return _BKscaleBtn.hidden && _BKrotationBtn.hidden && _BKcloseBtn.hidden && _BKflipBtn.hidden;
}
- (instancetype)BKcopyWithScaleFactor:(CGFloat)factor relativedView:(UIView *)imageView
{
    BKQMDragView *BKdrag = [[[self class] alloc] initWithFrame:[UIScreen mainScreen].bounds image:self.BKimage];
    BKdrag.transform = self.transform;
    BKdrag.BKimageView.transform = CGAffineTransformScale(self.BKimageView.transform, 1.0f/factor, 1.0f/factor);
    CGFloat BKcenterX = self.center.x - imageView.frame.origin.x;
    CGFloat BKcenterY = self.center.y - imageView.frame.origin.y;
    BKdrag.center = CGPointMake(BKcenterX/factor, BKcenterY/factor);
    return BKdrag;
}
@end
