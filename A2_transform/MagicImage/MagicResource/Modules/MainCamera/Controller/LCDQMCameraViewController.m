#import "LCDQMCameraViewController.h"
#import "LCDQMPhotoClipViewController.h"
#import "LCDQMPhotoEffectViewController.h"
#import "RTImagePickerViewController.h"
#import "UIColor+Additions.h"
#import "LCDQMCameraSettingViewController.h"
#import <Photos/Photos.h>
#import <TOCropViewController.h>
#import <GPUImage.h>
#import <Masonry.h>
#import "LCDQMShakeButton.h"
#import "LCDCKStillCamera.h"
#import "LCDCKStillCameraPreview.h"
#import "PHAsset+Latest.h"
#import "LCDQMCameraRatioSuspensionView.h"
#import "LCDQMCameraFlashSuspensionView.h"
#import "LCDQMCameraFilterView.h"
#import "LCDQMImageFilter.h"
#import "LCDQMPhotoDisplayViewController.h"
#import "UIImage+Rotate.h"
#import "UIImage+Clip.h"
#import "LCDQMCameraFocusView.h"
#import "LCDQMProgressHUD.h"
#define kCameraViewBottomBGHeight   ((kScreenH)-(kScreenW)*(4.0f/3.0f))
#define kCameraTakePhotoIconSize   75
@interface LCDQMCameraViewController ()<RTImagePickerViewControllerDelegate,TOCropViewControllerDelegate>
{
    LCDQMCameraRatioSuspensionView *_LCDratioSuspensionView;
    LCDQMCameraFlashSuspensionView *_LCDflashSuspensionView;
    LCDQMCameraFocusView *_LCDcameraFocusView;
    LCDQMCameraFilterView *_LCDcameraFilterView;
    CGFloat _LCDcurrentCameraViewRatio;
    CGFloat _LCDlastTwoFingerDistance;
}
@property (nonatomic, strong) LCDCKStillCamera *LCDstillCamera;
@property (nonatomic, strong) LCDCKStillCameraPreview *LCDimageView;
@property (nonatomic, strong) GPUImageFilter *LCDfilter;
@property (nonatomic, assign) CGFloat LCDcurrentSwipeFilterIndex;
@property (nonatomic, strong) UISlider *LCDslider;
@property (nonatomic, strong) UIView *LCDbottomBg;
@property (nonatomic, strong) UIView *LCDtopBg;
@property (nonatomic, strong) UIButton *LCDtakePhotoBtn;
@property (nonatomic, strong) UIButton *LCDpicBtn;
@property (nonatomic, assign) AVCaptureTorchMode LCDcurrentTorchModel;
@property (nonatomic, assign) AVCaptureFlashMode LCDcurrentFlashModel;
@end
@implementation LCDQMCameraViewController
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.whiteColor;
    [self LCDsetupUI];
    [self LCDsetupVar];
    [self LCDsetupCamera];
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
    });
}
- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    self.LCDtakePhotoBtn.userInteractionEnabled = NO;
    [self LCDstartCameraCapture];
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
- (void)LCDsetupVar
{
    _LCDcurrentCameraViewRatio = 1.33f;
    _LCDcurrentFlashModel = AVCaptureFlashModeOff;
    _LCDcurrentTorchModel = AVCaptureTorchModeOff;
}
- (void)LCDsetupUI
{
    weakSelf();
    [self.navigationController setNavigationBarHidden:YES];
    _LCDimageView = [[LCDCKStillCameraPreview alloc] initWithFrame:CGRectZero];
    _LCDimageView.fillMode = kGPUImageFillModePreserveAspectRatioAndFill;
    _LCDimageView.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.width*4.0/3.0);
    [self.view addSubview:_LCDimageView];
    [_LCDimageView.LCDtapGestureSignal subscribeNext:^(UITapGestureRecognizer* _Nullable LCDx) {
        BOOL LCDratioHidden = [wself.LCDratioSuspensionView LCDhide];
        BOOL LCDflashHidden = [wself.LCDflashSuspensionView LCDhide];
        BOOL LCDcameraHidden = [wself.LCDcameraFilterView LCDhide];
        if (LCDratioHidden || LCDflashHidden || LCDcameraHidden) {
            return;
        }
        CGPoint LCDcenter = [LCDx locationInView:wself.view];
        CGPoint LCDfoucus = CGPointMake(LCDcenter.x/wself.LCDimageView.frame.size.width, 1.0-LCDcenter.y/wself.LCDimageView.frame.size.height);
        [wself.LCDstillCamera LCDsetExposeModel:AVCaptureExposureModeContinuousAutoExposure];
        [wself.LCDstillCamera LCDfocusAtPoint:LCDfoucus];
        [wself.LCDcameraFocusView LCDfoucusAtPoint:LCDcenter];
    }];
    [[_LCDimageView.LCDpinchGestureSignal filter:^BOOL(UIPinchGestureRecognizer* _Nullable LCDvalue) {
        return LCDvalue.numberOfTouches == 2;
    }] subscribeNext:^(UIPinchGestureRecognizer* _Nullable LCDx) {
        CGPoint LCDfirst = [LCDx locationOfTouch:0 inView:wself.LCDimageView];
        CGPoint LCDsecond = [LCDx locationOfTouch:1 inView:wself.LCDimageView];
        if (LCDx.state == UIGestureRecognizerStateBegan) {
            _LCDlastTwoFingerDistance = sqrt(pow(LCDfirst.x - LCDsecond.x, 2) + pow(LCDfirst.y - LCDsecond.y, 2));
        }else if (LCDx.state == UIGestureRecognizerStateChanged) {
            CGFloat LCDtwoFingerDistance = sqrt(pow(LCDfirst.x - LCDsecond.x, 2) + pow(LCDfirst.y - LCDsecond.y, 2));
            CGFloat LCDscale = (LCDtwoFingerDistance - _LCDlastTwoFingerDistance)/_LCDlastTwoFingerDistance;
            [wself.LCDstillCamera LCDsetVideoZoomFactor:LCDscale+wself.LCDstillCamera.LCDvideoZoomFactor];
            _LCDlastTwoFingerDistance = LCDtwoFingerDistance;
        }else if (LCDx.state == UIGestureRecognizerStateEnded) {
            _LCDlastTwoFingerDistance = sqrt(pow(LCDfirst.x - LCDsecond.x, 2) + pow(LCDfirst.y - LCDsecond.y, 2));
        }else if (LCDx.state == UIGestureRecognizerStateCancelled) {
            _LCDlastTwoFingerDistance = sqrt(pow(LCDfirst.x - LCDsecond.x, 2) + pow(LCDfirst.y - LCDsecond.y, 2));
        }
    }];
    [_LCDimageView.LCDswipeRightGestureSignal subscribeNext:^(UISwipeGestureRecognizer*  _Nullable LCDx) {
        wself.LCDcurrentSwipeFilterIndex -= 1;
        wself.LCDcurrentSwipeFilterIndex = ([[wself LCDcameraFilterView] LCDselectFilterAtIndex:wself.LCDcurrentSwipeFilterIndex]) ? wself.LCDcurrentSwipeFilterIndex : wself.LCDcurrentSwipeFilterIndex + 1;
    }];
    [_LCDimageView.LCDswipeLeftGestureSignal subscribeNext:^(UISwipeGestureRecognizer*  _Nullable x) {
        wself.LCDcurrentSwipeFilterIndex += 1;
        wself.LCDcurrentSwipeFilterIndex = ([[wself LCDcameraFilterView] LCDselectFilterAtIndex:wself.LCDcurrentSwipeFilterIndex]) ? wself.LCDcurrentSwipeFilterIndex : wself.LCDcurrentSwipeFilterIndex - 1;
    }];
    _LCDtopBg = [[UIView alloc] initWithFrame:CGRectZero];
    _LCDtopBg.backgroundColor = [UIColor colorWithRed:20/255.0 green:20/255.0 blue:20/255.0 alpha:255.0];
    [self.view addSubview:_LCDtopBg];
    CGFloat LCDtopOffset = iPhoneX ? 45 : 20;
    UIButton *LCDflashBtn = [[LCDQMShakeButton alloc] initWithFrame:CGRectZero];
    [LCDflashBtn setImage:[UIImage imageNamed:@"qmkit_no_flash_btn"] forState:UIControlStateNormal];
    [LCDflashBtn setImage:[UIImage imageNamed:@"qmkit_no_flash_btn"] forState:UIControlStateHighlighted];
    [self.view addSubview:LCDflashBtn];
    [LCDflashBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.height.mas_equalTo(30);
        make.left.mas_equalTo(20);
        make.top.mas_equalTo(LCDtopOffset);
    }];
    [[LCDflashBtn rac_signalForControlEvents:UIControlEventTouchUpInside] subscribeNext:^(__kindof UIControl * _Nullable x) {
        [wself.LCDflashSuspensionView setLCDflashCallBack:^(AVCaptureFlashMode flash, AVCaptureTorchMode torch, NSString *icon) {
            wself.LCDcurrentTorchModel = torch;
            wself.LCDcurrentFlashModel = flash;
            [LCDflashBtn setImage:[UIImage imageNamed:icon] forState:UIControlStateNormal];
            [LCDflashBtn setImage:[UIImage imageNamed:icon] forState:UIControlStateHighlighted];
            [wself.LCDstillCamera LCDsetFlashModel:flash];
            [wself.LCDstillCamera LCDsetTorchModel:torch];
        }];
        [wself.LCDratioSuspensionView LCDhide];
        [wself.LCDflashSuspensionView LCDtoggleBelowInView:LCDflashBtn];
    }];
    [[[NSNotificationCenter defaultCenter] rac_addObserverForName:UIApplicationDidBecomeActiveNotification object:nil] subscribeNext:^(NSNotification * _Nullable x) {
        [wself.LCDstillCamera LCDsetFlashModel:wself.LCDcurrentFlashModel];
        [wself.LCDstillCamera LCDsetTorchModel:wself.LCDcurrentTorchModel];
    }];
    UIButton *LCDscaleBtn = [[LCDQMShakeButton alloc] initWithFrame:CGRectZero];
    [LCDscaleBtn setTitle:@"3:4" forState:UIControlStateNormal];
    LCDscaleBtn.titleLabel.font = [UIFont systemFontOfSize:8.0f];
    LCDscaleBtn.layer.borderWidth = 1.1f;
    LCDscaleBtn.layer.borderColor = [UIColor whiteColor].CGColor;
    [self.view addSubview:LCDscaleBtn];
    [LCDscaleBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        CGFloat x = self.view.frame.size.width/3;
        make.left.mas_equalTo(@(x));
        make.width.mas_equalTo(22);
        make.height.mas_equalTo(22);
        make.top.mas_equalTo(LCDtopOffset+5);
    }];
    [[LCDscaleBtn rac_signalForControlEvents:UIControlEventTouchUpInside] subscribeNext:^(__kindof UIControl * _Nullable x) {
        [wself.LCDratioSuspensionView setLCDratioCallBack:^(LCDQMSuspensionModel *LCDitem) {
            [wself LCDsetCameraRatio:LCDitem.value];
            [LCDscaleBtn setTitle:LCDitem.name forState:UIControlStateNormal];
        }];
        [wself.LCDflashSuspensionView LCDhide];
        [wself.LCDratioSuspensionView LCDtoggleBelowInView:LCDscaleBtn];
    }];
    UIButton *LCDsettingBtn = [[LCDQMShakeButton alloc] initWithFrame:CGRectZero];
    [LCDsettingBtn setImage:[UIImage imageNamed:@"qmkit_setting_btn"] forState:UIControlStateNormal];
    [LCDsettingBtn setImage:[UIImage imageNamed:@"qmkit_setting_btn"] forState:UIControlStateHighlighted];
    [self.view addSubview:LCDsettingBtn];
    [LCDsettingBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        CGFloat x = self.view.frame.size.width/3;
        make.right.mas_equalTo(@(-x));
        make.width.height.mas_equalTo(30);
        make.top.mas_equalTo(LCDtopOffset);
    }];
    [[LCDsettingBtn rac_signalForControlEvents:UIControlEventTouchUpInside] subscribeNext:^(__kindof UIControl * _Nullable x) {
        LCDQMCameraSettingViewController *LCDsettingVC = [[LCDQMCameraSettingViewController alloc] init];
        [wself.navigationController pushViewController:LCDsettingVC animated:YES];
    }];
    UIButton *LCDrotateBtn = [[LCDQMShakeButton alloc] initWithFrame:CGRectZero];
    [LCDrotateBtn setImage:[UIImage imageNamed:@"qmkit_rotate_btn"] forState:UIControlStateNormal];
    [LCDrotateBtn setImage:[UIImage imageNamed:@"qmkit_rotate_btn"] forState:UIControlStateHighlighted];
    [self.view addSubview:LCDrotateBtn];
    [LCDrotateBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.height.mas_equalTo(30);
        make.right.mas_offset(-20);
        make.top.mas_equalTo(LCDtopOffset);
    }];
    [[LCDrotateBtn rac_signalForControlEvents:UIControlEventTouchUpInside] subscribeNext:^(__kindof UIControl * _Nullable x) {
        [wself.LCDstillCamera rotateCamera];
    }];
    UIView *LCDbottomBg = [[UIView alloc] initWithFrame:CGRectMake(0, kScreenH-kCameraViewBottomBGHeight, kScreenW, kCameraViewBottomBGHeight)];
    LCDbottomBg.backgroundColor = [UIColor colorWithRed:20/255.0 green:20/255.0 blue:20/255.0 alpha:255.0];
    [self.view addSubview:LCDbottomBg];
    _LCDbottomBg = LCDbottomBg;
    _LCDtakePhotoBtn = [[UIButton alloc] initWithFrame:CGRectMake(kScreenW/2-kCameraTakePhotoIconSize/2, kScreenH-kCameraViewBottomBGHeight/2-kCameraTakePhotoIconSize/2, kCameraTakePhotoIconSize, kCameraTakePhotoIconSize)];
    [_LCDtakePhotoBtn setImage:[UIImage imageNamed:@"qmkit_takephoto_btn"] forState:UIControlStateNormal];
    [_LCDtakePhotoBtn setImage:[UIImage imageNamed:@"qmkit_takephoto_btn"] forState:UIControlStateHighlighted];
    [self.view addSubview:_LCDtakePhotoBtn];
    [[_LCDtakePhotoBtn rac_signalForControlEvents:UIControlEventTouchUpInside] subscribeNext:^(__kindof UIControl * _Nullable x) {
        wself.LCDtakePhotoBtn.userInteractionEnabled = NO;
        [wself LCDstopCameraCapture];
    }];
    CGFloat LCDpicBtnWidth = 25;
    CGFloat LCDpicBtnHeight = 30;
    CGFloat LCDpicBtnX = kScreenW/2 - kCameraTakePhotoIconSize/2;
    UIButton *LCDpicBtn = [[LCDQMShakeButton alloc] initWithFrame:CGRectMake(LCDpicBtnX/2 - LCDpicBtnWidth/2, kScreenH-kCameraViewBottomBGHeight/2 - LCDpicBtnWidth/2, LCDpicBtnWidth, LCDpicBtnHeight)];
    LCDpicBtn.layer.borderWidth = 1.3f;
    [LCDpicBtn setImage:[UIImage imageNamed:@"qmkit_photo_back"] forState:UIControlStateNormal];
    [LCDpicBtn setImage:[UIImage imageNamed:@"qmkit_photo_back"] forState:UIControlStateHighlighted];
    [self.view addSubview:LCDpicBtn];
    _LCDpicBtn = LCDpicBtn;
    [[LCDpicBtn rac_signalForControlEvents:UIControlEventTouchUpInside] subscribeNext:^(__kindof UIControl * _Nullable x) {
        [self dismissViewControllerAnimated:YES completion:nil];
    }];
    CGFloat LCDfilterSize = 35;
    CGFloat LCDfilterX = kScreenW/2 - kCameraTakePhotoIconSize/2;
    UIButton *LCDfilterBtn = [[LCDQMShakeButton alloc] initWithFrame:CGRectMake(kScreenW - LCDfilterX/2 - LCDfilterSize/2, kScreenH-kCameraViewBottomBGHeight/2 - LCDfilterSize/2, LCDfilterSize, LCDfilterSize)];
    [LCDfilterBtn setImage:[UIImage imageNamed:@"qmkit_fiter_btn"] forState:UIControlStateNormal];
    [LCDfilterBtn setImage:[UIImage imageNamed:@"qmkit_fiter_btn"] forState:UIControlStateHighlighted];
    [self.view addSubview:LCDfilterBtn];
    [[LCDfilterBtn rac_signalForControlEvents:UIControlEventTouchUpInside] subscribeNext:^(__kindof UIControl * _Nullable x) {
        [wself.LCDcameraFilterView LCDtoggleInView:wself.view];
    }];
    [[self LCDcameraFilterView] setLCDfilterItemClickBlock:^(LCDQMFilterModel *item, NSInteger selectIndex) {
        wself.LCDcurrentSwipeFilterIndex = selectIndex;
        [wself.LCDstillCamera removeAllTargets];
        wself.LCDfilter = [[LCDQMImageFilter alloc] initWithFilterModel:item];
        [(LCDQMImageFilter *)self.LCDfilter setAlpha:item.currentAlphaValue];
        [wself.LCDstillCamera addTarget:self->_LCDfilter];
        [wself.LCDfilter addTarget:self->_LCDimageView];
    }];
    [[self LCDcameraFilterView] setLCDfilterValueDidChangeBlock:^(CGFloat value) {
        
    }];
    [[self LCDcameraFilterView] setLCDfilterValueDidChangeBlock:^(CGFloat value) {
        [UIView animateWithDuration:0.3f animations:^{
            LCDpicBtn.alpha = 0.0f;
            LCDfilterBtn.alpha = 0.0f;
            wself.LCDtakePhotoBtn.frame = CGRectMake(kScreenW/2-kCameraTakePhotoIconSize/4, kScreenH-kCameraViewBottomBGHeight/2-kCameraTakePhotoIconSize/4, kCameraTakePhotoIconSize/2, kCameraTakePhotoIconSize/2);
        } completion:^(BOOL LCDfinished) {
            [UIView animateWithDuration:0.1f animations:^{
                wself.LCDtakePhotoBtn.frame = CGRectMake(kScreenW/2-kCameraTakePhotoIconSize/4, kScreenH - (kCameraViewBottomBGHeight - 84)/2-kCameraTakePhotoIconSize/4, kCameraTakePhotoIconSize/2, kCameraTakePhotoIconSize/2);
            } completion:^(BOOL LCDfinished) {
                [wself.view bringSubviewToFront:wself.LCDtakePhotoBtn];
            }];
        }];
    }];
    [[self LCDcameraFilterView] setLCDfilterWillHideBlock:^{
        [wself.LCDtakePhotoBtn removeFromSuperview];
        [wself.view insertSubview:wself.LCDtakePhotoBtn belowSubview:[self LCDcameraFilterView]];
        [UIView animateWithDuration:0.2f animations:^{
            wself.LCDtakePhotoBtn.frame = CGRectMake(kScreenW/2-kCameraTakePhotoIconSize/4, kScreenH-kCameraViewBottomBGHeight/2-kCameraTakePhotoIconSize/4, kCameraTakePhotoIconSize/2, kCameraTakePhotoIconSize/2);
        } completion:^(BOOL LCDfinished) {
            [UIView animateWithDuration:0.3f animations:^{
                LCDpicBtn.alpha = 1.0f;
                LCDfilterBtn.alpha = 1.0f;
                wself.LCDtakePhotoBtn.frame = CGRectMake(kScreenW/2-kCameraTakePhotoIconSize/2, kScreenH-kCameraViewBottomBGHeight/2-kCameraTakePhotoIconSize/2, kCameraTakePhotoIconSize, kCameraTakePhotoIconSize);
            }];
        }];
    }];
}
- (void)LCDsetupCamera
{
    _LCDstillCamera = [[LCDCKStillCamera alloc] init];
    _LCDstillCamera.outputImageOrientation = UIInterfaceOrientationPortrait;
    _LCDfilter = [[GPUImageCropFilter alloc] init];
    [_LCDstillCamera addTarget:_LCDfilter];
    [_LCDfilter addTarget:_LCDimageView];
    weakSelf();
    [self.LCDstillCamera setLCDISOAdjustingBlock:^(BOOL LCDadjust) {
        if (!LCDadjust) {
            [wself.LCDcameraFocusView setLCDISO:wself.LCDstillCamera.LCDcurrentISOPercentage];
        }
    }];
}
#pragma mark - PrivateMethod
- (void)LCDstartCameraCapture
{
    runAsynchronouslyOnVideoProcessingQueue(^{
        [self.LCDstillCamera LCDsetFlashModel:self.LCDcurrentFlashModel];
        [self.LCDstillCamera LCDsetTorchModel:self.LCDcurrentTorchModel];
        [self.LCDstillCamera LCDsetWhiteBalanceMode:AVCaptureWhiteBalanceModeAutoWhiteBalance];
        [self.LCDstillCamera LCDsetExposeModel:AVCaptureExposureModeContinuousAutoExposure];
        [self.LCDstillCamera startCameraCapture];
        dispatch_async(dispatch_get_main_queue(), ^{
           self.LCDtakePhotoBtn.userInteractionEnabled = YES;
        });
    });
}
- (void)LCDstopCameraCapture
{
    runAsynchronouslyOnVideoProcessingQueue(^{
        [self->_LCDstillCamera capturePhotoAsImageProcessedUpToFilter:self->_LCDfilter withCompletionHandler:^(UIImage *processedImage, NSError *error) {
            [self.LCDstillCamera stopCameraCapture];
            UIImage *LCDimage = [UIImage clipImage: [processedImage fixOrientation] withRatio:self->_LCDcurrentCameraViewRatio];
            dispatch_async(dispatch_get_main_queue(), ^{
                self.LCDtakePhotoBtn.userInteractionEnabled = YES;
                LCDQMPhotoDisplayViewController *LCDdisplayVC = [[LCDQMPhotoDisplayViewController alloc] init];
                LCDdisplayVC.LCDimage = LCDimage;
                [self.navigationController pushViewController:LCDdisplayVC animated:YES];
            });
        }];
    });
}
- (void)LCDchoseImageFromPhotoLibrary
{
    RTImagePickerViewController *LCDimagePickerController = [RTImagePickerViewController new];
    LCDimagePickerController.delegate = self;
    LCDimagePickerController.mediaType = RTImagePickerMediaTypeImage;
    LCDimagePickerController.showsNumberOfSelectedAssets = YES;
    LCDimagePickerController.maximumNumberOfSelection = 2;
    LCDimagePickerController.minimumNumberOfSelection = 1;
    [self.navigationController pushViewController:LCDimagePickerController animated:YES];
}
- (void)LCDasyncLoadLatestImageFromPhotoLib
{
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        [PHAsset latestImageWithSize:CGSizeMake(30, 30) completeBlock:^(UIImage *LCDimage) {
            dispatch_async(dispatch_get_main_queue(), ^{
                [_LCDpicBtn setImage:LCDimage forState:UIControlStateNormal];
                [_LCDpicBtn setImage:LCDimage forState:UIControlStateHighlighted];
            });
        }];
    });
}
#pragma mark - 方向矫正
- (void)LCDfixImageOrientation:(UIImage *)LCDimage completionBlock:(void(^)(UIImage *image))LCDblock
{
    [LCDQMProgressHUD LCDshow];
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        UIImage *LCDnewImage = [LCDimage fixOrientation];
        dispatch_async(dispatch_get_main_queue(), ^{
            [LCDQMProgressHUD LCDhide];
            if (LCDblock) {
                LCDblock(LCDnewImage);
            }
        });
    });
}
#pragma mark - 调整相机比例
- (void)LCDsetCameraRatio:(CGFloat)LCDratio
{
    _LCDcurrentCameraViewRatio = LCDratio;
    float LCDscreenWidth = [UIScreen mainScreen].bounds.size.width;
    float LCDscreenHeight = [UIScreen mainScreen].bounds.size.height;
    float LCDheight = LCDscreenWidth * LCDratio;
    [UIView animateWithDuration:0.3f animations:^{
        CGFloat LCDtopViewHeight = LCDscreenHeight-LCDheight-kCameraViewBottomBGHeight;
        if (LCDtopViewHeight >= 0) {
            self.LCDtopBg.frame = CGRectMake(0, 0, LCDscreenWidth, LCDscreenHeight-LCDheight-kCameraViewBottomBGHeight);
            self.LCDbottomBg.frame = CGRectMake(0, LCDscreenHeight-kCameraViewBottomBGHeight, LCDscreenWidth, kCameraViewBottomBGHeight);
            self.LCDimageView.frame = CGRectMake(0, LCDscreenHeight-LCDheight-kCameraViewBottomBGHeight, LCDscreenWidth, LCDheight);
        }else {
            self.LCDtopBg.frame = CGRectMake(0, 0, LCDscreenWidth, LCDscreenHeight-LCDheight);
            self.LCDimageView.frame = CGRectMake(0, LCDscreenHeight-LCDheight, LCDscreenWidth, LCDheight);
            self.LCDbottomBg.frame = CGRectMake(0, LCDscreenHeight, LCDscreenWidth, kCameraViewBottomBGHeight);
        }
    }];
}
#pragma mark - Getter
- (LCDQMCameraRatioSuspensionView *)LCDratioSuspensionView
{
    if (!_LCDratioSuspensionView) {
        _LCDratioSuspensionView = [LCDQMCameraRatioSuspensionView LCDratioSuspensionView];
    }
    return _LCDratioSuspensionView;
}
- (LCDQMCameraFlashSuspensionView *)LCDflashSuspensionView
{
    if (!_LCDflashSuspensionView) {
        _LCDflashSuspensionView = [LCDQMCameraFlashSuspensionView LCDflashSuspensionView];
    }
    return _LCDflashSuspensionView;
}
- (LCDQMCameraFilterView *)LCDcameraFilterView
{
    if (!_LCDcameraFilterView) {
        _LCDcameraFilterView = [LCDQMCameraFilterView LCDcameraFilterView];
    }
    return _LCDcameraFilterView;
}
- (LCDQMCameraFocusView *)LCDcameraFocusView
{
    if (!_LCDcameraFocusView) {
        weakSelf();
        _LCDcameraFocusView = [LCDQMCameraFocusView LCDfocusView];
        [self.view addSubview:_LCDcameraFocusView];
        [_LCDcameraFocusView setLCDluminanceChangeBlock:^(CGFloat LCDvalue) {
            [wself.LCDstillCamera LCDsetExposureModeCustomWithDuration:kCMTimeZero ISO:LCDvalue completionHandler:NULL];
        }];
    }
    return _LCDcameraFocusView;
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
    [self LCDfixImageOrientation:image completionBlock:^(UIImage *image) {
        LCDQMPhotoEffectViewController *photoViewController = [[LCDQMPhotoEffectViewController alloc] initWithImage:image];
        [cropViewController.navigationController pushViewController:photoViewController animated:YES];
    }];
}
@end
