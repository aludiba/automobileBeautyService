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
    NSMutableArray *groups = [[NSMutableArray alloc] init];
    ALAssetsLibrary *library = [[ALAssetsLibrary alloc] init];
    ALAssetsLibraryGroupsEnumerationResultsBlock listGroupBlock = ^(ALAssetsGroup *group, BOOL *stop) {
        if (group) {
            [groups addObject:group];
        }
        NSLog(@"groups:%@",groups);
    };
    NSUInteger groupTypes = ALAssetsGroupAlbum;
    [library enumerateGroupsWithTypes:groupTypes usingBlock:listGroupBlock failureBlock:nil];
    NSLog(@"groups1:%@",groups);
    return groups;

}
- (void)MPsetContentViews{
    NSMutableArray *MPphotoAlbum = [self MPGetPhoneAlbumGroups];
    NSLog(@"MPphotoAlbum:%@",MPphotoAlbum);
    MPRecentProjectsModel *MPReProjectsModel = [[MPRecentProjectsModel alloc] init];
    MPReProjectsModel.MPheadImgName = @"MP_zhanweifu";
    MPReProjectsModel.MPtitle = @"最近项目";
    MPReProjectsModel.MPphotoNumber = @"0";
    MPReProjectsModel.MPisSelected = YES;
    [self.MPDataArray addObject:MPReProjectsModel];
    
    MPRecentProjectsModel *MPReTimeSequenceProjectsModel = [[MPRecentProjectsModel alloc] init];
    MPReTimeSequenceProjectsModel.MPheadImgName = @"MP_zhanweifu";
    MPReTimeSequenceProjectsModel.MPtitle = @"最近项目(时间顺序)";
    MPReTimeSequenceProjectsModel.MPphotoNumber = @"0";
    [self.MPDataArray addObject:MPReTimeSequenceProjectsModel];
    
    MPRecentProjectsModel *MPscreenshotsModel = [[MPRecentProjectsModel alloc] init];
    MPscreenshotsModel.MPheadImgName = @"MP_zhanweifu";
    MPscreenshotsModel.MPtitle = @"截屏";
    MPscreenshotsModel.MPphotoNumber = @"0";
    [self.MPDataArray addObject:MPscreenshotsModel];
    
    MPRecentProjectsModel *MPselfieModel = [[MPRecentProjectsModel alloc] init];
    MPselfieModel.MPheadImgName = @"MP_zhanweifu";
    MPselfieModel.MPtitle = @"自拍";
    MPselfieModel.MPphotoNumber = @"0";
    [self.MPDataArray addObject:MPselfieModel];
    
    MPRecentProjectsModel *MPlivephotosModel = [[MPRecentProjectsModel alloc] init];
    MPlivephotosModel.MPheadImgName = @"MP_zhanweifu";
    MPlivephotosModel.MPtitle = @"实况照片";
    MPlivephotosModel.MPphotoNumber = @"0";
    [self.MPDataArray addObject:MPlivephotosModel];
    
    MPRecentProjectsModel *MPPanoramicphotosModel = [[MPRecentProjectsModel alloc] init];
    MPPanoramicphotosModel.MPheadImgName = @"MP_zhanweifu";
    MPPanoramicphotosModel.MPtitle = @"全景照片";
    MPPanoramicphotosModel.MPphotoNumber = @"0";
    [self.MPDataArray addObject:MPPanoramicphotosModel];
    
    MPRecentProjectsModel *MPEvensnapshotModel = [[MPRecentProjectsModel alloc] init];
    MPEvensnapshotModel.MPheadImgName = @"MP_zhanweifu";
    MPEvensnapshotModel.MPtitle = @"连拍快照";
    MPEvensnapshotModel.MPphotoNumber = @"0";
    [self.MPDataArray addObject:MPEvensnapshotModel];
    
    MPRecentProjectsModel *MPDynamicfigureModel = [[MPRecentProjectsModel alloc] init];
    MPDynamicfigureModel.MPheadImgName = @"MP_zhanweifu";
    MPDynamicfigureModel.MPtitle = @"动图";
    MPDynamicfigureModel.MPphotoNumber = @"0";
    [self.MPDataArray addObject:MPDynamicfigureModel];
    
    MPRecentProjectsModel *MPQQModel = [[MPRecentProjectsModel alloc] init];
    MPQQModel.MPheadImgName = @"MP_zhanweifu";
    MPQQModel.MPtitle = @"QQ";
    MPQQModel.MPphotoNumber = @"0";
    [self.MPDataArray addObject:MPQQModel];
    
    MPRecentProjectsModel *MPTodayheadlineModel = [[MPRecentProjectsModel alloc] init];
    MPTodayheadlineModel.MPheadImgName = @"MP_zhanweifu";
    MPTodayheadlineModel.MPtitle = @"今日头条";
    MPTodayheadlineModel.MPphotoNumber = @"0";
    [self.MPDataArray addObject:MPTodayheadlineModel];
    
    MPRecentProjectsModel *MPweiboModel = [[MPRecentProjectsModel alloc] init];
    MPweiboModel.MPheadImgName = @"MP_zhanweifu";
    MPweiboModel.MPtitle = @"微博";
    MPweiboModel.MPphotoNumber = @"0";
    [self.MPDataArray addObject:MPweiboModel];
    
    MPRecentProjectsModel *MPNeteasenewsModel = [[MPRecentProjectsModel alloc] init];
    MPNeteasenewsModel.MPheadImgName = @"MP_zhanweifu";
    MPNeteasenewsModel.MPtitle = @"网易新闻";
    MPNeteasenewsModel.MPphotoNumber = @"0";
    [self.MPDataArray addObject:MPNeteasenewsModel];
    
    MPRecentProjectsModel *MPWeibofigureModel = [[MPRecentProjectsModel alloc] init];
    MPWeibofigureModel.MPheadImgName = @"MP_zhanweifu";
    MPWeibofigureModel.MPtitle = @"微博动图";
    MPWeibofigureModel.MPphotoNumber = @"0";
    [self.MPDataArray addObject:MPWeibofigureModel];
    
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
