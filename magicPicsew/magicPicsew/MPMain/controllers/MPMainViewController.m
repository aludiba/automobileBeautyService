//
//  MPMainViewController.m
//  magicPicsew
//
//  Created by 123 on 2020/10/30.
//

#import "MPMainViewController.h"
#import "MPSetViewController.h"
#import "MPRecentProjectsView.h"
#import "MPMainPhotoCollectionViewCell.h"
#import <Photos/Photos.h>
#import "MPMainPhotoModel.h"
#import "MPPhotoOperationViewController.h"

@interface MPMainViewController ()<UICollectionViewDataSource,UICollectionViewDelegate,MPRecentProjectsViewDelegate>

@property (nonatomic, strong) UIButton *MPnavRightBtn;//右侧设置按钮

@property (nonatomic, strong) UIView *MPnavTitleView;//自定义标题栏

@property (nonatomic, strong) UIButton *MPnavTitleBtn;//自定义标题按钮

@property (nonatomic, strong) UILabel *MPnavTitleLbl;//自定义标题

@property (nonatomic, strong) UIImageView *MPnavExpandCloseImgView;//展开和关闭图标

@property (nonatomic, assign) Boolean isExpand;//是否展开最近项目

@property (nonatomic, strong) UICollectionView *MPmainPicCollectionView;//主要相册展示控件

@property (nonatomic, strong) UIButton *MPslideTopBtn;//相册滑动到底部按钮

@property (nonatomic, strong) MPRecentProjectsView *MPrecentprojectsView;//相册类型选择控件

@property (nonatomic, strong) PHFetchResult<PHAsset *>  *MPcurrentPhotos;

@property (nonatomic, strong) NSMutableArray *MPDataArray;

@property (nonatomic, strong) UILabel *MPCurrentImgsCountLbl;//当前照片数量

@property (nonatomic, assign) NSInteger MPCurrentIndex;//当前是选中的第几张图片

@property (nonatomic, strong) UIView *MPremindView;//提醒视图

@property (nonatomic, strong) UIButton *MPcloseBtn;//关闭提醒视图按钮

@property (nonatomic, strong) UIButton *MPremindBtn;//提醒标签1

@property (nonatomic, strong) UIButton *MPremindBtn1;//提醒标签2

@end

