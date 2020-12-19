//
//  MPRecentProjectsView.m
//  magicPicsew
//
//  Created by 123 on 2020/12/1.
//

#import "MPRecentProjectsView.h"
#import "MPRecentProjectsModel.h"
#import "MPRecentProjectsTableViewCell.h"
#import <AssetsLibrary/AssetsLibrary.h>
#import <Photos/Photos.h>
@interface MPRecentProjectsView()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, strong) UITableView *MPtableView;

@property (nonatomic, strong) NSMutableArray *MPDataArray;

@end

@implementation MPRecentProjectsView
- (instancetype)init
{
    self = [super init];
    if (self) {
        [self MPsetContentViews];
    }
    return self;
}
- (void)layoutSubviews{
    [super layoutSubviews];
    [self MPsetLayoutContentViews];
}
#pragma mark - actions

#pragma mark - 获取手机相册群组
- (NSMutableArray *)MPGetPhoneAlbumGroups{
    NSMutableArray *MPgroups = [[NSMutableArray alloc] init];
    // 获得所有的自定义相簿
    PHFetchResult<PHAssetCollection *> *MPassetCollections = [PHAssetCollection fetchAssetCollectionsWithType:PHAssetCollectionTypeAlbum subtype:PHAssetCollectionSubtypeSmartAlbumUserLibrary options:nil];
    // 遍历所有的自定义相簿
    for (PHAssetCollection *MPassetCollection in MPassetCollections) {
        [MPgroups addObject:MPassetCollection];
    }
    return MPgroups;
}
- (void)MPsetContentViews{
        PHFetchOptions *allPhotosOptions = [[PHFetchOptions alloc] init];
        // 获取所有照片（按创建时间升序）
        PHFetchResult<PHAsset *> *allPhotos = [PHAsset fetchAssetsWithOptions:allPhotosOptions];
        PHAsset *asset = allPhotos.lastObject;
        CGSize size = CGSizeZero;
        PHImageRequestOptions *options = [[PHImageRequestOptions alloc] init];
        // 同步获得图片, 只会返回1张图片
        options.synchronous = YES;
        // 从asset中获得图片
        [[PHImageManager defaultManager] requestImageForAsset:asset targetSize:size contentMode:PHImageContentModeDefault options:options resultHandler:^(UIImage * _Nullable result, NSDictionary * _Nullable info) {
            MPRecentProjectsModel *MPReProjectsModel = [[MPRecentProjectsModel alloc] init];
            MPReProjectsModel.MPplaceholderImgName = @"MP_zhanweifu";
            MPReProjectsModel.MPheadImg = result;
            MPReProjectsModel.MPtitle = @"最近项目";
            NSInteger count = 0;
            for (PHAsset *asset in allPhotos) {
                if (asset.mediaType == PHAssetMediaTypeImage) {
                    count++;
                }
            }
            MPReProjectsModel.MPphotoNumber = [NSString stringWithFormat:@"%ld",count];
            MPReProjectsModel.MPisSelected = YES;
            MPReProjectsModel.MPphotosArray = allPhotos;
            [self.MPDataArray addObject:MPReProjectsModel];
            
            NSMutableArray *MPphotoAlbum = [self MPGetPhoneAlbumGroups];
            for (int i = 0; i < MPphotoAlbum.count; i++) {
                 PHAssetCollection *MPasset = MPphotoAlbum[i];
                 PHImageRequestOptions *options = [[PHImageRequestOptions alloc] init];
                 // 同步获得图片, 只会返回1张图片
                 options.synchronous = YES;
                 // 获得相簿中的所有PHAsset对象
                 PHFetchResult<PHAsset *> *assets = [PHAsset fetchAssetsInAssetCollection:MPasset options:nil];
                 //取第一张图片
                 PHAsset *asset = assets.lastObject;
                 CGSize size = CGSizeZero;
                 // 从asset中获得图片
                 [[PHImageManager defaultManager] requestImageForAsset:asset targetSize:size contentMode:PHImageContentModeDefault options:options resultHandler:^(UIImage * _Nullable result, NSDictionary * _Nullable info) {
                     MPRecentProjectsModel *MPReProjectsModel = [[MPRecentProjectsModel alloc] init];
                     MPReProjectsModel.MPplaceholderImgName = @"MP_zhanweifu";
                     MPReProjectsModel.MPheadImg = result;
                     MPReProjectsModel.MPtitle = MPasset.localizedTitle;
                     NSInteger count = 0;
                     for (PHAsset *asset in assets) {
                         if (asset.mediaType == PHAssetMediaTypeImage) {
                             count++;
                         }
                     }
                     MPReProjectsModel.MPphotoNumber = [NSString stringWithFormat:@"%ld",count];
                     MPReProjectsModel.MPisSelected = NO;
                     MPReProjectsModel.MPphotosArray = assets;
                 [self.MPDataArray addObject:MPReProjectsModel];
              }];
            }
                 [self.MPtableView reloadData];
         }];
}
- (void)MPsetLayoutContentViews{
    [self addSubview:self.MPtableView];
    [self.MPtableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self);
        make.top.equalTo(self);
        make.right.equalTo(self);
        make.bottom.equalTo(self);
    }];
}
#pragma mark - UITableView代理方法
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.MPDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    MPRecentProjectsModel *MPmodel = self.MPDataArray[indexPath.row];
    MPRecentProjectsTableViewCell *MPcell = [tableView dequeueReusableCellWithIdentifier:@"MPRecentProjectsTableViewCell" forIndexPath:indexPath];
    MPcell.MPmodel = MPmodel;
    return  MPcell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    MPRecentProjectsModel *MPmodel = self.MPDataArray[indexPath.row];
    MPmodel.MPisSelected = YES;
    for (int i = 0; i < self.MPDataArray.count; i++) {
        MPRecentProjectsModel *model = self.MPDataArray[i];
        if (![model isEqual:MPmodel]) {
            model.MPisSelected = NO;
        }
    }
    [self.MPtableView reloadData];
    if (self.delegate && [self.delegate respondsToSelector:@selector(MPCurrentAlbumTitle:withPhotos:)]) {
        [self.delegate MPCurrentAlbumTitle:MPmodel.MPtitle  withPhotos:MPmodel.MPphotosArray];
    }
}
#pragma mark - 属性懒加载
- (UITableView *)MPtableView{
    if (!_MPtableView) {
        _MPtableView = [[UITableView alloc] init];
        _MPtableView = [[UITableView alloc] initWithFrame:self.bounds style:UITableViewStylePlain];
        [self addSubview:_MPtableView];
        _MPtableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        _MPtableView.rowHeight = UITableViewAutomaticDimension;
        _MPtableView.estimatedRowHeight = 55.0f;
        _MPtableView.sectionHeaderHeight = UITableViewAutomaticDimension;
        _MPtableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        _MPtableView.delegate = self;
        _MPtableView.dataSource = self;
        [_MPtableView registerClass:[MPRecentProjectsTableViewCell class] forCellReuseIdentifier:@"MPRecentProjectsTableViewCell"];
    }
    return _MPtableView;
}
- (NSMutableArray *)MPDataArray{
    if (!_MPDataArray) {
        _MPDataArray = [[NSMutableArray alloc] init];
    }
    return _MPDataArray;
}
@end
