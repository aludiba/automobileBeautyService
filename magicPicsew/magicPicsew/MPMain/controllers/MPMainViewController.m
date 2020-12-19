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

@interface MPMainViewController ()<UICollectionViewDataSource,UICollectionViewDelegate,MPRecentProjectsViewDelegate>

@property (nonatomic, strong) UIButton *MPnavRightBtn;//右侧设置按钮
@property (nonatomic, strong) UIView *MPnavTitleView;//自定义标题栏
@property (nonatomic, strong) UIButton *MPnavTitleBtn;//自定义标题按钮
@property (nonatomic, strong) UILabel *MPnavTitleLbl;//自定义标题
@property (nonatomic, strong) UIImageView *MPnavExpandCloseImgView;//展开和关闭图标
@property (nonatomic, assign) Boolean isExpand;//是否展开最近项目

@property (nonatomic, strong) UICollectionView *MPmainPicCollectionView;//主要相册展示控件
@property (nonatomic, strong) MPRecentProjectsView *MPrecentprojectsView;//相册类型选择控件
@property (nonatomic, strong) PHFetchResult<PHAsset *>  *MPcurrentPhotos;
@property (nonatomic, strong) NSMutableArray *MPDataArray;
@property (nonatomic, strong) UILabel *MPCurrentImgsCountLbl;//当前照片数量
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
//        PHFetchResult<PHAssetCollection *> *MPassetCollections = [PHAssetCollection fetchAssetCollectionsWithType:PHAssetCollectionTypeAlbum subtype:PHAssetCollectionSubtypeSmartAlbumUserLibrary options:nil];
//        PHAssetCollection *MPassetCollection = MPassetCollections.firstObject;
//        self.MPnavTitleLbl.text = MPassetCollection.localizedTitle;
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
    model.isSelect = YES;
}
#pragma mark - MPRecentProjectsView代理方法
- (void)MPCurrentAlbumTitle:(NSString *)MPAlbumTitle  withPhotos:(PHFetchResult<PHAsset *> *)MPphotos{
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
- (CGFloat)currentIpBottombarheight{
    CGFloat bottombarheight;
    if (@available(iOS 11.0, *)){
        bottombarheight = [[UIApplication sharedApplication] delegate].window.safeAreaInsets.bottom;
    }else{
        bottombarheight = 0;
    }
    return bottombarheight;
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
        _MPmainPicCollectionView = [[UICollectionView alloc] initWithFrame: CGRectMake(0, 0, MPWIDTH, MPHEIGHT - [self currentIpBottombarheight] - 45) collectionViewLayout:MPlayout];
        _MPmainPicCollectionView.backgroundColor = MPColor(242, 242, 242, 1);
        [self.view addSubview:_MPmainPicCollectionView];
        _MPmainPicCollectionView.dataSource = self;
        _MPmainPicCollectionView.delegate = self;
        [_MPmainPicCollectionView registerClass:[MPMainPhotoCollectionViewCell class] forCellWithReuseIdentifier:@"MPMainPhotoCollectionViewCell"];
    }
    return _MPmainPicCollectionView;
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
        _MPCurrentImgsCountLbl.frame = CGRectMake(0, MPHEIGHT - [self currentIpBottombarheight] - 45, MPWIDTH, 45);
        [self.view addSubview:_MPCurrentImgsCountLbl];
    }
    return _MPCurrentImgsCountLbl;
}
@end
