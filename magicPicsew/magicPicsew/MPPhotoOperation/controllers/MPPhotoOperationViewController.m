//
//  MPPhotoOperationViewController.m
//  magicPicsew
//
//  Created by 123 on 2020/12/30.
//

#import "MPPhotoOperationViewController.h"
#import "MPTailoringToolBarView.h"
#import "MPOtherToolBarView.h"
#import "MPMainPhotoModel.h"
#import "UIImage+UIImageExtras.h"

@interface MPPhotoOperationViewController ()<UIScrollViewDelegate,MPTailoringToolBarDelegate,MPOtherToolBarDelegate>

@property (nonatomic, strong) UIButton *MPnavRightBtn;//右侧分享按钮

@property (nonatomic, strong) UIView *MPnavTitleView;//自定义标题栏

@property (nonatomic, strong) UIButton *MPtailoringBtn;//裁剪按钮

@property (nonatomic, assign) Boolean MP_isTailoring;//是否裁剪栏

@property (nonatomic, strong) UIButton *MPtoolBtn;//工具按钮

@property (nonatomic, assign) Boolean MP_isTool;//是否工具栏

@property (nonatomic, strong) UIView *MPline;//底部操作栏分割线

//@property (nonatomic, strong) UIScrollView *MPOperationScrollView;//底部操作栏
//
//@property (nonatomic, strong) MPTailoringToolBarView *MPTailoringView;//裁剪操作栏
//
//@property (nonatomic, strong) MPOtherToolBarView *MPOtherToolView;//工具操作栏

@property (nonatomic, strong) UIScrollView *MPphotoScrollView;//滚动框

@property (nonatomic, strong) UIImageView *MPphotoImageView;//照片框

@property (nonatomic, strong) NSMutableArray *MPphotoImagesArray;

@property (nonatomic, strong) UIImage *MPstitchingImage;

@end

