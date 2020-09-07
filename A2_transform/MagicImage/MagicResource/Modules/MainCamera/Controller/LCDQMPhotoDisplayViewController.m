#import "LCDQMPhotoDisplayViewController.h"
#import "Constants.h"
#import "LCDQMShakeButton.h"
#import "LCDQMShareManager.h"
#import "LCDQMPhotoEffectViewController.h"
#import "LCDQMProgressHUD.h"
#import <AssetsLibrary/AssetsLibrary.h>
#define kCameraViewBottomBGHeight   ((kScreenH)-(kScreenW)*(4.0f/3.0f))
@interface LCDQMPhotoDisplayViewController ()
@property (nonatomic, strong) UIImageView *LCDimageView;
@property (nonatomic, strong) UIView *LCDbottomBg;
@end
@implementation LCDQMPhotoDisplayViewController
- (void)dealloc
{
    NSLog(@"%s", __func__);
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    [self LCDsetupUI];
    [self LCDsetPhotoRatio];
}
- (BOOL)prefersStatusBarHidden
{
    return YES;
}
#pragma mark - SETUP
- (void)LCDsetupUI
{
    self.view.backgroundColor = [UIColor blackColor];
    [self.navigationController setNavigationBarHidden:YES];
    _LCDimageView = [[UIImageView alloc] initWithFrame:CGRectZero];
    _LCDimageView.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.width*4.0/3.0);
    _LCDimageView.image = _LCDimage;
    [self.view addSubview:_LCDimageView];
    UIView *LCDbottomBg = [[UIView alloc] initWithFrame:CGRectMake(0, kScreenH-kCameraViewBottomBGHeight, kScreenW, kCameraViewBottomBGHeight)];
    LCDbottomBg.backgroundColor = [UIColor colorWithRed:20/255.0 green:20/255.0 blue:20/255.0 alpha:255.0];
    [self.view addSubview:LCDbottomBg];
    _LCDbottomBg = LCDbottomBg;
    UIButton *LCDbackPhotoBtn = [[LCDQMShakeButton alloc] initWithFrame:CGRectMake(kScreenW/6-40/2, kScreenH-kCameraViewBottomBGHeight/2-40/2, 40, 40)];
    [LCDbackPhotoBtn setImage:[UIImage imageNamed:@"qmkit_photo_back"] forState:UIControlStateNormal];
    [LCDbackPhotoBtn setImage:[UIImage imageNamed:@"qmkit_photo_back"] forState:UIControlStateHighlighted];
    [LCDbackPhotoBtn addTarget:self action:@selector(LCDbackPhotoBtnTapped:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:LCDbackPhotoBtn];
    UIButton *LCDsavePhotoBtn = [[LCDQMShakeButton alloc] initWithFrame:CGRectMake(kScreenW/2-70/2, kScreenH-kCameraViewBottomBGHeight/2-80/2, 80, 80)];
    [LCDsavePhotoBtn setImage:[UIImage imageNamed:@"qmkit_save_photo_btn"] forState:UIControlStateNormal];
    [LCDsavePhotoBtn setImage:[UIImage imageNamed:@"qmkit_save_photo_btn"] forState:UIControlStateHighlighted];
    [self.view addSubview:LCDsavePhotoBtn];
    [LCDsavePhotoBtn addTarget:self action:@selector(LCDsavePhotoBtnTapped:) forControlEvents:UIControlEventTouchUpInside];
    UIButton *LCDfilterPhotoBtn = [[LCDQMShakeButton alloc] initWithFrame:CGRectMake(kScreenW/6*4, kScreenH-kCameraViewBottomBGHeight/2-35/2, 35, 35)];
    [LCDfilterPhotoBtn setImage:[UIImage imageNamed:@"qmkit_photo_filter"] forState:UIControlStateNormal];
    [LCDfilterPhotoBtn setImage:[UIImage imageNamed:@"qmkit_photo_filter"] forState:UIControlStateHighlighted];
    [LCDfilterPhotoBtn addTarget:self action:@selector(LCDfilterPhotoBtnTapped:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:LCDfilterPhotoBtn];
}
- (void)LCDsetPhotoRatio
{
    CGFloat LCDratio = (float)CGImageGetHeight(_LCDimage.CGImage)/(float)CGImageGetWidth(_LCDimage.CGImage);
    float LCDscreenWidth = [UIScreen mainScreen].bounds.size.width;
    float LCDscreenHeight = [UIScreen mainScreen].bounds.size.height;
    float LCDheight = LCDscreenWidth * LCDratio;
    CGFloat LCDtopHeight = LCDscreenHeight-LCDheight-kCameraViewBottomBGHeight;
    if (LCDtopHeight >= 0) {
        self.LCDbottomBg.frame = CGRectMake(0, LCDscreenHeight-kCameraViewBottomBGHeight, LCDscreenWidth, kCameraViewBottomBGHeight);
        self.LCDimageView.frame = CGRectMake(0, LCDscreenHeight-LCDheight-kCameraViewBottomBGHeight, LCDscreenWidth, LCDheight);
    }else {
        self.LCDimageView.frame = CGRectMake(0, LCDscreenHeight-LCDheight, LCDscreenWidth, LCDheight);
        self.LCDbottomBg.frame = CGRectMake(0, LCDscreenHeight, LCDscreenWidth, kCameraViewBottomBGHeight);
    }
}
- (void)LCDsaveImage
{
    [LCDQMProgressHUD LCDshow];
    ALAssetsLibrary *LCDassetsLib = [[ALAssetsLibrary alloc] init];
    [LCDassetsLib writeImageToSavedPhotosAlbum:_LCDimage.CGImage
                                orientation:(NSInteger)_LCDimage.imageOrientation
                            completionBlock:^(NSURL *assetURL, NSError *error) {
                                [LCDQMProgressHUD LCDhide];
                                dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                                    [MBProgressHUD showTipMessageInWindow:@"Save Success"];
                                });
                            }];
}
#pragma mark - PublicMethod
- (void)setLCDimage:(UIImage *)LCDimage
{
    _LCDimage = LCDimage;
    _LCDimageView.image = _LCDimage;
}
#pragma mark - Event
- (void)LCDbackPhotoBtnTapped:(UIButton *)LCDsender
{
    [self.navigationController popViewControllerAnimated:YES];
}
- (void)LCDsavePhotoBtnTapped:(UIButton *)LCDsender
{
    [self LCDsaveImage];
}
- (void)LCDfilterPhotoBtnTapped:(UIButton *)LCDsender
{
    LCDQMPhotoEffectViewController *LCDphotoEdit = [[LCDQMPhotoEffectViewController alloc] initWithImage:self.LCDimage];
    [self.navigationController pushViewController:LCDphotoEdit animated:YES];
}
- (void)LCDsharePhotoBtnTapped:(UIButton *)LCDLCDsender
{
    [LCDQMShareManager LCDshareThumbImage:self.LCDimage inViewController:self];
}
@end
