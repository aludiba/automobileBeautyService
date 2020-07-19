#import "BKQMPhotoClipViewController.h"
#import "Constants.h"
#import "UIColor+Additions.h"
#import <Masonry.h>
@interface BKQMPhotoClipViewController ()
@property (nonatomic, assign) CGPoint BKoffsetPoint;
@property (nonatomic, assign) CGPoint BKcurrentPoint;
@property (nonatomic, strong) UIImageView *BKimageView;
@property (nonatomic, strong) UIView *BKleftMaskView;
@property (nonatomic, strong) UIView *BKtopMaskView;
@property (nonatomic, strong) UIView *BKrightMaskView;
@property (nonatomic, strong) UIView *BKbottomMaskView;
@property (nonatomic, strong) UIButton *BKcancelButton;
@property (nonatomic, strong) UIButton *BKscaleButton;
@property (nonatomic, strong) UIButton *BKrotateButton;
@property (nonatomic, strong) UIButton *BKfinishButton;
@end
@implementation BKQMPhotoClipViewController
- (void)viewDidLoad
{
    [super viewDidLoad];
    [self BKsetupUI];
    [self BKsetupGesture];
}
- (BOOL)BKprefersStatusBarHidden
{
    return NO;
}
- (UIStatusBarStyle)BKpreferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}
#pragma mark - SETUP
- (void)BKsetupUI
{
    [self.view setBackgroundColor:[UIColor darkGrayColor]];
    CGRect BKrect = self.view.bounds;
    _BKcurrentPoint = BKrect.origin;
    _BKimageView = [[UIImageView alloc] initWithFrame:BKrect];
    _BKimageView.image = _BKimage;
    [self.view addSubview:_BKimageView];
    _BKtopMaskView = [[UIView alloc] initWithFrame:CGRectZero];
    _BKtopMaskView.backgroundColor = [UIColor blackColor];
    _BKtopMaskView.layer.opacity = 0.5;
    [self.view addSubview:_BKtopMaskView];
    [_BKtopMaskView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.top.mas_equalTo(0);
        make.width.equalTo(self.view);
        make.height.mas_equalTo(100);
    }];
    _BKbottomMaskView = [[UIView alloc] initWithFrame:CGRectZero];
    _BKbottomMaskView.backgroundColor = [UIColor blackColor];
    _BKbottomMaskView.layer.opacity = 0.5;
    [self.view addSubview:_BKbottomMaskView];
    [_BKbottomMaskView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(0);
        make.width.equalTo(self.view);
        make.height.mas_equalTo(100);
        make.bottom.equalTo(self.view.mas_bottom);
    }];
    _BKleftMaskView = [[UIView alloc] initWithFrame:CGRectZero];
    _BKleftMaskView.backgroundColor = [UIColor blackColor];
    _BKleftMaskView.layer.opacity = 0.5;
    [self.view addSubview:_BKleftMaskView];
    [_BKleftMaskView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(0);
        make.top.equalTo(_BKtopMaskView.mas_bottom);
        make.width.mas_equalTo(50);
        make.bottom.mas_equalTo(_BKbottomMaskView.mas_top);
    }];
    _BKrightMaskView = [[UIView alloc] initWithFrame:CGRectZero];
    _BKrightMaskView.backgroundColor = [UIColor blackColor];
    _BKrightMaskView.layer.opacity = 0.5;
    [self.view addSubview:_BKrightMaskView];
    [_BKrightMaskView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.view);
        make.width.mas_equalTo(50);
        make.top.equalTo(_BKtopMaskView.mas_bottom);
        make.bottom.mas_equalTo(_BKbottomMaskView.mas_top);
    }];
    UIView *BKbottomBg = [[UIView alloc] initWithFrame:CGRectZero];
    BKbottomBg.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:BKbottomBg];
    [BKbottomBg mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.bottom.width.equalTo(self.view);
        make.height.mas_equalTo(60);
    }];
    _BKcancelButton = [[UIButton alloc] initWithFrame:CGRectZero];
    [_BKcancelButton setTitle:@"取消" forState:UIControlStateNormal];
    [_BKcancelButton setTitleColor:[UIColor colorWithRGBHex:0x63dab9] forState:UIControlStateNormal];
    [_BKcancelButton addTarget:self action:@selector(buttonTapped:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_BKcancelButton];
    [_BKcancelButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.height.mas_equalTo(40);
        make.centerY.equalTo(BKbottomBg.mas_centerY);
        make.centerX.equalTo(self.view.mas_left).offset(self.view.bounds.size.width/8);
    }];
    _BKscaleButton = [[UIButton alloc] initWithFrame:CGRectZero];
    [_BKscaleButton setTitle:@"3:4" forState:UIControlStateNormal];
    [_BKscaleButton setTitleColor:[UIColor colorWithRGBHex:0x63dab9] forState:UIControlStateNormal];
    [_BKscaleButton addTarget:self action:@selector(BKbuttonTapped:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_BKscaleButton];
    [_BKscaleButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.height.mas_equalTo(40);
        make.centerY.equalTo(BKbottomBg.mas_centerY);
        make.centerX.equalTo(self.view.mas_left).offset(self.view.bounds.size.width*3/8);
    }];
    _BKrotateButton = [[UIButton alloc] initWithFrame:CGRectZero];
    [_BKrotateButton setTitle:@"旋转" forState:UIControlStateNormal];
    [_BKrotateButton setTitleColor:[UIColor colorWithRGBHex:0x63dab9] forState:UIControlStateNormal];
    [_BKrotateButton addTarget:self action:@selector(BKbuttonTapped:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_BKrotateButton];
    [_BKrotateButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.height.mas_equalTo(40);
        make.centerY.equalTo(BKbottomBg.mas_centerY);
        make.centerX.equalTo(self.view.mas_left).offset(self.view.bounds.size.width*5/8);
    }];
    _BKfinishButton = [[UIButton alloc] initWithFrame:CGRectZero];
    [_BKfinishButton setTitle:@"完成" forState:UIControlStateNormal];
    [_BKfinishButton setTitleColor:[UIColor colorWithRGBHex:0x63dab9] forState:UIControlStateNormal];
    [_BKfinishButton addTarget:self action:@selector(BKbuttonTapped:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_BKfinishButton];
    [_BKfinishButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.height.mas_equalTo(40);
        make.centerY.equalTo(BKbottomBg.mas_centerY);
        make.centerX.equalTo(self.view.mas_left).offset(self.view.bounds.size.width*7/8);
    }];
}
- (void)BKsetupGesture
{
    UIPanGestureRecognizer *BKgesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(BKhandlePanGesture:)];
    BKgesture.maximumNumberOfTouches = 1;
    [self.view addGestureRecognizer:BKgesture];
}
#pragma mark - Events
- (void)BKbuttonTapped:(UIButton *)BKsender
{
    if (_BKcancelButton == BKsender) {
        [self dismissViewControllerAnimated:YES completion:NULL];
    }else if (_BKscaleButton == BKsender) {
        [self BKscaleImage];
    }else if (_BKrotateButton == BKsender) {
        [self BKrotateImage];
    }else if (_BKfinishButton == BKsender) {
        [self dismissViewControllerAnimated:YES completion:NULL];
        if (_BKcompletionBlock) {
            _BKcompletionBlock(_BKimage, CGSizeZero, M_PI_2);
        }
    }
}
#pragma mark - Touch
- (void)BKhandlePanGesture:(UIPanGestureRecognizer *)BKgesture
{
    if (BKgesture.state == UIGestureRecognizerStateBegan) {
        CGPoint BKlocation = [BKgesture locationInView:self.view];
        _BKoffsetPoint = CGPointMake(BKlocation.x - _BKcurrentPoint.x, BKlocation.y - _BKcurrentPoint.y);
    }else if (BKgesture.state == UIGestureRecognizerStateChanged) {
        CGPoint BKlocation = [BKgesture locationInView:self.view];
        _BKcurrentPoint = CGPointMake(BKlocation.x - _BKoffsetPoint.x, BKlocation.y - _BKoffsetPoint.y);
        CGRect BKrect = _BKimageView.frame;
        BKrect.origin = _BKcurrentPoint;
        _BKimageView.frame = BKrect;
    }else if (BKgesture.state == UIGestureRecognizerStateEnded) {
        CGRect BKmaskRect = CGRectMake(50, 100, self.view.bounds.size.width - 50*2, self.view.bounds.size.height - 100*2);
        CGRect BKimageRect = _BKimageView.frame;
        if (BKmaskRect.origin.x <= BKimageRect.origin.x && BKmaskRect.origin.y <= BKimageRect.origin.y) {
            [UIView animateWithDuration:0.4 animations:^{
                CGRect BKrect = _BKimageView.frame;
                BKrect.origin = BKmaskRect.origin;
                _BKimageView.frame = BKrect;
            } completion:^(BOOL BKfinished) {
                _BKcurrentPoint = _BKimageView.frame.origin;
            }];
        }else if (BKmaskRect.origin.x + BKmaskRect.size.width >= BKimageRect.size.width + BKimageRect.origin.x && BKmaskRect.origin.y <= BKimageRect.origin.y) {
            CGFloat BKx = BKmaskRect.origin.x + BKmaskRect.size.width - _BKimageView.bounds.size.width;
            [UIView animateWithDuration:0.4 animations:^{
                CGRect BKrect = _BKimageView.frame;
                BKrect.origin = BKmaskRect.origin;
                BKrect.origin.x = BKx;
                _BKimageView.frame = BKrect;
            } completion:^(BOOL BKfinished) {
                _BKcurrentPoint = _BKimageView.frame.origin;
            }];
        }else if (BKmaskRect.origin.x <= BKimageRect.origin.x && BKmaskRect.origin.y + BKmaskRect.size.height >= BKimageRect.origin.y + BKimageRect.size.height) {
            CGFloat BKy = BKmaskRect.origin.y + BKmaskRect.size.height - _BKimageView.bounds.size.height;
            [UIView animateWithDuration:0.4 animations:^{
                CGRect BKrect = _BKimageView.frame;
                BKrect.origin = BKmaskRect.origin;
                BKrect.origin.y = BKy;
                _BKimageView.frame = BKrect;
            } completion:^(BOOL BKfinished) {
                _BKcurrentPoint = _BKimageView.frame.origin;
            }];
        }else if (BKmaskRect.origin.x + BKmaskRect.size.width >= BKimageRect.size.width + BKimageRect.origin.x && BKmaskRect.origin.y + BKmaskRect.size.height >= BKimageRect.origin.y + BKimageRect.size.height) {
            CGFloat BKx = BKmaskRect.origin.x + BKmaskRect.size.width - _BKimageView.bounds.size.width;
            CGFloat BKy = BKmaskRect.origin.y + BKmaskRect.size.height - _BKimageView.bounds.size.height;
            [UIView animateWithDuration:0.4 animations:^{
                CGRect BKrect = _BKimageView.frame;
                BKrect.origin.x = BKx;
                BKrect.origin.y = BKy;
                _BKimageView.frame = BKrect;
            } completion:^(BOOL BKfinished) {
                _BKcurrentPoint = _BKimageView.frame.origin;
            }];
        }else if (BKmaskRect.origin.x <= BKimageRect.origin.x) {
            [UIView animateWithDuration:0.4 animations:^{
                CGRect BKrect = _BKimageView.frame;
                BKrect.origin.x = BKmaskRect.origin.x;
                _BKimageView.frame = BKrect;
            } completion:^(BOOL BKfinished) {
                _BKcurrentPoint = _BKimageView.frame.origin;
            }];
        }else if (BKmaskRect.origin.x + BKmaskRect.size.width >= BKimageRect.size.width + BKimageRect.origin.x ) {
            CGFloat BKx = BKmaskRect.origin.x + BKmaskRect.size.width - _BKimageView.bounds.size.width;
            [UIView animateWithDuration:0.4 animations:^{
                CGRect BKrect = _BKimageView.frame;
                BKrect.origin.x = BKx;
                _BKimageView.frame = BKrect;
            } completion:^(BOOL BKfinished) {
                _BKcurrentPoint = _BKimageView.frame.origin;
            }];
        }else if (BKmaskRect.origin.y <= BKimageRect.origin.y) {
            [UIView animateWithDuration:0.4 animations:^{
                CGRect BKrect = _BKimageView.frame;
                BKrect.origin.y = BKmaskRect.origin.y;
                _BKimageView.frame = BKrect;
            } completion:^(BOOL BKfinished) {
                _BKcurrentPoint = _BKimageView.frame.origin;
            }];
        }else if (BKmaskRect.origin.y + BKmaskRect.size.height >= BKimageRect.size.height + BKimageRect.origin.y ) {
            CGFloat BKy = BKmaskRect.origin.y + BKmaskRect.size.height - _BKimageView.bounds.size.height;
            [UIView animateWithDuration:0.4 animations:^{
                CGRect BKrect = _BKimageView.frame;
                BKrect.origin.y = BKy;
                _BKimageView.frame = BKrect;
            } completion:^(BOOL BKfinished) {
                _BKcurrentPoint = _BKimageView.frame.origin;
            }];
        }
    }
}
#pragma mark - Private
- (void)BKrotateImage
{
    self.BKimageView.transform = CGAffineTransformRotate(self.BKimageView.transform, M_PI_2);
}
- (void)BKscaleImage
{
}
#pragma mark - DRAW
@end
