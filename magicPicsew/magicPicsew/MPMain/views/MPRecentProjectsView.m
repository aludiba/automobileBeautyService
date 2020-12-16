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
    NSMutableArray *MPphotoAlbum = [self MPGetPhoneAlbumGroups];
    for (int i = 0; i < MPphotoAlbum.count; i++) {
        PHAssetCollection *MPasset = MPphotoAlbum[i];
        MPRecentProjectsModel *MPReProjectsModel = [[MPRecentProjectsModel alloc] init];
        MPReProjectsModel.MPheadImgName = @"MP_zhanweifu";
        MPReProjectsModel.MPtitle = MPasset.localizedTitle;
        MPReProjectsModel.MPphotoNumber = [NSString stringWithFormat:@"%ld",MPasset.estimatedAssetCount];
        if (i == 0) {
            MPReProjectsModel.MPisSelected = YES;
        }else{
            MPReProjectsModel.MPisSelected = NO;
        }
        [self.MPDataArray addObject:MPReProjectsModel];
    }
    [self.MPtableView reloadData];
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
    if (self.delegate && [self.delegate respondsToSelector:@selector(MPCurrentAlbumTitle:)]) {
        [self.delegate MPCurrentAlbumTitle:MPmodel.MPtitle];
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
