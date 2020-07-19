#import "BKQMPhotoDisplayViewController.h"
#import "Constants.h"
#import "BKQMShakeButton.h"
#import "BKQMShareManager.h"
#import "BKQMPhotoEffectViewController.h"
#import "BKQMProgressHUD.h"
#import <AssetsLibrary/AssetsLibrary.h>
#define kCameraViewBottomBGHeight   ((kScreenH)-(kScreenW)*(4.0f/3.0f))
@interface BKQMPhotoDisplayViewController ()
@property (nonatomic, strong) UIImageView *BKimageView;
@property (nonatomic, strong) UIView *BKbottomBg;
@end
@implementation BKQMPhotoDisplayViewController
- (void)dealloc
{
    NSLog(@"%s", __func__);
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    [self BKsetupUI];
    [self BKsetPhotoRatio];
}
- (BOOL)prefersStatusBarHidden
{
    return YES;
}
#pragma mark - SETUP
- (void)BKsetupUI
{
    self.view.backgroundColor = [UIColor blackColor];
    [self.navigationController setNavigationBarHidden:YES];
    _BKimageView = [[UIImageView alloc] initWithFrame:CGRectZero];
    _BKimageView.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.width*4.0/3.0);
    _BKimageView.image = _BKimage;
    [self.view addSubview:_BKimageView];
    UIView *BKbottomBg = [[UIView alloc] initWithFrame:CGRectMake(0, kScreenH-kCameraViewBottomBGHeight, kScreenW, kCameraViewBottomBGHeight)];
    BKbottomBg.backgroundColor = [UIColor colorWithRed:20/255.0 green:20/255.0 blue:20/255.0 alpha:255.0];
    [self.view addSubview:BKbottomBg];
    _BKbottomBg = BKbottomBg;
    UIButton *BKbackPhotoBtn = [[BKQMShakeButton alloc] initWithFrame:CGRectMake(kScreenW/6-40/2, kScreenH-kCameraViewBottomBGHeight/2-40/2, 40, 40)];
    [BKbackPhotoBtn setImage:[UIImage imageNamed:@"qmkit_photo_back"] forState:UIControlStateNormal];
    [BKbackPhotoBtn setImage:[UIImage imageNamed:@"qmkit_photo_back"] forState:UIControlStateHighlighted];
    [BKbackPhotoBtn addTarget:self action:@selector(BKbackPhotoBtnTapped:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:BKbackPhotoBtn];
    UIButton *BKsavePhotoBtn = [[BKQMShakeButton alloc] initWithFrame:CGRectMake(kScreenW/2-70/2, kScreenH-kCameraViewBottomBGHeight/2-80/2, 80, 80)];
    [BKsavePhotoBtn setImage:[UIImage imageNamed:@"qmkit_save_photo_btn"] forState:UIControlStateNormal];
    [BKsavePhotoBtn setImage:[UIImage imageNamed:@"qmkit_save_photo_btn"] forState:UIControlStateHighlighted];
    [self.view addSubview:BKsavePhotoBtn];
    [BKsavePhotoBtn addTarget:self action:@selector(BKsavePhotoBtnTapped:) forControlEvents:UIControlEventTouchUpInside];
    UIButton *BKfilterPhotoBtn = [[BKQMShakeButton alloc] initWithFrame:CGRectMake(kScreenW/6*4, kScreenH-kCameraViewBottomBGHeight/2-35/2, 35, 35)];
    [BKfilterPhotoBtn setImage:[UIImage imageNamed:@"qmkit_photo_filter"] forState:UIControlStateNormal];
    [BKfilterPhotoBtn setImage:[UIImage imageNamed:@"qmkit_photo_filter"] forState:UIControlStateHighlighted];
    [BKfilterPhotoBtn addTarget:self action:@selector(BKfilterPhotoBtnTapped:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:BKfilterPhotoBtn];
}
- (void)BKsetPhotoRatio
{
    CGFloat BKratio = (float)CGImageGetHeight(_BKimage.CGImage)/(float)CGImageGetWidth(_BKimage.CGImage);
    float BKscreenWidth = [UIScreen mainScreen].bounds.size.width;
    float BKscreenHeight = [UIScreen mainScreen].bounds.size.height;
    float BKheight = BKscreenWidth * BKratio;
    CGFloat BKtopHeight = BKscreenHeight-BKheight-kCameraViewBottomBGHeight;
    if (BKtopHeight >= 0) {
        self.BKbottomBg.frame = CGRectMake(0, BKscreenHeight-kCameraViewBottomBGHeight, BKscreenWidth, kCameraViewBottomBGHeight);
        self.BKimageView.frame = CGRectMake(0, BKscreenHeight-BKheight-kCameraViewBottomBGHeight, BKscreenWidth, BKheight);
    }else {
        self.BKimageView.frame = CGRectMake(0, BKscreenHeight-BKheight, BKscreenWidth, BKheight);
        self.BKbottomBg.frame = CGRectMake(0, BKscreenHeight, BKscreenWidth, kCameraViewBottomBGHeight);
    }
}
- (void)BKsaveImage
{
    [BKQMProgressHUD BKshow];
    ALAssetsLibrary *BKassetsLib = [[ALAssetsLibrary alloc] init];
    [BKassetsLib writeImageToSavedPhotosAlbum:_BKimage.CGImage
                                orientation:(NSInteger)_BKimage.imageOrientation
                            completionBlock:^(NSURL *assetURL, NSError *error) {
                                [BKQMProgressHUD BKhide];
                                dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                                    [MBProgressHUD showTipMessageInWindow:@"Save Success"];
                                });
                            }];
}
#pragma mark - PublicMethod
- (void)setBKimage:(UIImage *)BKimage
{
    _BKimage = BKimage;
    _BKimageView.image = _BKimage;
}
#pragma mark - Event
- (void)BKbackPhotoBtnTapped:(UIButton *)BKsender
{
    [self.navigationController popViewControllerAnimated:YES];
}
- (void)BKsavePhotoBtnTapped:(UIButton *)BKsender
{
    [self BKsaveImage];
}
- (void)BKfilterPhotoBtnTapped:(UIButton *)BKsender
{
    BKQMPhotoEffectViewController *BKphotoEdit = [[BKQMPhotoEffectViewController alloc] initWithImage:self.BKimage];
    [self.navigationController pushViewController:BKphotoEdit animated:YES];
}
- (void)BKsharePhotoBtnTapped:(UIButton *)BKBKsender
{
    [BKQMShareManager BKshareThumbImage:self.BKimage inViewController:self];
}
@end