@implementation MPMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.MPnavTitleView.hidden = NO;
}
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    self.MPnavTitleView.hidden = YES;
}
- (void)MP_setupNavigationItems{
    [super MP_setupNavigationItems];
    [self _MP_setTitleView];
}
- (void)_MP_setTitleView{
    self.MPnavRightBtn = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 22, 22)];
    [self.MPnavRightBtn setImage:[UIImage imageNamed:@"MP_shezhi"] forState:UIControlStateNormal];
    [self.MPnavRightBtn addTarget:self action:@selector(_MP_setAction) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *MPrightItem = [[UIBarButtonItem alloc]initWithCustomView:self.MPnavRightBtn];
    self.navigationItem.rightBarButtonItem = MPrightItem;
    
    self.MPnavTitleView = [[UIView alloc] init];
    self.MPnavTitleView.backgroundColor = [UIColor clearColor];
    [self.navigationController.navigationBar addSubview:self.MPnavTitleView];
    [self.MPnavTitleView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.navigationController.navigationBar);
        make.top.equalTo(self.navigationController.navigationBar);
        make.bottom.equalTo(self.navigationController.navigationBar);
        make.width.mas_equalTo(94);
    }];
    self.MPnavTitleBtn = [[UIButton alloc] init];
    [self.MPnavTitleBtn addTarget:self action:@selector(_MP_recentProjectsAction) forControlEvents:UIControlEventTouchUpInside];
    [self.MPnavTitleView addSubview:self.MPnavTitleBtn];
    [self.MPnavTitleBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.MPnavTitleView).offset(10);
        make.top.equalTo(self.MPnavTitleView);
        make.bottom.equalTo(self.MPnavTitleView);
        make.width.mas_equalTo(94);
    }];
    self.MPnavTitleLbl = [[UILabel alloc] init];
    if ([self MPisCanUsePhotos]) {
          PHFetchOptions *allPhotosOptions = [[PHFetchOptions alloc] init];
          PHFetchResult<PHAsset *> *allPhotos = [PHAsset fetchAssetsWithOptions:allPhotosOptions];
          self.MPcurrentPhotos = allPhotos;
        for (int i = (int)(self.MPcurrentPhotos.count - 1); i > -1; i--) {
            PHAsset *asset = self.MPcurrentPhotos[i];
            if (asset.mediaType == PHAssetMediaTypeImage) {
                MPMainPhotoModel *model = [[MPMainPhotoModel alloc] init];
                model.asset = asset;
                [self.MPDataArray addObject:model];
            }
        }
        self.MPCurrentImgsCountLbl.text = [NSString stringWithFormat:@"%ld张照片",self.MPDataArray.count];
          self.MPnavTitleLbl.text = @"最近项目";
          [self.MPmainPicCollectionView reloadData];
        [self.view addSubview:self.MPslideTopBtn];
        [self.MPslideTopBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(self.view);
            make.top.equalTo(self.view).offset(MPHEIGHT - [MPTool MPcurrentIpBottombarheight] - 45 - 10 - 44);
            make.width.mas_equalTo(44);
            make.height.mas_equalTo(44);
        }];
        self.MPslideTopBtn.hidden = YES;
    }else{
        UIAlertController *MPAlertVC = [UIAlertController alertControllerWithTitle:@"温馨提示" message:@"是否允许此应用程序访问您的图片库?" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *MPcancelAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
            
        }];
        UIAlertAction *MPsureAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            NSURL *url= [NSURL URLWithString:UIApplicationOpenSettingsURLString];
            if( [[UIApplication sharedApplication] canOpenURL:url] ) {
                  [[UIApplication sharedApplication] openURL:url  options:@{} completionHandler:^(BOOL        success) {
                  }];
            }
        }];
        [MPAlertVC addAction:MPcancelAction];
        [MPAlertVC addAction:MPsureAction];
        [self presentViewController:MPAlertVC animated:YES completion:^{
            
        }];
    }
    self.MPnavTitleLbl.textAlignment = NSTextAlignmentCenter;
    [self.MPnavTitleLbl setFont:[UIFont boldSystemFontOfSize:18.0f]];
    [self.MPnavTitleLbl setTextColor:[UIColor blackColor]];
    [self.MPnavTitleLbl sizeToFit];
    [self.MPnavTitleBtn addSubview:self.MPnavTitleLbl];
    [self.MPnavTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.MPnavTitleBtn);
        make.top.equalTo(self.MPnavTitleBtn);
        make.bottom.equalTo(self.MPnavTitleBtn);
        make.width.mas_equalTo(74);
    }];
    self.MPnavExpandCloseImgView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"MP_xiangxia"]];
    [self.MPnavTitleBtn addSubview:self.MPnavExpandCloseImgView];
    [self.MPnavExpandCloseImgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.MPnavTitleLbl.mas_right);
        make.centerY.equalTo(self.MPnavTitleLbl);
        make.width.mas_equalTo(20);
        make.height.mas_equalTo(20);
    }];
}
#pragma mark - actions
//最近项目
- (void)_MP_recentProjectsAction{
    self.isExpand = !self.isExpand;
    if (self.isExpand) {
        self.MPnavExpandCloseImgView.image = [UIImage imageNamed:@"MP_xiangshang"];
        [self MPShowInRecentprojectsView];
    }else{
        self.MPnavExpandCloseImgView.image = [UIImage imageNamed:@"MP_xiangxia"];
        [self MPdisMissRecentprojectsView];
    }
}
//判断手机是否允许访问照片库
- (BOOL)MPisCanUsePhotos{
    PHAuthorizationStatus status = [PHPhotoLibrary authorizationStatus];
    if (status == PHAuthorizationStatusRestricted || status == PHAuthorizationStatusDenied) {
        //无权限
        return NO;
    }
    return YES;
}
//设置导航栏
- (void)_MP_setAction{
    MPSetViewController *MPSetVC = [[MPSetViewController alloc] init];
    [self.navigationController pushViewController:MPSetVC animated:YES];
}
- (void)MPShowInRecentprojectsView{
       [self.MPrecentprojectsView setFrame:CGRectMake(0, self.view.frame.size.height, self.view.frame.size.width, self.view.frame.size.height)];
       [UIView animateWithDuration:0.3 animations:^{
           self.MPrecentprojectsView.alpha = 1.0;
           [self.MPrecentprojectsView setFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
           
       } completion:nil];

}
- (void)MPdisMissRecentprojectsView{
    [self.MPrecentprojectsView setFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
       [UIView animateWithDuration:0.3f
                        animations:^{
        self.MPrecentprojectsView.alpha = 0.0;
        [self.MPrecentprojectsView setFrame:CGRectMake(0, self.view.frame.size.height, self.view.frame.size.width, self.view.frame.size.height)];
       }
    completion:^(BOOL finished){
                            
    }];
}
- (void)MPslideTopAction:(UIButton *)sender{
        [self.MPmainPicCollectionView setContentOffset:CGPointMake(0, -[[UIApplication sharedApplication] delegate].window.safeAreaInsets.top -self.navigationController.navigationBar.bounds.size.height) animated:NO];
}
#pragma mark - 关闭操作提醒框
- (void)MPMPcloseRemindMessageAction:(UIButton *)sender{
    [self MPcloseRemindMessage];
}
- (void)MPcloseRemindMessage{
    self.MPremindView.hidden = YES;
    for (int i = 0; i < self.MPDataArray.count; i++) {
        MPMainPhotoModel *model = self.MPDataArray[i];
        if (model.isSelect) {
            model.isSelect = NO;
            model.index = 0;
        }
    }
    self.MPCurrentIndex = 0;
    [self.MPremindBtn setFrame:CGRectMake(45, 0, MPWIDTH - 90, 45)];
    [self.MPremindBtn setTitle:@"调整" forState:UIControlStateNormal];
    self.MPremindBtn1.hidden = YES;
    [self.MPmainPicCollectionView reloadData];
}
#pragma mark - 照片相关操作
- (void)MPphotoOperationAction:(UIButton *)sender{
    if (sender.tag == 99) {
        if (self.MPCurrentIndex > 1) {
            MPPhotoOperationViewController *MPPhotoOperationVC = [[MPPhotoOperationViewController alloc] init];
            MPPhotoOperationVC.MPCurrentType = MPPhotoOperationTypeVerticalStitching;
            [self.navigationController pushViewController:MPPhotoOperationVC animated:NO];
        }else{
            MPPhotoOperationViewController *MPPhotoOperationVC = [[MPPhotoOperationViewController alloc] init];
            MPPhotoOperationVC.MPCurrentType = MPPhotoOperationTypeAdjust;
            [self.navigationController pushViewController:MPPhotoOperationVC animated:NO];
        }
    }else{
        MPPhotoOperationViewController *MPPhotoOperationVC = [[MPPhotoOperationViewController alloc] init];
        MPPhotoOperationVC.MPCurrentType = MPPhotoOperationTypeTransverseSplicing;
        [self.navigationController pushViewController:MPPhotoOperationVC animated:NO];
    }
}
#pragma mark - UICollectionView代理方法
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return self.MPDataArray.count;
}
- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    MPMainPhotoCollectionViewCell *MPcell = [collectionView dequeueReusableCellWithReuseIdentifier:@"MPMainPhotoCollectionViewCell" forIndexPath:indexPath];
    MPMainPhotoModel *model = self.MPDataArray[indexPath.row];
    MPcell.photoModel = model;
    return MPcell;
}
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    MPMainPhotoModel *model = self.MPDataArray[indexPath.row];
    model.isSelect = !model.isSelect;
    if (model.isSelect) {
        self.MPCurrentIndex++;
        model.index = self.MPCurrentIndex;
    }else{
        for (int i = 0; i < self.MPDataArray.count; i++) {
            MPMainPhotoModel *model1 = self.MPDataArray[i];
            if (model1.isSelect && (model1.index > model.index)) {
                model1.index--;
            }
        }
        self.MPCurrentIndex--;
        model.index = 0;
    }
    if (self.MPCurrentIndex > 0) {
        self.MPremindView.hidden = NO;
        if (self.MPCurrentIndex > 1) {
            [self.MPremindBtn setFrame:CGRectMake(90, 0, 90, 45)];
            [self.MPremindBtn setTitle:@"竖向拼接" forState:UIControlStateNormal];
            self.MPremindBtn1.hidden = NO;
            [self.MPremindBtn1 setFrame:CGRectMake(225, 0, 90, 45)];
            [self.MPremindBtn1 setTitle:@"横向拼接" forState:UIControlStateNormal];
        }else{
            [self.MPremindBtn setFrame:CGRectMake(45, 0, MPWIDTH - 90, 45)];
            [self.MPremindBtn setTitle:@"调整" forState:UIControlStateNormal];
            self.MPremindBtn1.hidden = YES;
        }
    }else{
        self.MPremindView.hidden = YES;
    }
    [self.MPmainPicCollectionView reloadData];
}
#pragma mark - UIScrollView协议方法
- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    if (scrollView.contentOffset.y <= -[[UIApplication sharedApplication] delegate].window.safeAreaInsets.top -self.navigationController.navigationBar.bounds.size.height) {
        self.MPslideTopBtn.hidden = YES;
    }else{
        self.MPslideTopBtn.hidden = NO;
    }
}
#pragma mark - MPRecentProjectsView代理方法
- (void)MPCurrentAlbumTitle:(NSString *)MPAlbumTitle  withPhotos:(PHFetchResult<PHAsset *> *)MPphotos{
    [self MPcloseRemindMessage];
    [self.MPnavTitleLbl setText:MPAlbumTitle];
    self.MPcurrentPhotos = MPphotos;
    [self.MPDataArray removeAllObjects];
    for (int i = (int)(self.MPcurrentPhotos.count - 1); i > -1; i--) {
      PHAsset *asset = self.MPcurrentPhotos[i];
      if (asset.mediaType == PHAssetMediaTypeImage) {
      MPMainPhotoModel *model = [[MPMainPhotoModel alloc] init];
      model.asset = asset;
      [self.MPDataArray addObject:model];
      }
    }
    self.MPCurrentImgsCountLbl.text = [NSString stringWithFormat:@"%ld张照片",self.MPDataArray.count];
    [self.MPmainPicCollectionView reloadData];
    [self _MP_recentProjectsAction];
}
#pragma mark - 属性懒加载
- (MPRecentProjectsView *)MPrecentprojectsView{
    if (!_MPrecentprojectsView) {
        _MPrecentprojectsView = [[MPRecentProjectsView alloc] init];
        _MPrecentprojectsView.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
        _MPrecentprojectsView.delegate = self;
        [self.view addSubview:_MPrecentprojectsView];
    }
    return _MPrecentprojectsView;
}
- (UICollectionView *)MPmainPicCollectionView{
    if (!_MPmainPicCollectionView) {
        UICollectionViewFlowLayout *MPlayout = [[UICollectionViewFlowLayout alloc] init];
        CGFloat itemWidth = (MPWIDTH - 5) / 4;
        CGFloat itemHeight = itemWidth;
        MPlayout.itemSize = CGSizeMake(itemWidth, itemHeight);
        MPlayout.minimumLineSpacing = 1;
        MPlayout.minimumInteritemSpacing = 1;
        _MPmainPicCollectionView = [[UICollectionView alloc] initWithFrame: CGRectMake(0, 0, MPWIDTH, MPHEIGHT - [MPTool MPcurrentIpBottombarheight] - 45) collectionViewLayout:MPlayout];
        _MPmainPicCollectionView.backgroundColor = MPColor(242, 242, 242, 1);
        [self.view addSubview:_MPmainPicCollectionView];
        _MPmainPicCollectionView.dataSource = self;
        _MPmainPicCollectionView.delegate = self;
        [_MPmainPicCollectionView registerClass:[MPMainPhotoCollectionViewCell class] forCellWithReuseIdentifier:@"MPMainPhotoCollectionViewCell"];
    }
    return _MPmainPicCollectionView;
}
- (UIButton *)MPslideTopBtn{
    if (!_MPslideTopBtn) {
        _MPslideTopBtn = [[UIButton alloc] init];
        [_MPslideTopBtn setImage:[UIImage imageNamed:@"MP_huadaodingbu"] forState:UIControlStateNormal];
        [_MPslideTopBtn setImage:[UIImage imageNamed:@"MP_huadaodingbu"] forState:UIControlStateHighlighted];
        [_MPslideTopBtn addTarget:self action:@selector(MPslideTopAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _MPslideTopBtn;
}
- (NSMutableArray *)MPDataArray{
    if (!_MPDataArray) {
        _MPDataArray = [[NSMutableArray alloc] init];
    }
    return _MPDataArray;
}
- (UILabel *)MPCurrentImgsCountLbl{
    if (!_MPCurrentImgsCountLbl) {
        _MPCurrentImgsCountLbl = [[UILabel alloc] init];
        _MPCurrentImgsCountLbl.backgroundColor = MPColor(242, 242, 242, 1);
        _MPCurrentImgsCountLbl.textColor = [UIColor grayColor];
        _MPCurrentImgsCountLbl.font = [UIFont systemFontOfSize:20];
        _MPCurrentImgsCountLbl.textAlignment = NSTextAlignmentCenter;
        _MPCurrentImgsCountLbl.frame = CGRectMake(0, MPHEIGHT - [MPTool MPcurrentIpBottombarheight] - 45, MPWIDTH, 45 + [MPTool MPcurrentIpBottombarheight]);
        [self.view addSubview:_MPCurrentImgsCountLbl];
    }
    return _MPCurrentImgsCountLbl;
}
- (UIView *)MPremindView{
    if (!_MPremindView) {
        _MPremindView = [[UIView alloc] initWithFrame:CGRectMake(0, MPHEIGHT - [MPTool MPcurrentIpBottombarheight] - 45, MPWIDTH, 45 + [MPTool MPcurrentIpBottombarheight])];
        _MPremindView.backgroundColor = [UIColor blueColor];
        [self.view addSubview:_MPremindView];
        [_MPremindView addSubview:self.MPcloseBtn];
    }
    return _MPremindView;
}
- (UIButton *)MPremindBtn{
    if (!_MPremindBtn) {
        _MPremindBtn = [[UIButton alloc] initWithFrame:CGRectMake(45, 0, MPWIDTH - 45, 45)];
        _MPremindBtn.tag = 99;
        [_MPremindBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_MPremindBtn.titleLabel setFont:[UIFont systemFontOfSize:20]];
        [_MPremindBtn.titleLabel setTextAlignment:NSTextAlignmentCenter];
        [_MPremindBtn addTarget:self action:@selector(MPphotoOperationAction:) forControlEvents:UIControlEventTouchUpInside];
        [_MPremindView addSubview:_MPremindBtn];
    }
    return _MPremindBtn;
}
- (UIButton *)MPremindBtn1{
    if (!_MPremindBtn1) {
        _MPremindBtn1 = [[UIButton alloc] initWithFrame:CGRectMake(45, 0, MPWIDTH - 45, 45)];
        _MPremindBtn1.tag = 100;
        [_MPremindBtn1 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_MPremindBtn1.titleLabel setFont:[UIFont systemFontOfSize:20]];
        [_MPremindBtn1.titleLabel setTextAlignment:NSTextAlignmentCenter];
        [_MPremindBtn1 addTarget:self action:@selector(MPphotoOperationAction:) forControlEvents:UIControlEventTouchUpInside];
        [_MPremindView addSubview:_MPremindBtn1];
    }
    return _MPremindBtn1;
}
- (UIButton *)MPcloseBtn{
    if (!_MPcloseBtn) {
        _MPcloseBtn = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 45, 45)];
        [_MPcloseBtn setImage:[UIImage imageNamed:@"MP_guanbi"] forState:UIControlStateNormal];
        [_MPcloseBtn setImage:[UIImage imageNamed:@"MP_guanbi"] forState:UIControlStateHighlighted];
        [_MPcloseBtn addTarget:self action:@selector(MPMPcloseRemindMessageAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _MPcloseBtn;
}
@end
