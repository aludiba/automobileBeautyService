#import "BKQMCameraViewController.h"
#import "BKQMPhotoClipViewController.h"
#import "BKQMPhotoEffectViewController.h"
#import "RTImagePickerViewController.h"
#import "UIColor+Additions.h"
#import "BKQMCameraSettingViewController.h"
#import <Photos/Photos.h>
#import <TOCropViewController.h>
#import <GPUImage.h>
#import <Masonry.h>
#import "BKQMShakeButton.h"
#import "BKCKStillCamera.h"
#import "BKCKStillCameraPreview.h"
#import "PHAsset+Latest.h"
#import "BKQMCameraRatioSuspensionView.h"
#import "BKQMCameraFlashSuspensionView.h"
#import "BKQMCameraFilterView.h"
#import "BKQMImageFilter.h"
#import "BKQMPhotoDisplayViewController.h"
#import "UIImage+Rotate.h"
#import "UIImage+Clip.h"
#import "BKQMCameraFocusView.h"
#import "BKQMProgressHUD.h"
#define kCameraViewBottomBGHeight   ((kScreenH)-(kScreenW)*(4.0f/3.0f))
#define kCameraTakePhotoIconSize   75
@interface BKQMCameraViewController ()<RTImagePickerViewControllerDelegate,TOCropViewControllerDelegate>
{
    BKQMCameraRatioSuspensionView *_BKratioSuspensionView;
    BKQMCameraFlashSuspensionView *_BKflashSuspensionView;
    BKQMCameraFocusView *_BKcameraFocusView;
    BKQMCameraFilterView *_BKcameraFilterView;
    CGFloat _BKcurrentCameraViewRatio;
    CGFloat _BKlastTwoFingerDistance;
}
@property (nonatomic, strong) BKCKStillCamera *BKstillCamera;
@property (nonatomic, strong) BKCKStillCameraPreview *BKimageView;
@property (nonatomic, strong) GPUImageFilter *BKfilter;
@property (nonatomic, assign) CGFloat BKcurrentSwipeFilterIndex;
@property (nonatomic, strong) UISlider *BKslider;
@property (nonatomic, strong) UIView *BKbottomBg;
@property (nonatomic, strong) UIView *BKtopBg;
@property (nonatomic, strong) UIButton *BKtakePhotoBtn;
@property (nonatomic, strong) UIButton *BKpicBtn;
@property (nonatomic, assign) AVCaptureTorchMode BKcurrentTorchModel;
@property (nonatomic, assign) AVCaptureFlashMode BKcurrentFlashModel;
@end
@implementation BKQMCameraViewController
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.whiteColor;
    [self BKsetupUI];
    [self BKsetupVar];
    [self BKsetupCamera];
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
    });
}
- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    self.BKtakePhotoBtn.userInteractionEnabled = NO;
    [self BKstartCameraCapture];
}
- (BOOL)prefersStatusBarHidden
{
    if (iPhoneX) {
        return NO;
    }
    return YES;
}
- (UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}
#pragma mark - SETUP
- (void)BKsetupVar
{
    _BKcurrentCameraViewRatio = 1.33f;
    _BKcurrentFlashModel = AVCaptureFlashModeOff;
    _BKcurrentTorchModel = AVCaptureTorchModeOff;
}
- (void)BKsetupUI
{
    weakSelf();
    [self.navigationController setNavigationBarHidden:YES];
    _BKimageView = [[BKCKStillCameraPreview alloc] initWithFrame:CGRectZero];
    _BKimageView.fillMode = kGPUImageFillModePreserveAspectRatioAndFill;
    _BKimageView.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.width*4.0/3.0);
    [self.view addSubview:_BKimageView];
    [_BKimageView.BKtapGestureSignal subscribeNext:^(UITapGestureRecognizer* _Nullable BKx) {
        BOOL BKratioHidden = [wself.BKratioSuspensionView BKhide];
        BOOL BKflashHidden = [wself.BKflashSuspensionView BKhide];
        BOOL BKcameraHidden = [wself.BKcameraFilterView BKhide];
        if (BKratioHidden || BKflashHidden || BKcameraHidden) {
            return;
        }
        CGPoint BKcenter = [BKx locationInView:wself.view];
        CGPoint BKfoucus = CGPointMake(BKcenter.x/wself.BKimageView.frame.size.width, 1.0-BKcenter.y/wself.BKimageView.frame.size.height);
        [wself.BKstillCamera BKsetExposeModel:AVCaptureExposureModeContinuousAutoExposure];
        [wself.BKstillCamera BKfocusAtPoint:BKfoucus];
        [wself.BKcameraFocusView BKfoucusAtPoint:BKcenter];
    }];
    [[_BKimageView.BKpinchGestureSignal filter:^BOOL(UIPinchGestureRecognizer* _Nullable BKvalue) {
        return BKvalue.numberOfTouches == 2;
    }] subscribeNext:^(UIPinchGestureRecognizer* _Nullable BKx) {
        CGPoint BKfirst = [BKx locationOfTouch:0 inView:wself.BKimageView];
        CGPoint BKsecond = [BKx locationOfTouch:1 inView:wself.BKimageView];
        if (BKx.state == UIGestureRecognizerStateBegan) {
            _BKlastTwoFingerDistance = sqrt(pow(BKfirst.x - BKsecond.x, 2) + pow(BKfirst.y - BKsecond.y, 2));
        }else if (BKx.state == UIGestureRecognizerStateChanged) {
            CGFloat BKtwoFingerDistance = sqrt(pow(BKfirst.x - BKsecond.x, 2) + pow(BKfirst.y - BKsecond.y, 2));
            CGFloat BKscale = (BKtwoFingerDistance - _BKlastTwoFingerDistance)/_BKlastTwoFingerDistance;
            [wself.BKstillCamera BKsetVideoZoomFactor:BKscale+wself.BKstillCamera.BKvideoZoomFactor];
            _BKlastTwoFingerDistance = BKtwoFingerDistance;
        }else if (BKx.state == UIGestureRecognizerStateEnded) {
            _BKlastTwoFingerDistance = sqrt(pow(BKfirst.x - BKsecond.x, 2) + pow(BKfirst.y - BKsecond.y, 2));
        }else if (BKx.state == UIGestureRecognizerStateCancelled) {
            _BKlastTwoFingerDistance = sqrt(pow(BKfirst.x - BKsecond.x, 2) + pow(BKfirst.y - BKsecond.y, 2));
        }
    }];
    [_BKimageView.BKswipeRightGestureSignal subscribeNext:^(UISwipeGestureRecognizer*  _Nullable BKx) {
        wself.BKcurrentSwipeFilterIndex -= 1;
        wself.BKcurrentSwipeFilterIndex = ([[wself BKcameraFilterView] BKselectFilterAtIndex:wself.BKcurrentSwipeFilterIndex]) ? wself.BKcurrentSwipeFilterIndex : wself.BKcurrentSwipeFilterIndex + 1;
    }];
    [_BKimageView.BKswipeLeftGestureSignal subscribeNext:^(UISwipeGestureRecognizer*  _Nullable x) {
        wself.BKcurrentSwipeFilterIndex += 1;
        wself.BKcurrentSwipeFilterIndex = ([[wself BKcameraFilterView] BKselectFilterAtIndex:wself.BKcurrentSwipeFilterIndex]) ? wself.BKcurrentSwipeFilterIndex : wself.BKcurrentSwipeFilterIndex - 1;
    }];
    _BKtopBg = [[UIView alloc] initWithFrame:CGRectZero];
    _BKtopBg.backgroundColor = [UIColor colorWithRed:20/255.0 green:20/255.0 blue:20/255.0 alpha:255.0];
    [self.view addSubview:_BKtopBg];
    CGFloat BKtopOffset = iPhoneX ? 45 : 20;
    UIButton *BKflashBtn = [[BKQMShakeButton alloc] initWithFrame:CGRectZero];
    [BKflashBtn setImage:[UIImage imageNamed:@"qmkit_no_flash_btn"] forState:UIControlStateNormal];
    [BKflashBtn setImage:[UIImage imageNamed:@"qmkit_no_flash_btn"] forState:UIControlStateHighlighted];
    [self.view addSubview:BKflashBtn];
    [BKflashBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.height.mas_equalTo(30);
        make.left.mas_equalTo(20);
        make.top.mas_equalTo(BKtopOffset);
    }];
    [[BKflashBtn rac_signalForControlEvents:UIControlEventTouchUpInside] subscribeNext:^(__kindof UIControl * _Nullable x) {
        [wself.BKflashSuspensionView setBKflashCallBack:^(AVCaptureFlashMode flash, AVCaptureTorchMode torch, NSString *icon) {
            wself.BKcurrentTorchModel = torch;
            wself.BKcurrentFlashModel = flash;
            [BKflashBtn setImage:[UIImage imageNamed:icon] forState:UIControlStateNormal];
            [BKflashBtn setImage:[UIImage imageNamed:icon] forState:UIControlStateHighlighted];
            [wself.BKstillCamera BKsetFlashModel:flash];
            [wself.BKstillCamera BKsetTorchModel:torch];
        }];
        [wself.BKratioSuspensionView BKhide];
        [wself.BKflashSuspensionView BKtoggleBelowInView:BKflashBtn];
    }];
    [[[NSNotificationCenter defaultCenter] rac_addObserverForName:UIApplicationDidBecomeActiveNotification object:nil] subscribeNext:^(NSNotification * _Nullable x) {
        [wself.BKstillCamera BKsetFlashModel:wself.BKcurrentFlashModel];
        [wself.BKstillCamera BKsetTorchModel:wself.BKcurrentTorchModel];
    }];
    UIButton *BKscaleBtn = [[BKQMShakeButton alloc] initWithFrame:CGRectZero];
    [BKscaleBtn setTitle:@"3:4" forState:UIControlStateNormal];
    BKscaleBtn.titleLabel.font = [UIFont systemFontOfSize:8.0f];
    BKscaleBtn.layer.borderWidth = 1.1f;
    BKscaleBtn.layer.borderColor = [UIColor whiteColor].CGColor;
    [self.view addSubview:BKscaleBtn];
    [BKscaleBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        CGFloat x = self.view.frame.size.width/3;
        make.left.mas_equalTo(@(x));
        make.width.mas_equalTo(22);
        make.height.mas_equalTo(22);
        make.top.mas_equalTo(BKtopOffset+5);
    }];
    [[BKscaleBtn rac_signalForControlEvents:UIControlEventTouchUpInside] subscribeNext:^(__kindof UIControl * _Nullable x) {
        [wself.BKratioSuspensionView setBKratioCallBack:^(BKQMSuspensionModel *BKitem) {
            [wself BKsetCameraRatio:BKitem.value];
            [BKscaleBtn setTitle:BKitem.name forState:UIControlStateNormal];
        }];
        [wself.BKflashSuspensionView BKhide];
        [wself.BKratioSuspensionView BKtoggleBelowInView:BKscaleBtn];
    }];
    UIButton *BKsettingBtn = [[BKQMShakeButton alloc] initWithFrame:CGRectZero];
    [BKsettingBtn setImage:[UIImage imageNamed:@"qmkit_setting_btn"] forState:UIControlStateNormal];
    [BKsettingBtn setImage:[UIImage imageNamed:@"qmkit_setting_btn"] forState:UIControlStateHighlighted];
    [self.view addSubview:BKsettingBtn];
    [BKsettingBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        CGFloat x = self.view.frame.size.width/3;
        make.right.mas_equalTo(@(-x));
        make.width.height.mas_equalTo(30);
        make.top.mas_equalTo(BKtopOffset);
    }];
    [[BKsettingBtn rac_signalForControlEvents:UIControlEventTouchUpInside] subscribeNext:^(__kindof UIControl * _Nullable x) {
        BKQMCameraSettingViewController *BKsettingVC = [[BKQMCameraSettingViewController alloc] init];
        [wself.navigationController pushViewController:BKsettingVC animated:YES];
    }];
    UIButton *BKrotateBtn = [[BKQMShakeButton alloc] initWithFrame:CGRectZero];
    [BKrotateBtn setImage:[UIImage imageNamed:@"qmkit_rotate_btn"] forState:UIControlStateNormal];
    [BKrotateBtn setImage:[UIImage imageNamed:@"qmkit_rotate_btn"] forState:UIControlStateHighlighted];
    [self.view addSubview:BKrotateBtn];
    [BKrotateBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.height.mas_equalTo(30);
        make.right.mas_offset(-20);
        make.top.mas_equalTo(BKtopOffset);
    }];
    [[BKrotateBtn rac_signalForControlEvents:UIControlEventTouchUpInside] subscribeNext:^(__kindof UIControl * _Nullable x) {
        [wself.BKstillCamera rotateCamera];
    }];
    UIView *BKbottomBg = [[UIView alloc] initWithFrame:CGRectMake(0, kScreenH-kCameraViewBottomBGHeight, kScreenW, kCameraViewBottomBGHeight)];
    BKbottomBg.backgroundColor = [UIColor colorWithRed:20/255.0 green:20/255.0 blue:20/255.0 alpha:255.0];
    [self.view addSubview:BKbottomBg];
    _BKbottomBg = BKbottomBg;
    _BKtakePhotoBtn = [[UIButton alloc] initWithFrame:CGRectMake(kScreenW/2-kCameraTakePhotoIconSize/2, kScreenH-kCameraViewBottomBGHeight/2-kCameraTakePhotoIconSize/2, kCameraTakePhotoIconSize, kCameraTakePhotoIconSize)];
    [_BKtakePhotoBtn setImage:[UIImage imageNamed:@"qmkit_takephoto_btn"] forState:UIControlStateNormal];
    [_BKtakePhotoBtn setImage:[UIImage imageNamed:@"qmkit_takephoto_btn"] forState:UIControlStateHighlighted];
    [self.view addSubview:_BKtakePhotoBtn];
    [[_BKtakePhotoBtn rac_signalForControlEvents:UIControlEventTouchUpInside] subscribeNext:^(__kindof UIControl * _Nullable x) {
        wself.BKtakePhotoBtn.userInteractionEnabled = NO;
        [wself BKstopCameraCapture];
    }];
    CGFloat BKpicBtnWidth = 25;
    CGFloat BKpicBtnHeight = 30;
    CGFloat BKpicBtnX = kScreenW/2 - kCameraTakePhotoIconSize/2;
    UIButton *BKpicBtn = [[BKQMShakeButton alloc] initWithFrame:CGRectMake(BKpicBtnX/2 - BKpicBtnWidth/2, kScreenH-kCameraViewBottomBGHeight/2 - BKpicBtnWidth/2, BKpicBtnWidth, BKpicBtnHeight)];
    BKpicBtn.layer.borderWidth = 1.3f;
    [BKpicBtn setImage:[UIImage imageNamed:@"qmkit_photo_back"] forState:UIControlStateNormal];
    [BKpicBtn setImage:[UIImage imageNamed:@"qmkit_photo_back"] forState:UIControlStateHighlighted];
    [self.view addSubview:BKpicBtn];
    _BKpicBtn = BKpicBtn;
    [[BKpicBtn rac_signalForControlEvents:UIControlEventTouchUpInside] subscribeNext:^(__kindof UIControl * _Nullable x) {
        [self dismissViewControllerAnimated:YES completion:nil];
    }];
    CGFloat BKfilterSize = 35;
    CGFloat BKfilterX = kScreenW/2 - kCameraTakePhotoIconSize/2;
    UIButton *BKfilterBtn = [[BKQMShakeButton alloc] initWithFrame:CGRectMake(kScreenW - BKfilterX/2 - BKfilterSize/2, kScreenH-kCameraViewBottomBGHeight/2 - BKfilterSize/2, BKfilterSize, BKfilterSize)];
    [BKfilterBtn setImage:[UIImage imageNamed:@"qmkit_fiter_btn"] forState:UIControlStateNormal];
    [BKfilterBtn setImage:[UIImage imageNamed:@"qmkit_fiter_btn"] forState:UIControlStateHighlighted];
    [self.view addSubview:BKfilterBtn];
    [[BKfilterBtn rac_signalForControlEvents:UIControlEventTouchUpInside] subscribeNext:^(__kindof UIControl * _Nullable x) {
        [wself.BKcameraFilterView BKtoggleInView:wself.view];
    }];
    [[self BKcameraFilterView] setBKfilterItemClickBlock:^(BKQMFilterModel *item, NSInteger selectIndex) {
        wself.BKcurrentSwipeFilterIndex = selectIndex;
        [wself.BKstillCamera removeAllTargets];
        wself.BKfilter = [[BKQMImageFilter alloc] initWithFilterModel:item];
        [(BKQMImageFilter *)self.BKfilter setAlpha:item.currentAlphaValue];
        [wself.BKstillCamera addTarget:self->_BKfilter];
        [wself.BKfilter addTarget:self->_BKimageView];
    }];
    [[self BKcameraFilterView] setBKfilterValueDidChangeBlock:^(CGFloat value) {
        
    }];
    [[self BKcameraFilterView] setBKfilterValueDidChangeBlock:^(CGFloat value) {
        [UIView animateWithDuration:0.3f animations:^{
            BKpicBtn.alpha = 0.0f;
            BKfilterBtn.alpha = 0.0f;
            wself.BKtakePhotoBtn.frame = CGRectMake(kScreenW/2-kCameraTakePhotoIconSize/4, kScreenH-kCameraViewBottomBGHeight/2-kCameraTakePhotoIconSize/4, kCameraTakePhotoIconSize/2, kCameraTakePhotoIconSize/2);
        } completion:^(BOOL BKfinished) {
            [UIView animateWithDuration:0.1f animations:^{
                wself.BKtakePhotoBtn.frame = CGRectMake(kScreenW/2-kCameraTakePhotoIconSize/4, kScreenH - (kCameraViewBottomBGHeight - 84)/2-kCameraTakePhotoIconSize/4, kCameraTakePhotoIconSize/2, kCameraTakePhotoIconSize/2);
            } completion:^(BOOL BKfinished) {
                [wself.view bringSubviewToFront:wself.BKtakePhotoBtn];
            }];
        }];
    }];
    [[self BKcameraFilterView] setBKfilterWillHideBlock:^{
        [wself.BKtakePhotoBtn removeFromSuperview];
        [wself.view insertSubview:wself.BKtakePhotoBtn belowSubview:[self BKcameraFilterView]];
        [UIView animateWithDuration:0.2f animations:^{
            wself.BKtakePhotoBtn.frame = CGRectMake(kScreenW/2-kCameraTakePhotoIconSize/4, kScreenH-kCameraViewBottomBGHeight/2-kCameraTakePhotoIconSize/4, kCameraTakePhotoIconSize/2, kCameraTakePhotoIconSize/2);
        } completion:^(BOOL BKfinished) {
            [UIView animateWithDuration:0.3f animations:^{
                BKpicBtn.alpha = 1.0f;
                BKfilterBtn.alpha = 1.0f;
                wself.BKtakePhotoBtn.frame = CGRectMake(kScreenW/2-kCameraTakePhotoIconSize/2, kScreenH-kCameraViewBottomBGHeight/2-kCameraTakePhotoIconSize/2, kCameraTakePhotoIconSize, kCameraTakePhotoIconSize);
            }];
        }];
    }];
}
- (void)BKsetupCamera
{
    _BKstillCamera = [[BKCKStillCamera alloc] init];
    _BKstillCamera.outputImageOrientation = UIInterfaceOrientationPortrait;
    _BKfilter = [[GPUImageCropFilter alloc] init];
    [_BKstillCamera addTarget:_BKfilter];
    [_BKfilter addTarget:_BKimageView];
    weakSelf();
    [self.BKstillCamera setBKISOAdjustingBlock:^(BOOL BKadjust) {
        if (!BKadjust) {
            [wself.BKcameraFocusView setBKISO:wself.BKstillCamera.BKcurrentISOPercentage];
        }
    }];
}
#pragma mark - PrivateMethod
- (void)BKstartCameraCapture
{
    runAsynchronouslyOnVideoProcessingQueue(^{
        [self.BKstillCamera BKsetFlashModel:self.BKcurrentFlashModel];
        [self.BKstillCamera BKsetTorchModel:self.BKcurrentTorchModel];
        [self.BKstillCamera BKsetWhiteBalanceMode:AVCaptureWhiteBalanceModeAutoWhiteBalance];
        [self.BKstillCamera BKsetExposeModel:AVCaptureExposureModeContinuousAutoExposure];
        [self.BKstillCamera startCameraCapture];
        dispatch_async(dispatch_get_main_queue(), ^{
           self.BKtakePhotoBtn.userInteractionEnabled = YES;
        });
    });
}
- (void)BKstopCameraCapture
{
    runAsynchronouslyOnVideoProcessingQueue(^{
        [self->_BKstillCamera capturePhotoAsImageProcessedUpToFilter:self->_BKfilter withCompletionHandler:^(UIImage *processedImage, NSError *error) {
            [self.BKstillCamera stopCameraCapture];
            UIImage *BKimage = [UIImage clipImage: [processedImage fixOrientation] withRatio:self->_BKcurrentCameraViewRatio];
            dispatch_async(dispatch_get_main_queue(), ^{
                self.BKtakePhotoBtn.userInteractionEnabled = YES;
                BKQMPhotoDisplayViewController *BKdisplayVC = [[BKQMPhotoDisplayViewController alloc] init];
                BKdisplayVC.BKimage = BKimage;
                [self.navigationController pushViewController:BKdisplayVC animated:YES];
            });
        }];
    });
}
- (void)BKchoseImageFromPhotoLibrary
{
    RTImagePickerViewController *BKimagePickerController = [RTImagePickerViewController new];
    BKimagePickerController.delegate = self;
    BKimagePickerController.mediaType = RTImagePickerMediaTypeImage;
    BKimagePickerController.showsNumberOfSelectedAssets = YES;
    BKimagePickerController.maximumNumberOfSelection = 2;
    BKimagePickerController.minimumNumberOfSelection = 1;
    [self.navigationController pushViewController:BKimagePickerController animated:YES];
}
- (void)BKasyncLoadLatestImageFromPhotoLib
{
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        [PHAsset latestImageWithSize:CGSizeMake(30, 30) completeBlock:^(UIImage *BKimage) {
            dispatch_async(dispatch_get_main_queue(), ^{
                [_BKpicBtn setImage:BKimage forState:UIControlStateNormal];
                [_BKpicBtn setImage:BKimage forState:UIControlStateHighlighted];
            });
        }];
    });
}
#pragma mark - 方向矫正
- (void)BKfixImageOrientation:(UIImage *)BKimage completionBlock:(void(^)(UIImage *image))BKblock
{
    [BKQMProgressHUD BKshow];
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        UIImage *BKnewImage = [BKimage fixOrientation];
        dispatch_async(dispatch_get_main_queue(), ^{
            [BKQMProgressHUD BKhide];
            if (BKblock) {
                BKblock(BKnewImage);
            }
        });
    });
}
#pragma mark - 调整相机比例
- (void)BKsetCameraRatio:(CGFloat)BKratio
{
    _BKcurrentCameraViewRatio = BKratio;
    float BKscreenWidth = [UIScreen mainScreen].bounds.size.width;
    float BKscreenHeight = [UIScreen mainScreen].bounds.size.height;
    float BKheight = BKscreenWidth * BKratio;
    [UIView animateWithDuration:0.3f animations:^{
        CGFloat BKtopViewHeight = BKscreenHeight-BKheight-kCameraViewBottomBGHeight;
        if (BKtopViewHeight >= 0) {
            self.BKtopBg.frame = CGRectMake(0, 0, BKscreenWidth, BKscreenHeight-BKheight-kCameraViewBottomBGHeight);
            self.BKbottomBg.frame = CGRectMake(0, BKscreenHeight-kCameraViewBottomBGHeight, BKscreenWidth, kCameraViewBottomBGHeight);
            self.BKimageView.frame = CGRectMake(0, BKscreenHeight-BKheight-kCameraViewBottomBGHeight, BKscreenWidth, BKheight);
        }else {
            self.BKtopBg.frame = CGRectMake(0, 0, BKscreenWidth, BKscreenHeight-BKheight);
            self.BKimageView.frame = CGRectMake(0, BKscreenHeight-BKheight, BKscreenWidth, BKheight);
            self.BKbottomBg.frame = CGRectMake(0, BKscreenHeight, BKscreenWidth, kCameraViewBottomBGHeight);
        }
    }];
}
#pragma mark - Getter
- (BKQMCameraRatioSuspensionView *)BKratioSuspensionView
{
    if (!_BKratioSuspensionView) {
        _BKratioSuspensionView = [BKQMCameraRatioSuspensionView BKratioSuspensionView];
    }
    return _BKratioSuspensionView;
}
- (BKQMCameraFlashSuspensionView *)BKflashSuspensionView
{
    if (!_BKflashSuspensionView) {
        _BKflashSuspensionView = [BKQMCameraFlashSuspensionView BKflashSuspensionView];
    }
    return _BKflashSuspensionView;
}
- (BKQMCameraFilterView *)BKcameraFilterView
{
    if (!_BKcameraFilterView) {
        _BKcameraFilterView = [BKQMCameraFilterView BKcameraFilterView];
    }
    return _BKcameraFilterView;
}
- (BKQMCameraFocusView *)BKcameraFocusView
{
    if (!_BKcameraFocusView) {
        weakSelf();
        _BKcameraFocusView = [BKQMCameraFocusView BKfocusView];
        [self.view addSubview:_BKcameraFocusView];
        [_BKcameraFocusView setBKluminanceChangeBlock:^(CGFloat BKvalue) {
            [wself.BKstillCamera BKsetExposureModeCustomWithDuration:kCMTimeZero ISO:BKvalue completionHandler:NULL];
        }];
    }
    return _BKcameraFocusView;
}
#pragma mark - RTImagePickerViewControllerDelegate
- (void)rt_imagePickerController:(RTImagePickerViewController *)imagePickerController didFinishPickingImages:(NSArray<UIImage *> *)images
{
    TOCropViewController *cropViewController = [[TOCropViewController alloc] initWithImage:[images lastObject]];
    cropViewController.delegate = self;
    [imagePickerController.navigationController pushViewController:cropViewController animated:YES];
}
- (void)rt_imagePickerControllerDidCancel:(RTImagePickerViewController *)imagePickerController
{
    [imagePickerController.navigationController popViewControllerAnimated:YES];
}
- (void)rt_imagePickerController:(RTImagePickerViewController *)imagePickerController didSelectAsset:(PHAsset *)asset
{
    [[PHImageManager defaultManager] requestImageDataForAsset:asset options:nil resultHandler:^(NSData * _Nullable imageData, NSString * _Nullable dataUTI, UIImageOrientation orientation, NSDictionary * _Nullable info) {
        TOCropViewController *cropViewController = [[TOCropViewController alloc] initWithImage:[UIImage imageWithData:imageData]];
        cropViewController.aspectRatioPreset = TOCropViewControllerAspectRatioPresetOriginal;
        cropViewController.delegate = self;
        [imagePickerController.navigationController pushViewController:cropViewController animated:YES];
    }];
}
#pragma mark - TOCropViewControllerDelegate
- (void)cropViewController:(nonnull TOCropViewController *)cropViewController didCropToImage:(nonnull UIImage *)image withRect:(CGRect)cropRect angle:(NSInteger)angle
{
    [self BKfixImageOrientation:image completionBlock:^(UIImage *image) {
        BKQMPhotoEffectViewController *photoViewController = [[BKQMPhotoEffectViewController alloc] initWithImage:image];
        [cropViewController.navigationController pushViewController:photoViewController animated:YES];
    }];
}
@end