@implementation MPPhotoOperationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self MPsetContentView];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.MPnavTitleView.hidden = NO;
    [self MPsetContentLayOutView];
}
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    self.MPnavTitleView.hidden = YES;
}
#pragma mark - actions
- (void)MP_setupNavigationItems{
    [super MP_setupNavigationItems];
    [self MP_setTitleView];
}
- (void)MP_setTitleView{
    self.MPnavRightBtn = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 22, 22)];
    [self.MPnavRightBtn setImage:[UIImage imageNamed:@"MP_fenxiang"] forState:UIControlStateNormal];
    [self.MPnavRightBtn addTarget:self action:@selector(MPshareAction) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *MPrightItem = [[UIBarButtonItem alloc]initWithCustomView:self.MPnavRightBtn];
    self.navigationItem.rightBarButtonItem = MPrightItem;
    
//    self.MPnavTitleView = [[UIView alloc] init];
//    self.MPnavTitleView.backgroundColor = [UIColor clearColor];
//    [self.navigationController.navigationBar addSubview:self.MPnavTitleView];
//    [self.MPnavTitleView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.centerX.equalTo(self.navigationController.navigationBar);
//        make.top.equalTo(self.navigationController.navigationBar);
//        make.bottom.equalTo(self.navigationController.navigationBar);
//        make.width.mas_equalTo(94);
//    }];
    
//    self.MPtailoringBtn = [[UIButton alloc] init];
//    self.MPtailoringBtn.tag = 99;
//    [self.MPtailoringBtn addTarget:self action:@selector(MPtitleOperationAction:) forControlEvents:UIControlEventTouchUpInside];
//    [self.MPtailoringBtn setTitle:@"裁剪" forState:UIControlStateNormal];
//    self.MPtailoringBtn.titleLabel.textAlignment = NSTextAlignmentCenter;
//    [self.MPtailoringBtn.titleLabel setFont:[UIFont boldSystemFontOfSize:18.0f]];
//    [self.MPtailoringBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
//    [self.MPtailoringBtn sizeToFit];
//    [self.MPnavTitleView addSubview:self.MPtailoringBtn];
//    [self.MPtailoringBtn mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.left.equalTo(self.MPnavTitleView);
//        make.top.equalTo(self.MPnavTitleView);
//        make.bottom.equalTo(self.MPnavTitleView);
//        make.width.mas_equalTo(40);
//    }];
//
//    self.MPtoolBtn = [[UIButton alloc] init];
//    self.MPtoolBtn.tag = 100;
//    [self.MPtoolBtn addTarget:self action:@selector(MPtitleOperationAction:) forControlEvents:UIControlEventTouchUpInside];
//    [self.MPtoolBtn setTitle:@"工具" forState:UIControlStateNormal];
//    self.MPtoolBtn.titleLabel.textAlignment = NSTextAlignmentCenter;
//    [self.MPtoolBtn.titleLabel setFont:[UIFont boldSystemFontOfSize:18.0f]];
//    [self.MPtoolBtn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
//    [self.MPtoolBtn sizeToFit];
//    [self.MPnavTitleView addSubview:self.MPtoolBtn];
//    [self.MPtoolBtn mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.right.equalTo(self.MPnavTitleView);
//        make.top.equalTo(self.MPnavTitleView);
//        make.bottom.equalTo(self.MPnavTitleView);
//        make.width.mas_equalTo(40);
//    }];
//
//    self.MP_isTailoring = YES;
//    self.MP_isTool = NO;
}
- (void)MPshareAction{
    UIAlertController *MPalertVC = [UIAlertController alertControllerWithTitle:nil message:nil preferredStyle:UIAlertControllerStyleActionSheet];
    UIAlertAction *MPpreviewAction = [UIAlertAction actionWithTitle:@"预览" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
    }];
    UIAlertAction *MPshareAction = [UIAlertAction actionWithTitle:@"分享给..." style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
    }];
    UIAlertAction *MPexportToPhotoAlbumAction = [UIAlertAction actionWithTitle:@"导出到相册" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
    }];
    [MPalertVC addAction:MPpreviewAction];
    [MPalertVC addAction:MPshareAction];
    [MPalertVC addAction:MPexportToPhotoAlbumAction];
    [self presentViewController:MPalertVC animated:YES completion:^{
            
    }];
}
//- (void)MPtitleOperationAction:(UIButton *)sender{
//    if (sender.tag == 99) {
//        self.MP_isTailoring = YES;
//        self.MP_isTool = NO;
//        [self.MPtailoringBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
//        [self.MPtoolBtn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
//        [self.MPOperationScrollView setContentOffset:CGPointMake(0, 0)];
//    }else{
//        self.MP_isTailoring = NO;
//        self.MP_isTool = YES;
//        [self.MPtailoringBtn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
//        [self.MPtoolBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
//        [self.MPOperationScrollView setContentOffset:CGPointMake(MPWIDTH, 0)];
//    }
//}
- (void)MPsetContentView{
    [self.view addSubview:self.MPline];
//    [self.view addSubview:self.MPOperationScrollView];
//    [self.MPOperationScrollView addSubview:self.MPTailoringView];
//    [self.MPOperationScrollView addSubview:self.MPOtherToolView];
    [self.view addSubview:self.MPphotoScrollView];
    [self.MPphotoScrollView addSubview:self.MPphotoImageView];
}
- (void)MPsetContentLayOutView{
//    [self.MPTailoringView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.left.equalTo(self.MPOperationScrollView);
//        make.width.equalTo(self.MPOperationScrollView);
//        make.top.equalTo(self.MPOperationScrollView);
//        make.height.equalTo(self.MPOperationScrollView);
//    }];
//    self.MPTailoringView.MPcurrentType = self.MPCurrentType;
//    [self.MPOtherToolView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.left.equalTo(self.MPTailoringView.mas_right);
//        make.top.and.bottom.equalTo(self.MPTailoringView);
//        make.width.equalTo(self.MPTailoringView);
//    }];
//    [self.MPOperationScrollView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.left.and.right.equalTo(self.view);
//        make.bottom.equalTo(self.view);
//        make.height.mas_equalTo(60 + [MPTool MPcurrentIpBottombarheight]);
//        make.right.equalTo(self.MPOtherToolView.mas_right);
//    }];
//    [self.MPline mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.left.and.right.equalTo(self.view);
//        make.bottom.equalTo(self.MPOperationScrollView.mas_top).offset(-6);
//        make.height.mas_equalTo(1);
//    }];
    if (self.MPphotosArray.count > 1) {
        for (int i = 0; i < self.MPphotosArray.count; i
             ++) {
            MPMainPhotoModel *photoModel = self.MPphotosArray[i];
            PHImageRequestOptions *options = [[PHImageRequestOptions alloc] init];
            CGSize size = CGSizeZero;
            [[PHImageManager defaultManager] requestImageForAsset:photoModel.asset targetSize:size contentMode:PHImageContentModeDefault options:options resultHandler:^(UIImage * _Nullable result, NSDictionary * _Nullable info) {
                CGSize size = result.size;
                result = [result imageByScalingToSize:CGSizeMake([UIScreen mainScreen].bounds.size.width,[UIScreen mainScreen].bounds.size.width * (size.height / size.width))];
                [self.MPphotoImagesArray addObject:result];
            }];
        }
        if (self.MPCurrentType == MPPhotoOperationTypeVerticalStitching) {
            NSMutableArray *imageViews = [[NSMutableArray alloc] init];
            UIImageView *frontImgView;
            UIImageView *lastImgView;
            CGFloat totalHeight = 0;
            CGFloat maxWidth = 0;
            if (self.MPphotoImagesArray.count > 0) {
                for (int i = 0; i < self.MPphotoImagesArray.count; i++) {
                    UIImage *image = self.MPphotoImagesArray[i];
                    totalHeight += image.size.height;
                    UIImageView *imageView = [[UIImageView alloc] init];
                    [imageViews addObject:imageView];
                    imageView.image = image;
                    [self.MPphotoScrollView addSubview:imageView];
                    if (i == 0) {
                        maxWidth = image.size.width;
                        [imageView mas_makeConstraints:^(MASConstraintMaker *make) {
                            make.left.equalTo(self.MPphotoScrollView);
                            make.top.equalTo(self.MPphotoScrollView);
                            make.width.mas_equalTo(image.size.width);
                            make.height.mas_equalTo(image.size.height);
                        }];
                    }else{
                        if (image.size.width >= maxWidth) {
                            maxWidth = image.size.width;
                        }
                        [imageView mas_makeConstraints:^(MASConstraintMaker *make) {
                            make.top.equalTo(frontImgView.mas_bottom);
                            make.left.equalTo(frontImgView);
                            make.width.mas_equalTo(image.size.width);
                            make.height.mas_equalTo(image.size.height);
                        }];
                    }
                    frontImgView = imageView;
                    if (i == self.MPphotoImagesArray.count - 1) {
                        lastImgView = imageView;
                    }
                }
            }
            CGFloat navHeight = 0;
            if (is_iPhoneXSeries) {
                navHeight = 88.0f;
            }else{
                navHeight = 64.0f;
            }
            [self.MPphotoScrollView mas_makeConstraints:^(MASConstraintMaker *make) {
                make.left.equalTo(self.view);
                make.top.and.bottom.equalTo(self.view);
                make.width.mas_equalTo(maxWidth);
                make.bottom.equalTo(lastImgView.mas_bottom);
            }];
        }else{
            NSMutableArray *imageViews = [[NSMutableArray alloc] init];
            UIImageView *frontImgView;
            UIImageView *lastImgView;
            CGFloat totalWidth = 0;
            CGFloat maxHeight = 0;
            if (self.MPphotoImagesArray.count > 0) {
                for (int i = 0; i < self.MPphotoImagesArray.count; i++) {
                    UIImage *image = self.MPphotoImagesArray[i];
                    totalWidth += image.size.width;
                    UIImageView *imageView = [[UIImageView alloc] init];
                    [imageViews addObject:imageView];
                    imageView.image = image;
                    [self.MPphotoScrollView addSubview:imageView];
                    if (i == 0) {
                        maxHeight = image.size.height;
                        [imageView mas_makeConstraints:^(MASConstraintMaker *make) {
                            make.left.equalTo(self.MPphotoScrollView);
                            make.top.equalTo(self.MPphotoScrollView);
                            make.width.mas_equalTo(image.size.width);
                            make.height.mas_equalTo(image.size.height);
                        }];
                    }else{
                        if (image.size.height >= maxHeight) {
                            maxHeight = image.size.height;
                        }
                        [imageView mas_makeConstraints:^(MASConstraintMaker *make) {
                            make.left.equalTo(frontImgView.mas_right);
                            make.top.equalTo(frontImgView);
                            make.width.mas_equalTo(image.size.width);
                            make.height.mas_equalTo(image.size.height);
                        }];
                    }
                    frontImgView = imageView;
                    if (i == self.MPphotoImagesArray.count - 1) {
                        lastImgView = imageView;
                    }
                }
            }
            CGFloat navHeight = 0;
            if (is_iPhoneXSeries) {
                navHeight = 88.0f;
            }else{
                navHeight = 64.0f;
            }
            [self.MPphotoScrollView mas_makeConstraints:^(MASConstraintMaker *make) {
                make.top.equalTo(self.mas_topLayoutGuideBottom);
                make.left.and.right.equalTo(self.view);
                make.height.mas_equalTo(maxHeight);
                make.right.equalTo(lastImgView.mas_right);
            }];
        }
    }else if (self.MPphotosArray.count == 1){
        MPMainPhotoModel *photoModel = self.MPphotosArray.firstObject;
        PHImageRequestOptions *options = [[PHImageRequestOptions alloc] init];
        CGSize size = CGSizeZero;
        // 同步获得图片, 只会返回1张图片
        options.synchronous = YES;
            // 从asset中获得图片
        [[PHImageManager defaultManager] requestImageForAsset:photoModel.asset targetSize:size contentMode:PHImageContentModeDefault options:options resultHandler:^(UIImage * _Nullable result, NSDictionary * _Nullable info) {
            CGSize size = result.size;
            result = [result imageByScalingToSize:CGSizeMake([UIScreen mainScreen].bounds.size.width,[UIScreen mainScreen].bounds.size.width * (size.height / size.width))];
            self.MPphotoImageView.image = result;
            [self.MPphotoImageView mas_makeConstraints:^(MASConstraintMaker *make) {
                make.left.equalTo(self.MPphotoScrollView);
                make.width.equalTo(self.MPphotoScrollView);
                make.top.equalTo(self.MPphotoScrollView);
                make.height.equalTo(self.MPphotoScrollView);
            }];
            [self.MPphotoScrollView mas_makeConstraints:^(MASConstraintMaker *make) {
                make.top.equalTo(self.mas_topLayoutGuideBottom);
                make.bottom.equalTo(self.MPphotoImageView.mas_bottom);
                make.width.mas_equalTo(result.size.width);
                make.height.mas_equalTo(result.size.height);
            }];
        }];
    }
}
- (UIImage *)MPnomalSnapshotImage:(UIView *)MPview{
    [[UIApplication sharedApplication].keyWindow addSubview:MPview];
    UIGraphicsBeginImageContextWithOptions(MPview.frame.size, NO, [UIScreen mainScreen].scale);
    [MPview.layer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage *snapshotImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return snapshotImage;
}
#pragma mark - UIScrollView代理方法

#pragma mark - 属性懒加载
- (UIView *)MPline{
    if (!_MPline) {
        _MPline = [[UIView alloc] init];
        _MPline.backgroundColor = MPColor(242, 242, 242, 1);
    }
    return _MPline;
}
//- (UIScrollView *)MPOperationScrollView{
//    if (!_MPOperationScrollView) {
//        _MPOperationScrollView = [[UIScrollView alloc] init];
//        _MPOperationScrollView.delegate = self;
//        _MPOperationScrollView.backgroundColor = [UIColor whiteColor];
//        _MPOperationScrollView.showsHorizontalScrollIndicator = NO;
//        _MPOperationScrollView.scrollEnabled = NO;
//    }
//    return _MPOperationScrollView;
//}
//- (MPTailoringToolBarView *)MPTailoringView{
//    if (!_MPTailoringView) {
//        _MPTailoringView = [[MPTailoringToolBarView alloc] init];
//    }
//    return _MPTailoringView;
//}
//- (MPOtherToolBarView *)MPOtherToolView{
//    if (!_MPOtherToolView) {
//        _MPOtherToolView = [[MPOtherToolBarView alloc] init];
//    }
//    return _MPOtherToolView;
//}
- (UIScrollView *)MPphotoScrollView{
    if (!_MPphotoScrollView) {
        _MPphotoScrollView = [[UIScrollView alloc] init];
        _MPphotoScrollView.delegate = self;
        _MPphotoScrollView.backgroundColor = [UIColor whiteColor];
        _MPphotoScrollView.showsVerticalScrollIndicator = NO;
        _MPphotoScrollView.showsHorizontalScrollIndicator = NO;
        _MPphotoScrollView.backgroundColor = [UIColor purpleColor];
    }
    return _MPphotoScrollView;
}
- (UIImageView *)MPphotoImageView{
    if (!_MPphotoImageView) {
        _MPphotoImageView = [[UIImageView alloc] init];
        _MPphotoImageView.backgroundColor = [UIColor whiteColor];
        _MPphotoImageView.contentMode = UIViewContentModeScaleAspectFit;
        _MPphotoImageView.autoresizesSubviews = YES;
    }
    return _MPphotoImageView;
}
- (NSMutableArray *)MPphotosArray{
    if (!_MPphotosArray) {
        _MPphotosArray = [[NSMutableArray alloc] init];
    }
    return _MPphotosArray;
}
- (NSMutableArray *)MPphotoImagesArray{
    if (!_MPphotoImagesArray) {
        _MPphotoImagesArray = [[NSMutableArray alloc] init];
    }
    return _MPphotoImagesArray;
}
@end
