#import "BKQMPhotoEffectViewController.h"
#import "BKQMFilterModel.h"
#import "BKQMImageFilter.h"
#import "BKQMFilterThemeView.h"
#import "BKQMShareManager.h"
#import "BKQMCropThemeView.h"
#import "BKQMCropModel.h"
#import "UIImage+Clip.h"
#import "BKQMProgressHUD.h"
#import "BKQMFrameThemeView.h"
#import "BKQMDragView.h"
#import "UIImage+SubImage.h"
#import "BKQMBaseImageView.h"
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
@interface BKQMPhotoEffectViewController ()
@property (nonatomic, strong) GPUImageFilter *BKfilter;
@property (nonatomic, strong) UIView *BKimageViewHodler;
@property (nonatomic, strong) BKQMBaseImageView *BKimageView;
@property (nonatomic, strong) GPUImagePicture *BKpicture;
@property (nonatomic, strong) UIImage *BKoriginImage;
@property (nonatomic, strong) BKQMFilterThemeView *BKfilterThemeView;
@property (nonatomic, strong) NSArray<BKQMFilterModel *> *BKfilterModels;
@property (nonatomic, strong) TKImageView *BKcropView;
@property (nonatomic, strong) BKQMCropThemeView *BKcropThemeView;
@property (nonatomic, strong) BKQMFrameThemeView *BKframeThemeView;
@end
@implementation BKQMPhotoEffectViewController
- (void)dealloc
{
    NSLog(@"%s", __func__);
}
- (instancetype)initWithImage:(UIImage *)BKimage
{
    if (self = [super init]) {
        _BKoriginImage = BKimage;
        _BKimage = BKimage;
    }
    return self;
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    [self BKsetupUI];
    [self BKsetupGPUPicture];
}
- (BOOL)BKprefersStatusBarHidden
{
    return YES;
}
#pragma mark - SETUP
- (void)BKsetupUI
{
    float BKwidth = [UIScreen mainScreen].bounds.size.width;
    self.view.backgroundColor = [UIColor colorWithWhite:0.12f alpha:1.0f];
    _BKimageViewHodler = [[UIView alloc] initWithFrame:self.view.bounds];
    _BKimageViewHodler.userInteractionEnabled = YES;
    UITapGestureRecognizer *BKgesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(BKhideDragViewBorder:)];
    [_BKimageViewHodler addGestureRecognizer:BKgesture];
    [self.view addSubview:_BKimageViewHodler];
    _BKimageView = [[BKQMBaseImageView alloc] initWithFrame:CGRectMake(30, 70, self.view.frame.size.width-60, self.view.frame.size.height-140)];
    _BKimageView.contentMode = UIViewContentModeScaleAspectFit;
    _BKimageView.image = _BKimage;
    _BKimageView.userInteractionEnabled = YES;
    _BKimageView.backgroundColor = [UIColor colorWithRed:0.12f green:0.12f blue:0.12f alpha:1.0];
    [self.BKimageViewHodler addSubview:_BKimageView];
    _BKcropView = [[TKImageView alloc] initWithFrame:CGRectMake(30, 70, self.view.frame.size.width-58, self.view.frame.size.height-140)];
    _BKcropView.toCropImage = _BKimage;
    _BKcropView.showMidLines = YES;
    _BKcropView.needScaleCrop = YES;
    _BKcropView.showCrossLines = YES;
    _BKcropView.cornerBorderInImage = NO;
    _BKcropView.cropAreaCornerWidth = 44;
    _BKcropView.cropAreaCornerHeight = 44;
    _BKcropView.minSpace = 30;
    _BKcropView.cropAreaCornerLineColor = [UIColor whiteColor];
    _BKcropView.cropAreaBorderLineColor = [UIColor whiteColor];
    _BKcropView.cropAreaCornerLineWidth = 4;
    _BKcropView.cropAreaBorderLineWidth = 2;
    _BKcropView.cropAreaMidLineWidth = 1;
    _BKcropView.cropAreaMidLineHeight = 1;
    _BKcropView.cropAreaMidLineColor = [UIColor whiteColor];
    _BKcropView.cropAreaCrossLineColor = [UIColor whiteColor];
    _BKcropView.cropAreaCrossLineWidth = 1;
    _BKcropView.initialScaleFactor = .8f;
    _BKcropView.cropAspectRatio = 1.0f;
    [_BKcropView hide];
    [self.view addSubview:_BKcropView];
    UIView *BKtopSlide = [[UIView alloc] initWithFrame:CGRectZero];
    BKtopSlide.backgroundColor = [UIColor colorWithRed:36/255.0 green:36/255.0 blue:36/255.0 alpha:255];
    [self.view addSubview:BKtopSlide];
    [BKtopSlide mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(1);
        make.width.mas_equalTo(self.view);
        make.top.mas_equalTo(50);
        make.left.mas_equalTo(0);
    }];
    UIView *BKtopBarBg = [[UIView alloc] initWithFrame:CGRectZero];
    BKtopBarBg.backgroundColor = [UIColor colorWithRed:33/255.0 green:33/255.0 blue:33/255.0 alpha:255];
    [self.view addSubview:BKtopBarBg];
    [BKtopBarBg mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(50);
        make.width.mas_equalTo(self.view);
        make.top.left.mas_equalTo(0);
    }];
    CGFloat BKtopBarButtonMargin = 15;
    UIButton *BKbackBtn = [[UIButton alloc] initWithFrame:CGRectZero];
    [BKbackBtn setImage:[UIImage imageNamed:@"qmkit_toolbar_back_btn"] forState:UIControlStateNormal];
    [BKbackBtn addTarget:self action:@selector(BKbuttonTapped:) forControlEvents:UIControlEventTouchUpInside];
    [BKbackBtn setTag:kIconButtonTagBack];
    [self.view addSubview:BKbackBtn];
    [BKbackBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.height.mas_equalTo(30);
        make.left.mas_equalTo(15);
        make.top.mas_equalTo(BKtopBarButtonMargin);
    }];
    UIView *BKbottomSlide = [[UIView alloc] initWithFrame:CGRectZero];
    BKbottomSlide.backgroundColor = [UIColor colorWithRed:36/255.0 green:36/255.0 blue:36/255.0 alpha:255];
    [self.view addSubview:BKbottomSlide];
    [BKbottomSlide mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(1);
        make.width.mas_equalTo(self.view);
        make.bottom.mas_equalTo(50);
        make.left.mas_equalTo(0);
    }];
    UIView *BKtopBg = [[UIView alloc] initWithFrame:CGRectZero];
    BKtopBg.backgroundColor = [UIColor colorWithRed:33/255.0 green:33/255.0 blue:33/255.0 alpha:255];
    [self.view addSubview:BKtopBg];
    [BKtopBg mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(60);
        make.width.mas_equalTo(self.view);
        make.bottom.left.mas_equalTo(0);
    }];
    CGFloat BKbottomBarButtonMargin = 20;
    UIButton *BKfilterBtn = [[UIButton alloc] initWithFrame:CGRectZero];
    [BKfilterBtn setImage:[UIImage imageNamed:@"qmkit_bar_filter_btn"] forState:UIControlStateNormal];
    [BKfilterBtn addTarget:self action:@selector(BKbuttonTapped:) forControlEvents:UIControlEventTouchUpInside];
    [BKfilterBtn setTag:kIconButtonTagFilter];
    [BKtopBg addSubview:BKfilterBtn];
    [BKfilterBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.height.mas_equalTo(25);
        make.left.mas_equalTo(BKwidth/8.0f-27/2.0f);
        make.bottom.mas_equalTo(-BKbottomBarButtonMargin);
    }];
    UIButton *BKcropBtn = [[UIButton alloc] initWithFrame:CGRectZero];
    [BKcropBtn setImage:[UIImage imageNamed:@"qmkit_bar_crop_btn"] forState:UIControlStateNormal];
    [BKcropBtn addTarget:self action:@selector(BKbuttonTapped:) forControlEvents:UIControlEventTouchUpInside];
    [BKcropBtn setTag:kIconButtonTagCrop];
    [BKtopBg addSubview:BKcropBtn];
    [BKcropBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.height.mas_equalTo(25);
        make.left.mas_equalTo(BKwidth*3/8.0f-27/2.0);
        make.bottom.mas_equalTo(-BKbottomBarButtonMargin);
    }];
    UIButton *BKborderBtn = [[UIButton alloc] initWithFrame:CGRectZero];
    [BKborderBtn setImage:[UIImage imageNamed:@"qmkit_bar_border_btn"] forState:UIControlStateNormal];
    [BKborderBtn addTarget:self action:@selector(BKbuttonTapped:) forControlEvents:UIControlEventTouchUpInside];
    [BKborderBtn setTag:kIconButtonTagFrame];
    [BKtopBg addSubview:BKborderBtn];
    [BKborderBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.height.mas_equalTo(25);
        make.left.mas_equalTo(BKwidth * 5/8.0f-27/2.0);
        make.bottom.mas_equalTo(-BKbottomBarButtonMargin);
    }];
    UIButton *BKsaveBtn = [[UIButton alloc] initWithFrame:CGRectZero];
    [BKsaveBtn setImage:[UIImage imageNamed:@"qmkit_bar_save_btn"] forState:UIControlStateNormal];
    [BKsaveBtn addTarget:self action:@selector(BKbuttonTapped:) forControlEvents:UIControlEventTouchUpInside];
    [BKsaveBtn setTag:kIconButtonTagSave];
    [BKtopBg addSubview:BKsaveBtn];
    [BKsaveBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.height.mas_equalTo(25);
        make.left.mas_equalTo(BKwidth*7/8.0f-27/2.0);
        make.bottom.mas_equalTo(-BKbottomBarButtonMargin);
    }];
    if (self.BKtype == 1) {
        BKcropBtn.hidden = YES;
        BKfilterBtn.hidden = YES;
        [BKborderBtn sendActionsForControlEvents:UIControlEventTouchUpInside];
        [BKborderBtn mas_remakeConstraints:^(MASConstraintMaker *make) {
             make.centerX.equalTo(self.view);
             make.bottom.mas_equalTo(-BKbottomBarButtonMargin);
             make.width.height.mas_equalTo(25);
        }];
    }else if (self.BKtype == 2){
        BKfilterBtn.hidden = YES;
        BKborderBtn.hidden = YES;
        [BKcropBtn sendActionsForControlEvents:UIControlEventTouchUpInside];
        [BKcropBtn mas_remakeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(self.view);
            make.bottom.mas_equalTo(-BKbottomBarButtonMargin);
            make.width.height.mas_equalTo(25);
        }];
    }else if (self.BKtype == 3){
        BKcropBtn.hidden = YES;
        BKborderBtn.hidden = YES;
        [BKfilterBtn sendActionsForControlEvents:UIControlEventTouchUpInside];
        [BKfilterBtn mas_remakeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(self.view);
            make.bottom.mas_equalTo(-BKbottomBarButtonMargin);
            make.width.height.mas_equalTo(25);
        }];
    }else{
    }
}
- (void)BKsetupGPUPicture
{
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
       _BKpicture = [[GPUImagePicture alloc] initWithImage:_BKimage];
    });
}
#pragma mark - 滤镜
- (BKQMFilterThemeView *)BKfilterThemeView
{
    if (!_BKfilterThemeView) {
        _BKfilterThemeView = [[BKQMFilterThemeView alloc] init];
        [self.view addSubview:_BKfilterThemeView];
        __weak typeof(self) wself = self;
        [self.BKfilterThemeView setBKfilterClickBlock:^( BKQMFilterModel *BKmodel) {
            [wself BKchangeFilter:BKmodel];
        }];
        [self.BKfilterThemeView setBKsliderValueChangeBlock:^(NSInteger BKindex, float BKvalue) {
            [wself BKchangeFilterAlpha:@(BKvalue)];
        }];
        dispatch_async(dispatch_get_global_queue(0, 0), ^{
            self->_BKfilterModels = [BKQMFilterModel buildFilterModelsWithPath:kFilterPath];
            [self.BKfilterThemeView setBKfilterModels:self->_BKfilterModels];
            dispatch_async(dispatch_get_main_queue(), ^{
                [self.BKfilterThemeView BKreloadData];
            });
        });
    }
    return _BKfilterThemeView;
}
#pragma mark - 裁剪
- (BKQMCropThemeView *)BKcropThemeView
{
    if (!_BKcropThemeView) {
        _BKcropThemeView = [[BKQMCropThemeView alloc] init];
        [self.view addSubview:_BKcropThemeView];
        self.BKcropThemeView.BKcropModels = [BKQMCropModel buildCropModels];
        [self.BKcropThemeView BKreloadData];
        __weak typeof(self) wself = self;
        [self.BKcropThemeView setDoneButtonClickBlock:^{
            dispatch_async(dispatch_get_global_queue(0, 0), ^{
                UIImage *BKimage = [wself.BKcropView currentCroppedImage];
                [wself BKchangeImage:BKimage];
            });
        }];
        [self.BKcropThemeView setCloseButtonClickBlock:^{
            dispatch_async(dispatch_get_main_queue(), ^{
                [wself.BKcropView setHidden:YES];
                [wself.BKimageView setHidden:NO];
            });
        }];
        [self.BKcropThemeView setBKcroperClickBlock:^(CGSize BKaspect, CGFloat BKrotation) {
            if (BKrotation > 0.0f) {
                [wself.BKcropView rotate];
            }else {
                [wself.BKcropView setCropAspectRatio:BKaspect.width/BKaspect.height];
            }
        }];
    }
    return _BKcropThemeView;
}
#pragma mark - 相框
- (BKQMFrameThemeView *)BKframeThemeView
{
    if (!_BKframeThemeView) {
        _BKframeThemeView = [[BKQMFrameThemeView alloc] init];
        [self.view addSubview:_BKframeThemeView];
        NSFileManager *BKfileManager = [NSFileManager new];
        NSMutableArray *BKsourceArray  = @[].mutableCopy;
        if (self.BKresourcePath && [BKfileManager fileExistsAtPath:self.BKresourcePath]) {
            NSArray *BKfiles = [BKfileManager contentsOfDirectoryAtPath:self.BKresourcePath error:nil];
            NSMutableArray *BKnewFiles = [@[] mutableCopy];
            for (NSString *BKfileName in BKfiles) {
                [BKnewFiles addObject:BKfileName];
                NSDictionary *BKdict = @{@"icon":[self.BKresourcePath stringByAppendingPathComponent:BKfileName]};
                BKQMFilterModel *BKmodel = [BKQMFilterModel yy_modelWithDictionary:BKdict];
                [BKsourceArray addObject:BKmodel];
                _BKframeThemeView.BKexternal = YES;
            }
            [self.BKframeThemeView setBKframeModels:BKsourceArray];
        }else{
           [self.BKframeThemeView setBKframeModels:[BKQMFrameModel buildFrameModels]];
        }
        [self.BKframeThemeView BKreloadData];
        __weak typeof(self) wself = self;
        [self.BKframeThemeView setBKframeClickBlock:^(BKQMFrameModel *BKmodel) {
            for (UIView *BKview in wself.BKimageViewHodler.subviews) {
                if ([BKview isKindOfClass:[BKQMDragView class]]) {
                    [(id)BKview BKhideToolBar];
                }
            }
            BKQMDragView *BKiconView = [[BKQMDragView alloc] initWithFrame:wself.BKimageView.bounds image:[UIImage imageNamed:BKmodel.icon]];
            [wself.BKimageViewHodler addSubview:BKiconView];
        }];
    }
    return _BKframeThemeView;
}
#pragma mark - Events
- (void)BKbuttonTapped:(UIButton *)BKsender
{
    weakSelf();
    switch (BKsender.tag) {
        case kIconButtonTagBack:
                [self dismissViewControllerAnimated:YES completion:nil];
            break;
        case kIconButtonTagOrigin:
            [self BKrestoreImage];
            break;
        case kIconButtonTagShare: {
            [self BKgenerateEffectedImageWithCompleteBlock:^(UIImage *BKimage) {
                dispatch_async(dispatch_get_main_queue(), ^{
                   [BKQMShareManager BKshareThumbImage:BKimage inViewController:wself];
                });
            }];
        }
            break;
        case kIconButtonTagFilter:
            [self.BKfilterThemeView show];
            break;
        case kIconButtonTagCrop:
            [self.BKcropThemeView show];
            [self.BKcropView setToCropImage:self.BKimageView.image];
            [self.BKcropView show];
            self.BKimageView.hidden = YES;
            break;
        case kIconButtonTagFrame:
            [self.BKframeThemeView show];
            break;
        case kIconButtonTagSave:
            [self BKsaveImage];
            break;
        default:
            break;
    }
}
#pragma mark - PrivateMethod
- (void)BKchangeFilter:(BKQMFilterModel *)BKmodel
{
    [BKQMProgressHUD BKshow];
    self.BKfilter = [[BKQMImageFilter alloc] initWithFilterModel:BKmodel];
    [(BKQMImageFilter *)self.BKfilter setAlpha:BKmodel.currentAlphaValue];
    [self.BKpicture removeAllTargets];
    [self.BKpicture addTarget:self.BKfilter];
    [self.BKfilter useNextFrameForImageCapture];
    __weak typeof(self) wself = self;
    [self.BKpicture processImageWithCompletionHandler:^{
        UIImage *BKimage = [wself.BKfilter imageFromCurrentFramebuffer];
        dispatch_async(dispatch_get_main_queue(), ^{
            wself.BKimageView.image = BKimage;
            [BKQMProgressHUD BKhide];
        });
    }];
}
- (void)BKchangeFilterAlpha:(NSNumber *)BKalpha
{
    [BKQMProgressHUD BKshow];
    BKQMImageFilter *BKimageFilter = (BKQMImageFilter *)self.BKfilter;
    [BKimageFilter setAlpha:[BKalpha floatValue]];
    [BKimageFilter useNextFrameForImageCapture];
    __weak typeof(self) wself = self;
    [self.BKpicture processImageWithCompletionHandler:^{
        UIImage *BKimage = [wself.BKfilter imageFromCurrentFramebuffer];
        dispatch_async(dispatch_get_main_queue(), ^{
            wself.BKimageView.image = BKimage;
            [BKQMProgressHUD BKhide];
        });
    }];
}
- (void)BKchangeImage:(UIImage *)BKimage
{
    [BKQMProgressHUD BKshow];
    self.BKimage = BKimage;
    self.BKpicture = [[GPUImagePicture alloc] initWithImage:BKimage];
    if (self.BKfilter) {
        [self.BKpicture addTarget:self.BKfilter];
    }
    dispatch_async(dispatch_get_main_queue(), ^{
        self.BKimageView.image = self.BKimage;
        [self.BKimageView setHidden:NO];
        [self.BKcropView hide];
        [BKQMProgressHUD BKhide];
    });
}
- (void)BKrestoreImage
{
    [BKQMProgressHUD BKshow];
    self.BKfilter = nil;
    self.BKimage = _BKoriginImage;
    self.BKimageView.image = self.BKimage;
    self.BKcropView.toCropImage = self.BKimage;
    self.BKpicture = [[GPUImagePicture alloc] initWithImage:self.BKimage];
    [BKQMProgressHUD BKhide];
}
- (void)BKsaveImage
{
    [self BKgenerateEffectedImageWithCompleteBlock:^(UIImage *BKimage) {
        [BKQMProgressHUD BKshow];
        ALAssetsLibrary *BKassetsLib = [[ALAssetsLibrary alloc] init];
        [BKassetsLib writeImageToSavedPhotosAlbum:BKimage.CGImage
                                    orientation:(NSInteger)BKimage.imageOrientation
                                completionBlock:^(NSURL *assetURL, NSError *error) {
                                    [BKQMProgressHUD BKhide];
                                    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                                        [MBProgressHUD showTipMessageInWindow:@"Save Success"];
                                    });
                                }];
    }];
}
- (void)BKhideDragViewBorder:(UITapGestureRecognizer *)BKgesture
{
    NSArray *BKsubviews = [[self.BKimageViewHodler.subviews reverseObjectEnumerator] allObjects];
    for (UIView *BKview in BKsubviews) {
        if ([BKview isKindOfClass:[BKQMDragView class]]) {
            BKQMDragView *BKdragView = (id)BKview;
            CGPoint BKlocation = [BKgesture locationInView:BKview];
            if (BKview.userInteractionEnabled && CGRectContainsPoint(BKdragView.BKimageView.frame, BKlocation)) {
                if ([(id)BKview BKisToolBarHidden]) {
                    [(id)BKview BKshowToolBar];
                }else {
                    [(id)BKview BKhideToolBar];
                }
            }else {
                [(id)BKview BKhideToolBar];
            }
        }
    }
}
- (UIImage *)BKgenerateFrameOnImage:(UIImage *)BKimage
{
    CGFloat BKscaleX  = self.BKimageView.frame.size.width/CGImageGetWidth(BKimage.CGImage);
    CGFloat BKscaleY  = self.BKimageView.frame.size.height/CGImageGetHeight(BKimage.CGImage);
    CGFloat BKscaleFactor = MIN(BKscaleX, BKscaleY);
    UIImageView *BKimageView = [[UIImageView alloc] initWithImage:BKimage];
    for (UIView *BKview in self.BKimageViewHodler.subviews) {
        if ([BKview isKindOfClass:[BKQMDragView class]]) {
            BKQMDragView *BKoriginView = (BKQMDragView *)BKview;
            BKQMDragView *BKdragView = [BKoriginView BKcopyWithScaleFactor:BKscaleFactor relativedView:self.BKimageView];
            [BKdragView BKhideToolBar];
            [BKimageView addSubview:BKdragView];
        }
    }
    UIGraphicsBeginImageContext(BKimageView.frame.size);
    CGContextRef BKctx = UIGraphicsGetCurrentContext();
    [BKimageView.layer renderInContext:BKctx];
    UIImage *BKnewImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return BKnewImage;
}
- (void)BKgenerateEffectedImageWithCompleteBlock:(void(^)(UIImage *))BKblock;
{
    [BKQMProgressHUD BKshow];
    weakSelf();
    if (self.BKfilter) {
        [self.BKfilter useNextFrameForImageCapture];
        [self.BKpicture processImageWithCompletionHandler:^{
            UIImage *BKfilterImage = [wself.BKfilter imageFromCurrentFramebuffer];
            UIImage *BKimage = [wself BKgenerateFrameOnImage:BKfilterImage];
            if (BKblock) {
                BKblock(BKimage);
            }
            [BKQMProgressHUD BKhide];
        }];
    }else {
        dispatch_async(dispatch_get_global_queue(0, 0), ^{
            UIImage *BKimage = [wself BKgenerateFrameOnImage:wself.BKimage];
            if (BKblock) {
                BKblock(BKimage);
            }
            [BKQMProgressHUD BKhide];
        });
    }
}
@end
