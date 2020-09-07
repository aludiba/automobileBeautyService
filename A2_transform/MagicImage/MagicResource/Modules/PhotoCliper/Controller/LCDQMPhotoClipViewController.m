#import "LCDQMPhotoClipViewController.h"
#import "Constants.h"
#import "UIColor+Additions.h"
#import <Masonry.h>
@interface LCDQMPhotoClipViewController ()
@property (nonatomic, assign) CGPoint LCDoffsetPoint;
@property (nonatomic, assign) CGPoint LCDcurrentPoint;
@property (nonatomic, strong) UIImageView *LCDimageView;
@property (nonatomic, strong) UIView *LCDleftMaskView;
@property (nonatomic, strong) UIView *LCDtopMaskView;
@property (nonatomic, strong) UIView *LCDrightMaskView;
@property (nonatomic, strong) UIView *LCDbottomMaskView;
@property (nonatomic, strong) UIButton *LCDcancelButton;
@property (nonatomic, strong) UIButton *LCDscaleButton;
@property (nonatomic, strong) UIButton *LCDrotateButton;
@property (nonatomic, strong) UIButton *LCDfinishButton;
@end
@implementation LCDQMPhotoClipViewController
- (void)viewDidLoad
{
    [super viewDidLoad];
    [self LCDsetupUI];
    [self LCDsetupGesture];
}
- (BOOL)LCDprefersStatusBarHidden
{
    return NO;
}
- (UIStatusBarStyle)LCDpreferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}
#pragma mark - SETUP
- (void)LCDsetupUI
{
    [self.view setBackgroundColor:[UIColor darkGrayColor]];
    CGRect LCDrect = self.view.bounds;
    _LCDcurrentPoint = LCDrect.origin;
    _LCDimageView = [[UIImageView alloc] initWithFrame:LCDrect];
    _LCDimageView.image = _LCDimage;
    [self.view addSubview:_LCDimageView];
    _LCDtopMaskView = [[UIView alloc] initWithFrame:CGRectZero];
    _LCDtopMaskView.backgroundColor = [UIColor blackColor];
    _LCDtopMaskView.layer.opacity = 0.5;
    [self.view addSubview:_LCDtopMaskView];
    [_LCDtopMaskView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.top.mas_equalTo(0);
        make.width.equalTo(self.view);
        make.height.mas_equalTo(100);
    }];
    _LCDbottomMaskView = [[UIView alloc] initWithFrame:CGRectZero];
    _LCDbottomMaskView.backgroundColor = [UIColor blackColor];
    _LCDbottomMaskView.layer.opacity = 0.5;
    [self.view addSubview:_LCDbottomMaskView];
    [_LCDbottomMaskView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(0);
        make.width.equalTo(self.view);
        make.height.mas_equalTo(100);
        make.bottom.equalTo(self.view.mas_bottom);
    }];
    _LCDleftMaskView = [[UIView alloc] initWithFrame:CGRectZero];
    _LCDleftMaskView.backgroundColor = [UIColor blackColor];
    _LCDleftMaskView.layer.opacity = 0.5;
    [self.view addSubview:_LCDleftMaskView];
    [_LCDleftMaskView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(0);
        make.top.equalTo(_LCDtopMaskView.mas_bottom);
        make.width.mas_equalTo(50);
        make.bottom.mas_equalTo(_LCDbottomMaskView.mas_top);
    }];
    _LCDrightMaskView = [[UIView alloc] initWithFrame:CGRectZero];
    _LCDrightMaskView.backgroundColor = [UIColor blackColor];
    _LCDrightMaskView.layer.opacity = 0.5;
    [self.view addSubview:_LCDrightMaskView];
    [_LCDrightMaskView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.view);
        make.width.mas_equalTo(50);
        make.top.equalTo(_LCDtopMaskView.mas_bottom);
        make.bottom.mas_equalTo(_LCDbottomMaskView.mas_top);
    }];
    UIView *LCDbottomBg = [[UIView alloc] initWithFrame:CGRectZero];
    LCDbottomBg.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:LCDbottomBg];
    [LCDbottomBg mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.bottom.width.equalTo(self.view);
        make.height.mas_equalTo(60);
    }];
    _LCDcancelButton = [[UIButton alloc] initWithFrame:CGRectZero];
    [_LCDcancelButton setTitle:@"取消" forState:UIControlStateNormal];
    [_LCDcancelButton setTitleColor:[UIColor colorWithRGBHex:0x63dab9] forState:UIControlStateNormal];
    [_LCDcancelButton addTarget:self action:@selector(buttonTapped:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_LCDcancelButton];
    [_LCDcancelButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.height.mas_equalTo(40);
        make.centerY.equalTo(LCDbottomBg.mas_centerY);
        make.centerX.equalTo(self.view.mas_left).offset(self.view.bounds.size.width/8);
    }];
    _LCDscaleButton = [[UIButton alloc] initWithFrame:CGRectZero];
    [_LCDscaleButton setTitle:@"3:4" forState:UIControlStateNormal];
    [_LCDscaleButton setTitleColor:[UIColor colorWithRGBHex:0x63dab9] forState:UIControlStateNormal];
    [_LCDscaleButton addTarget:self action:@selector(LCDbuttonTapped:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_LCDscaleButton];
    [_LCDscaleButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.height.mas_equalTo(40);
        make.centerY.equalTo(LCDbottomBg.mas_centerY);
        make.centerX.equalTo(self.view.mas_left).offset(self.view.bounds.size.width*3/8);
    }];
    _LCDrotateButton = [[UIButton alloc] initWithFrame:CGRectZero];
    [_LCDrotateButton setTitle:@"旋转" forState:UIControlStateNormal];
    [_LCDrotateButton setTitleColor:[UIColor colorWithRGBHex:0x63dab9] forState:UIControlStateNormal];
    [_LCDrotateButton addTarget:self action:@selector(LCDbuttonTapped:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_LCDrotateButton];
    [_LCDrotateButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.height.mas_equalTo(40);
        make.centerY.equalTo(LCDbottomBg.mas_centerY);
        make.centerX.equalTo(self.view.mas_left).offset(self.view.bounds.size.width*5/8);
    }];
    _LCDfinishButton = [[UIButton alloc] initWithFrame:CGRectZero];
    [_LCDfinishButton setTitle:@"完成" forState:UIControlStateNormal];
    [_LCDfinishButton setTitleColor:[UIColor colorWithRGBHex:0x63dab9] forState:UIControlStateNormal];
    [_LCDfinishButton addTarget:self action:@selector(LCDbuttonTapped:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_LCDfinishButton];
    [_LCDfinishButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.height.mas_equalTo(40);
        make.centerY.equalTo(LCDbottomBg.mas_centerY);
        make.centerX.equalTo(self.view.mas_left).offset(self.view.bounds.size.width*7/8);
    }];
}
- (void)LCDsetupGesture
{
    UIPanGestureRecognizer *LCDgesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(LCDhandlePanGesture:)];
    LCDgesture.maximumNumberOfTouches = 1;
    [self.view addGestureRecognizer:LCDgesture];
}
#pragma mark - Events
- (void)LCDbuttonTapped:(UIButton *)LCDsender
{
    if (_LCDcancelButton == LCDsender) {
        [self dismissViewControllerAnimated:YES completion:NULL];
    }else if (_LCDscaleButton == LCDsender) {
        [self LCDscaleImage];
    }else if (_LCDrotateButton == LCDsender) {
        [self LCDrotateImage];
    }else if (_LCDfinishButton == LCDsender) {
        [self dismissViewControllerAnimated:YES completion:NULL];
        if (_LCDcompletionBlock) {
            _LCDcompletionBlock(_LCDimage, CGSizeZero, M_PI_2);
        }
    }
}
#pragma mark - Touch
- (void)LCDhandlePanGesture:(UIPanGestureRecognizer *)LCDgesture
{
    if (LCDgesture.state == UIGestureRecognizerStateBegan) {
        CGPoint LCDlocation = [LCDgesture locationInView:self.view];
        _LCDoffsetPoint = CGPointMake(LCDlocation.x - _LCDcurrentPoint.x, LCDlocation.y - _LCDcurrentPoint.y);
    }else if (LCDgesture.state == UIGestureRecognizerStateChanged) {
        CGPoint LCDlocation = [LCDgesture locationInView:self.view];
        _LCDcurrentPoint = CGPointMake(LCDlocation.x - _LCDoffsetPoint.x, LCDlocation.y - _LCDoffsetPoint.y);
        CGRect LCDrect = _LCDimageView.frame;
        LCDrect.origin = _LCDcurrentPoint;
        _LCDimageView.frame = LCDrect;
    }else if (LCDgesture.state == UIGestureRecognizerStateEnded) {
        CGRect LCDmaskRect = CGRectMake(50, 100, self.view.bounds.size.width - 50*2, self.view.bounds.size.height - 100*2);
        CGRect LCDimageRect = _LCDimageView.frame;
        if (LCDmaskRect.origin.x <= LCDimageRect.origin.x && LCDmaskRect.origin.y <= LCDimageRect.origin.y) {
            [UIView animateWithDuration:0.4 animations:^{
                CGRect LCDrect = _LCDimageView.frame;
                LCDrect.origin = LCDmaskRect.origin;
                _LCDimageView.frame = LCDrect;
            } completion:^(BOOL LCDfinished) {
                _LCDcurrentPoint = _LCDimageView.frame.origin;
            }];
        }else if (LCDmaskRect.origin.x + LCDmaskRect.size.width >= LCDimageRect.size.width + LCDimageRect.origin.x && LCDmaskRect.origin.y <= LCDimageRect.origin.y) {
            CGFloat LCDx = LCDmaskRect.origin.x + LCDmaskRect.size.width - _LCDimageView.bounds.size.width;
            [UIView animateWithDuration:0.4 animations:^{
                CGRect LCDrect = _LCDimageView.frame;
                LCDrect.origin = LCDmaskRect.origin;
                LCDrect.origin.x = LCDx;
                _LCDimageView.frame = LCDrect;
            } completion:^(BOOL LCDfinished) {
                _LCDcurrentPoint = _LCDimageView.frame.origin;
            }];
        }else if (LCDmaskRect.origin.x <= LCDimageRect.origin.x && LCDmaskRect.origin.y + LCDmaskRect.size.height >= LCDimageRect.origin.y + LCDimageRect.size.height) {
            CGFloat LCDy = LCDmaskRect.origin.y + LCDmaskRect.size.height - _LCDimageView.bounds.size.height;
            [UIView animateWithDuration:0.4 animations:^{
                CGRect LCDrect = _LCDimageView.frame;
                LCDrect.origin = LCDmaskRect.origin;
                LCDrect.origin.y = LCDy;
                _LCDimageView.frame = LCDrect;
            } completion:^(BOOL LCDfinished) {
                _LCDcurrentPoint = _LCDimageView.frame.origin;
            }];
        }else if (LCDmaskRect.origin.x + LCDmaskRect.size.width >= LCDimageRect.size.width + LCDimageRect.origin.x && LCDmaskRect.origin.y + LCDmaskRect.size.height >= LCDimageRect.origin.y + LCDimageRect.size.height) {
            CGFloat LCDx = LCDmaskRect.origin.x + LCDmaskRect.size.width - _LCDimageView.bounds.size.width;
            CGFloat LCDy = LCDmaskRect.origin.y + LCDmaskRect.size.height - _LCDimageView.bounds.size.height;
            [UIView animateWithDuration:0.4 animations:^{
                CGRect LCDrect = _LCDimageView.frame;
                LCDrect.origin.x = LCDx;
                LCDrect.origin.y = LCDy;
                _LCDimageView.frame = LCDrect;
            } completion:^(BOOL LCDfinished) {
                _LCDcurrentPoint = _LCDimageView.frame.origin;
            }];
        }else if (LCDmaskRect.origin.x <= LCDimageRect.origin.x) {
            [UIView animateWithDuration:0.4 animations:^{
                CGRect LCDrect = _LCDimageView.frame;
                LCDrect.origin.x = LCDmaskRect.origin.x;
                _LCDimageView.frame = LCDrect;
            } completion:^(BOOL LCDfinished) {
                _LCDcurrentPoint = _LCDimageView.frame.origin;
            }];
        }else if (LCDmaskRect.origin.x + LCDmaskRect.size.width >= LCDimageRect.size.width + LCDimageRect.origin.x ) {
            CGFloat LCDx = LCDmaskRect.origin.x + LCDmaskRect.size.width - _LCDimageView.bounds.size.width;
            [UIView animateWithDuration:0.4 animations:^{
                CGRect LCDrect = _LCDimageView.frame;
                LCDrect.origin.x = LCDx;
                _LCDimageView.frame = LCDrect;
            } completion:^(BOOL LCDfinished) {
                _LCDcurrentPoint = _LCDimageView.frame.origin;
            }];
        }else if (LCDmaskRect.origin.y <= LCDimageRect.origin.y) {
            [UIView animateWithDuration:0.4 animations:^{
                CGRect LCDrect = _LCDimageView.frame;
                LCDrect.origin.y = LCDmaskRect.origin.y;
                _LCDimageView.frame = LCDrect;
            } completion:^(BOOL LCDfinished) {
                _LCDcurrentPoint = _LCDimageView.frame.origin;
            }];
        }else if (LCDmaskRect.origin.y + LCDmaskRect.size.height >= LCDimageRect.size.height + LCDimageRect.origin.y ) {
            CGFloat LCDy = LCDmaskRect.origin.y + LCDmaskRect.size.height - _LCDimageView.bounds.size.height;
            [UIView animateWithDuration:0.4 animations:^{
                CGRect LCDrect = _LCDimageView.frame;
                LCDrect.origin.y = LCDy;
                _LCDimageView.frame = LCDrect;
            } completion:^(BOOL LCDfinished) {
                _LCDcurrentPoint = _LCDimageView.frame.origin;
            }];
        }
    }
}
#pragma mark - Private
- (void)LCDrotateImage
{
    self.LCDimageView.transform = CGAffineTransformRotate(self.LCDimageView.transform, M_PI_2);
}
- (void)LCDscaleImage
{
}
#pragma mark - DRAW
@end
