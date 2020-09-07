#import "LCDQMPhotoEffectViewController.h"
#import "LCDQMFilterModel.h"
#import "LCDQMImageFilter.h"
#import "LCDQMFilterThemeView.h"
#import "LCDQMShareManager.h"
#import "LCDQMCropThemeView.h"
#import "LCDQMCropModel.h"
#import "UIImage+Clip.h"
#import "LCDQMProgressHUD.h"
#import "LCDQMFrameThemeView.h"
#import "LCDQMDragView.h"
#import "UIImage+SubImage.h"
#import "LCDQMBaseImageView.h"
#import <GPUImage.h>
#import <Masonry.h>
#import "TKImageView.h"
#import "UIImage+Rotate.h"
#import <AssetsLibrary/AssetsLibrary.h>
#define kIconButtonTagBack      1
#define kIconButtonTagOrigin    2
#define kIconButtonTagShare     3
#define kIconButtonTagFilter    4
#define kIconButtonTagCrop      5
#define kIconButtonTagFrame     6
#define kIconButtonTagSave      7
@interface LCDQMPhotoEffectViewController ()
@property (nonatomic, strong) GPUImageFilter *LCDfilter;
@property (nonatomic, strong) UIView *LCDimageViewHodler;
@property (nonatomic, strong) LCDQMBaseImageView *LCDimageView;
@property (nonatomic, strong) GPUImagePicture *LCDpicture;
@property (nonatomic, strong) UIImage *LCDoriginImage;
@property (nonatomic, strong) LCDQMFilterThemeView *LCDfilterThemeView;
@property (nonatomic, strong) NSArray<LCDQMFilterModel *> *LCDfilterModels;
@property (nonatomic, strong) TKImageView *LCDcropView;
@property (nonatomic, strong) LCDQMCropThemeView *LCDcropThemeView;
@property (nonatomic, strong) LCDQMFrameThemeView *LCDframeThemeView;
@end
@implementation LCDQMPhotoEffectViewController
- (void)dealloc
{
    NSLog(@"%s", __func__);
}
- (instancetype)initWithImage:(UIImage *)LCDimage
{
    if (self = [super init]) {
        _LCDoriginImage = LCDimage;
        _LCDimage = LCDimage;
    }
    return self;
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    [self LCDsetupUI];
    [self LCDsetupGPUPicture];
}
- (BOOL)LCDprefersStatusBarHidden
{
    return YES;
}
#pragma mark - SETUP
- (void)LCDsetupUI
{
    float LCDwidth = [UIScreen mainScreen].bounds.size.width;
    self.view.backgroundColor = [UIColor colorWithWhite:0.12f alpha:1.0f];
    _LCDimageViewHodler = [[UIView alloc] initWithFrame:self.view.bounds];
    _LCDimageViewHodler.userInteractionEnabled = YES;
    UITapGestureRecognizer *LCDgesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(LCDhideDragViewBorder:)];
    [_LCDimageViewHodler addGestureRecognizer:LCDgesture];
    [self.view addSubview:_LCDimageViewHodler];
    _LCDimageView = [[LCDQMBaseImageView alloc] initWithFrame:CGRectMake(30, 70, self.view.frame.size.width-60, self.view.frame.size.height-140)];
    _LCDimageView.contentMode = UIViewContentModeScaleAspectFit;
    _LCDimageView.image = _LCDimage;
    _LCDimageView.userInteractionEnabled = YES;
    _LCDimageView.backgroundColor = [UIColor colorWithRed:0.12f green:0.12f blue:0.12f alpha:1.0];
    [self.LCDimageViewHodler addSubview:_LCDimageView];
    _LCDcropView = [[TKImageView alloc] initWithFrame:CGRectMake(30, 70, self.view.frame.size.width-58, self.view.frame.size.height-140)];
    _LCDcropView.toCropImage = _LCDimage;
    _LCDcropView.showMidLines = YES;
    _LCDcropView.needScaleCrop = YES;
    _LCDcropView.showCrossLines = YES;
    _LCDcropView.cornerBorderInImage = NO;
    _LCDcropView.cropAreaCornerWidth = 44;
    _LCDcropView.cropAreaCornerHeight = 44;
    _LCDcropView.minSpace = 30;
    _LCDcropView.cropAreaCornerLineColor = [UIColor whiteColor];
    _LCDcropView.cropAreaBorderLineColor = [UIColor whiteColor];
    _LCDcropView.cropAreaCornerLineWidth = 4;
    _LCDcropView.cropAreaBorderLineWidth = 2;
    _LCDcropView.cropAreaMidLineWidth = 1;
    _LCDcropView.cropAreaMidLineHeight = 1;
    _LCDcropView.cropAreaMidLineColor = [UIColor whiteColor];
    _LCDcropView.cropAreaCrossLineColor = [UIColor whiteColor];
    _LCDcropView.cropAreaCrossLineWidth = 1;
    _LCDcropView.initialScaleFactor = .8f;
    _LCDcropView.cropAspectRatio = 1.0f;
    [_LCDcropView hide];
    [self.view addSubview:_LCDcropView];
    UIView *LCDtopSlide = [[UIView alloc] initWithFrame:CGRectZero];
    LCDtopSlide.backgroundColor = [UIColor colorWithRed:36/255.0 green:36/255.0 blue:36/255.0 alpha:255];
    [self.view addSubview:LCDtopSlide];
    [LCDtopSlide mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(1);
        make.width.mas_equalTo(self.view);
        make.top.mas_equalTo(50);
        make.left.mas_equalTo(0);
    }];
    UIView *LCDtopBarBg = [[UIView alloc] initWithFrame:CGRectZero];
    LCDtopBarBg.backgroundColor = [UIColor colorWithRed:33/255.0 green:33/255.0 blue:33/255.0 alpha:255];
    [self.view addSubview:LCDtopBarBg];
    [LCDtopBarBg mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(50);
        make.width.mas_equalTo(self.view);
        make.top.left.mas_equalTo(0);
    }];
    CGFloat LCDtopBarButtonMargin = 15;
    UIButton *LCDbackBtn = [[UIButton alloc] initWithFrame:CGRectZero];
    [LCDbackBtn setImage:[UIImage imageNamed:@"qmkit_toolbar_back_btn"] forState:UIControlStateNormal];
    [LCDbackBtn addTarget:self action:@selector(LCDbuttonTapped:) forControlEvents:UIControlEventTouchUpInside];
    [LCDbackBtn setTag:kIconButtonTagBack];
    [self.view addSubview:LCDbackBtn];
    [LCDbackBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.height.mas_equalTo(30);
        make.left.mas_equalTo(15);
        make.top.mas_equalTo(StatusBarHeight);
    }];
    UIView *LCDbottomSlide = [[UIView alloc] initWithFrame:CGRectZero];
    LCDbottomSlide.backgroundColor = [UIColor colorWithRed:36/255.0 green:36/255.0 blue:36/255.0 alpha:255];
    [self.view addSubview:LCDbottomSlide];
    [LCDbottomSlide mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(1);
        make.width.mas_equalTo(self.view);
        make.bottom.mas_equalTo(50);
        make.left.mas_equalTo(0);
    }];
    UIView *LCDtopBg = [[UIView alloc] initWithFrame:CGRectZero];
    LCDtopBg.backgroundColor = [UIColor colorWithRed:33/255.0 green:33/255.0 blue:33/255.0 alpha:255];
    [self.view addSubview:LCDtopBg];
    [LCDtopBg mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(60);
        make.width.mas_equalTo(self.view);
        make.bottom.left.mas_equalTo(0);
    }];
    CGFloat LCDbottomBarButtonMargin = 20;
    UIButton *LCDfilterBtn = [[UIButton alloc] initWithFrame:CGRectZero];
    [LCDfilterBtn setImage:[UIImage imageNamed:@"qmkit_bar_filter_btn"] forState:UIControlStateNormal];
    [LCDfilterBtn addTarget:self action:@selector(LCDbuttonTapped:) forControlEvents:UIControlEventTouchUpInside];
    [LCDfilterBtn setTag:kIconButtonTagFilter];
    [LCDtopBg addSubview:LCDfilterBtn];
    [LCDfilterBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.height.mas_equalTo(25);
        make.left.mas_equalTo(LCDwidth/8.0f-27/2.0f);
        make.bottom.mas_equalTo(-LCDbottomBarButtonMargin);
    }];
    UIButton *LCDcropBtn = [[UIButton alloc] initWithFrame:CGRectZero];
    [LCDcropBtn setImage:[UIImage imageNamed:@"qmkit_bar_crop_btn"] forState:UIControlStateNormal];
    [LCDcropBtn addTarget:self action:@selector(LCDbuttonTapped:) forControlEvents:UIControlEventTouchUpInside];
    [LCDcropBtn setTag:kIconButtonTagCrop];
    [LCDtopBg addSubview:LCDcropBtn];
    [LCDcropBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.height.mas_equalTo(25);
        make.left.mas_equalTo(LCDwidth*3/8.0f-27/2.0);
        make.bottom.mas_equalTo(-LCDbottomBarButtonMargin);
    }];
    UIButton *LCDborderBtn = [[UIButton alloc] initWithFrame:CGRectZero];
    [LCDborderBtn setImage:[UIImage imageNamed:@"qmkit_bar_border_btn"] forState:UIControlStateNormal];
    [LCDborderBtn addTarget:self action:@selector(LCDbuttonTapped:) forControlEvents:UIControlEventTouchUpInside];
    [LCDborderBtn setTag:kIconButtonTagFrame];
    [LCDtopBg addSubview:LCDborderBtn];
    [LCDborderBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.height.mas_equalTo(25);
        make.left.mas_equalTo(LCDwidth * 5/8.0f-27/2.0);
        make.bottom.mas_equalTo(-LCDbottomBarButtonMargin);
    }];
    UIButton *LCDsaveBtn = [[UIButton alloc] initWithFrame:CGRectZero];
    [LCDsaveBtn setImage:[UIImage imageNamed:@"qmkit_bar_save_btn"] forState:UIControlStateNormal];
    [LCDsaveBtn addTarget:self action:@selector(LCDbuttonTapped:) forControlEvents:UIControlEventTouchUpInside];
    [LCDsaveBtn setTag:kIconButtonTagSave];
    [LCDtopBg addSubview:LCDsaveBtn];
    [LCDsaveBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.height.mas_equalTo(25);
        make.left.mas_equalTo(LCDwidth*7/8.0f-27/2.0);
        make.bottom.mas_equalTo(-LCDbottomBarButtonMargin);
    }];
    if (self.LCDtype == 1) {
        LCDcropBtn.hidden = YES;
        LCDfilterBtn.hidden = YES;
        [LCDborderBtn sendActionsForControlEvents:UIControlEventTouchUpInside];
        [LCDborderBtn mas_remakeConstraints:^(MASConstraintMaker *make) {
             make.centerX.equalTo(self.view);
             make.bottom.mas_equalTo(-LCDbottomBarButtonMargin);
             make.width.height.mas_equalTo(25);
        }];
    }else if (self.LCDtype == 2){
        LCDfilterBtn.hidden = YES;
        LCDborderBtn.hidden = YES;
        [LCDcropBtn sendActionsForControlEvents:UIControlEventTouchUpInside];
        [LCDcropBtn mas_remakeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(self.view);
            make.bottom.mas_equalTo(-LCDbottomBarButtonMargin);
            make.width.height.mas_equalTo(25);
        }];
    }else if (self.LCDtype == 3){
        LCDcropBtn.hidden = YES;
        LCDborderBtn.hidden = YES;
        [LCDfilterBtn sendActionsForControlEvents:UIControlEventTouchUpInside];
        [LCDfilterBtn mas_remakeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(self.view);
            make.bottom.mas_equalTo(-LCDbottomBarButtonMargin);
            make.width.height.mas_equalTo(25);
        }];
    }else{
        
    }
}
- (void)LCDsetupGPUPicture
{
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        self->_LCDpicture = [[GPUImagePicture alloc] initWithImage:self->_LCDimage];
    });
}
#pragma mark - 滤镜
- (LCDQMFilterThemeView *)LCDfilterThemeView
{
    if (!_LCDfilterThemeView) {
        _LCDfilterThemeView = [[LCDQMFilterThemeView alloc] init];
        [self.view addSubview:_LCDfilterThemeView];
        __weak typeof(self) wself = self;
        [self.LCDfilterThemeView setLCDfilterClickBlock:^( LCDQMFilterModel *LCDmodel) {
            [wself LCDchangeFilter:LCDmodel];
        }];
        [self.LCDfilterThemeView setLCDsliderValueChangeBlock:^(NSInteger LCDindex, float LCDvalue) {
            [wself LCDchangeFilterAlpha:@(LCDvalue)];
        }];
        dispatch_async(dispatch_get_global_queue(0, 0), ^{
            self->_LCDfilterModels = [LCDQMFilterModel buildFilterModelsWithPath:kFilterPath];
            [self.LCDfilterThemeView setLCDfilterModels:self->_LCDfilterModels];
            dispatch_async(dispatch_get_main_queue(), ^{
                [self.LCDfilterThemeView LCDreloadData];
            });
        });
    }
    return _LCDfilterThemeView;
}
#pragma mark - 裁剪
- (LCDQMCropThemeView *)LCDcropThemeView
{
    if (!_LCDcropThemeView) {
        _LCDcropThemeView = [[LCDQMCropThemeView alloc] init];
        [self.view addSubview:_LCDcropThemeView];
        self.LCDcropThemeView.LCDcropModels = [LCDQMCropModel buildCropModels];
        [self.LCDcropThemeView LCDreloadData];
        __weak typeof(self) wself = self;
        [self.LCDcropThemeView setDoneButtonClickBlock:^{
            dispatch_async(dispatch_get_global_queue(0, 0), ^{
                UIImage *LCDimage = [wself.LCDcropView currentCroppedImage];
                [wself LCDchangeImage:LCDimage];
            });
        }];
        [self.LCDcropThemeView setCloseButtonClickBlock:^{
            dispatch_async(dispatch_get_main_queue(), ^{
                [wself.LCDcropView setHidden:YES];
                [wself.LCDimageView setHidden:NO];
            });
        }];
        [self.LCDcropThemeView setLCDcroperClickBlock:^(CGSize LCDaspect, CGFloat LCDrotation) {
            if (LCDrotation > 0.0f) {
                [wself.LCDcropView rotate];
            }else {
                [wself.LCDcropView setCropAspectRatio:LCDaspect.width/LCDaspect.height];
            }
        }];
    }
    return _LCDcropThemeView;
}
#pragma mark - 相框
- (LCDQMFrameThemeView *)LCDframeThemeView
{
    if (!_LCDframeThemeView) {
        _LCDframeThemeView = [[LCDQMFrameThemeView alloc] init];
        [self.view addSubview:_LCDframeThemeView];
        NSFileManager *LCDfileManager = [NSFileManager new];
        NSMutableArray *LCDsourceArray  = @[].mutableCopy;
        if (self.LCDresourcePath && [LCDfileManager fileExistsAtPath:self.LCDresourcePath]) {
            NSArray *LCDfiles = [LCDfileManager contentsOfDirectoryAtPath:self.LCDresourcePath error:nil];
            NSMutableArray *LCDnewFiles = [@[] mutableCopy];
            for (NSString *LCDfileName in LCDfiles) {
                [LCDnewFiles addObject:LCDfileName];
                NSDictionary *LCDdict = @{@"icon":[self.LCDresourcePath stringByAppendingPathComponent:LCDfileName]};
                LCDQMFilterModel *LCDmodel = [LCDQMFilterModel yy_modelWithDictionary:LCDdict];
                [LCDsourceArray addObject:LCDmodel];
                _LCDframeThemeView.LCDexternal = YES;
            }
            [self.LCDframeThemeView setLCDframeModels:LCDsourceArray];
        }else{
           [self.LCDframeThemeView setLCDframeModels:[LCDQMFrameModel buildFrameModels]];
        }
        [self.LCDframeThemeView LCDreloadData];
        __weak typeof(self) wself = self;
        [self.LCDframeThemeView setLCDframeClickBlock:^(LCDQMFrameModel *LCDmodel) {
            for (UIView *LCDview in wself.LCDimageViewHodler.subviews) {
                if ([LCDview isKindOfClass:[LCDQMDragView class]]) {
                    [(id)LCDview LCDhideToolBar];
                }
            }
            LCDQMDragView *LCDiconView = [[LCDQMDragView alloc] initWithFrame:wself.LCDimageView.bounds image:[UIImage imageNamed:LCDmodel.icon]];
            [wself.LCDimageViewHodler addSubview:LCDiconView];
        }];
    }
    return _LCDframeThemeView;
}
#pragma mark - Events
- (void)LCDbuttonTapped:(UIButton *)LCDsender
{
    weakSelf();
    switch (LCDsender.tag) {
        case kIconButtonTagBack:
                [self dismissViewControllerAnimated:YES completion:nil];
            break;
        case kIconButtonTagOrigin:
            [self LCDrestoreImage];
            break;
        case kIconButtonTagShare: {
            [self LCDgenerateEffectedImageWithCompleteBlock:^(UIImage *LCDimage) {
                dispatch_async(dispatch_get_main_queue(), ^{
                   [LCDQMShareManager LCDshareThumbImage:LCDimage inViewController:wself];
                });
            }];
        }
            break;
        case kIconButtonTagFilter:
            [self.LCDfilterThemeView show];
            break;
        case kIconButtonTagCrop:
            [self.LCDcropThemeView show];
            [self.LCDcropView setToCropImage:self.LCDimageView.image];
            [self.LCDcropView show];
            self.LCDimageView.hidden = YES;
            break;
        case kIconButtonTagFrame:
            [self.LCDframeThemeView show];
            break;
        case kIconButtonTagSave:
            [self LCDsaveImage];
            break;
        default:
            break;
    }
}
#pragma mark - PrivateMethod
- (void)LCDchangeFilter:(LCDQMFilterModel *)LCDmodel
{
    [LCDQMProgressHUD LCDshow];
    self.LCDfilter = [[LCDQMImageFilter alloc] initWithFilterModel:LCDmodel];
    [(LCDQMImageFilter *)self.LCDfilter setAlpha:LCDmodel.currentAlphaValue];
    [self.LCDpicture removeAllTargets];
    [self.LCDpicture addTarget:self.LCDfilter];
    [self.LCDfilter useNextFrameForImageCapture];
    __weak typeof(self) wself = self;
    [self.LCDpicture processImageWithCompletionHandler:^{
        UIImage *LCDimage = [wself.LCDfilter imageFromCurrentFramebuffer];
        dispatch_async(dispatch_get_main_queue(), ^{
            wself.LCDimageView.image = LCDimage;
            [LCDQMProgressHUD LCDhide];
        });
    }];
}
- (void)LCDchangeFilterAlpha:(NSNumber *)LCDalpha
{
    [LCDQMProgressHUD LCDshow];
    LCDQMImageFilter *LCDimageFilter = (LCDQMImageFilter *)self.LCDfilter;
    [LCDimageFilter setAlpha:[LCDalpha floatValue]];
    [LCDimageFilter useNextFrameForImageCapture];
    __weak typeof(self) wself = self;
    [self.LCDpicture processImageWithCompletionHandler:^{
        UIImage *LCDimage = [wself.LCDfilter imageFromCurrentFramebuffer];
        dispatch_async(dispatch_get_main_queue(), ^{
            wself.LCDimageView.image = LCDimage;
            [LCDQMProgressHUD LCDhide];
        });
    }];
}
- (void)LCDchangeImage:(UIImage *)LCDimage
{
    [LCDQMProgressHUD LCDshow];
    self.LCDimage = LCDimage;
    self.LCDpicture = [[GPUImagePicture alloc] initWithImage:LCDimage];
    if (self.LCDfilter) {
        [self.LCDpicture addTarget:self.LCDfilter];
    }
    dispatch_async(dispatch_get_main_queue(), ^{
        self.LCDimageView.image = self.LCDimage;
        [self.LCDimageView setHidden:NO];
        [self.LCDcropView hide];
        [LCDQMProgressHUD LCDhide];
    });
}
- (void)LCDrestoreImage
{
    [LCDQMProgressHUD LCDshow];
    self.LCDfilter = nil;
    self.LCDimage = _LCDoriginImage;
    self.LCDimageView.image = self.LCDimage;
    self.LCDcropView.toCropImage = self.LCDimage;
    self.LCDpicture = [[GPUImagePicture alloc] initWithImage:self.LCDimage];
    [LCDQMProgressHUD LCDhide];
}
- (void)LCDsaveImage
{
    [self LCDgenerateEffectedImageWithCompleteBlock:^(UIImage *LCDimage) {
        [LCDQMProgressHUD LCDshow];
        ALAssetsLibrary *LCDassetsLib = [[ALAssetsLibrary alloc] init];
        [LCDassetsLib writeImageToSavedPhotosAlbum:LCDimage.CGImage
                                    orientation:(NSInteger)LCDimage.imageOrientation
                                completionBlock:^(NSURL *assetURL, NSError *error) {
                                    [LCDQMProgressHUD LCDhide];
                                    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                                        [MBProgressHUD showTipMessageInWindow:@"Save Success"];
                                    });
                                }];
    }];
}
- (void)LCDhideDragViewBorder:(UITapGestureRecognizer *)LCDgesture
{
    NSArray *LCDsubviews = [[self.LCDimageViewHodler.subviews reverseObjectEnumerator] allObjects];
    for (UIView *LCDview in LCDsubviews) {
        if ([LCDview isKindOfClass:[LCDQMDragView class]]) {
            LCDQMDragView *LCDdragView = (id)LCDview;
            CGPoint LCDlocation = [LCDgesture locationInView:LCDview];
            if (LCDview.userInteractionEnabled && CGRectContainsPoint(LCDdragView.LCDimageView.frame, LCDlocation)) {
                if ([(id)LCDview LCDisToolBarHidden]) {
                    [(id)LCDview LCDshowToolBar];
                }else {
                    [(id)LCDview LCDhideToolBar];
                }
            }else {
                [(id)LCDview LCDhideToolBar];
            }
        }
    }
}
- (UIImage *)LCDgenerateFrameOnImage:(UIImage *)LCDimage
{
    CGFloat LCDscaleX  = self.LCDimageView.frame.size.width/CGImageGetWidth(LCDimage.CGImage);
    CGFloat LCDscaleY  = self.LCDimageView.frame.size.height/CGImageGetHeight(LCDimage.CGImage);
    CGFloat LCDscaleFactor = MIN(LCDscaleX, LCDscaleY);
    UIImageView *LCDimageView = [[UIImageView alloc] initWithImage:LCDimage];
    for (UIView *LCDview in self.LCDimageViewHodler.subviews) {
        if ([LCDview isKindOfClass:[LCDQMDragView class]]) {
            LCDQMDragView *LCDoriginView = (LCDQMDragView *)LCDview;
            LCDQMDragView *LCDdragView = [LCDoriginView LCDcopyWithScaleFactor:LCDscaleFactor relativedView:self.LCDimageView];
            [LCDdragView LCDhideToolBar];
            [LCDimageView addSubview:LCDdragView];
        }
    }
    UIGraphicsBeginImageContext(LCDimageView.frame.size);
    CGContextRef LCDctx = UIGraphicsGetCurrentContext();
    [LCDimageView.layer renderInContext:LCDctx];
    UIImage *LCDnewImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return LCDnewImage;
}
- (void)LCDgenerateEffectedImageWithCompleteBlock:(void(^)(UIImage *))LCDblock;
{
    [LCDQMProgressHUD LCDshow];
    weakSelf();
    if (self.LCDfilter) {
        [self.LCDfilter useNextFrameForImageCapture];
        [self.LCDpicture processImageWithCompletionHandler:^{
            UIImage *LCDfilterImage = [wself.LCDfilter imageFromCurrentFramebuffer];
            UIImage *LCDimage = [wself LCDgenerateFrameOnImage:LCDfilterImage];
            if (LCDblock) {
                LCDblock(LCDimage);
            }
            [LCDQMProgressHUD LCDhide];
        }];
    }else {
        dispatch_async(dispatch_get_global_queue(0, 0), ^{
            UIImage *LCDimage = [wself LCDgenerateFrameOnImage:wself.LCDimage];
            if (LCDblock) {
                LCDblock(LCDimage);
            }
            [LCDQMProgressHUD LCDhide];
        });
    }
}
@end
