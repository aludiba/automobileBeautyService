//
//  ABMeasurementViewController.m
//  AroundTheDB
//
//  Created by bykj on 2019/8/14.
//  Copyright © 2019 hgg. All rights reserved.
//

#import "ABMeasurementViewController.h"
#import "ABMeasurementTitleInputTableViewCell.h"
#import "ABMeasurementPositionTableViewCell.h"
#import "ABMeasurementTestDBTableViewCell.h"
#import "ABMeasurementReferenceTableViewCell.h"
#import "ABMapViewController.h"
#import "ABMeasurementModel.h"
#import <BaiduMapAPI_Base/BMKBaseComponent.h>//引入base相关所有的头文件
#import <BMKLocationKit/BMKLocationComponent.h>//引入定位功能所有的头文件
#import <BaiduMapAPI_Search/BMKSearchComponent.h>//引入检索功能所有的头文件
#define BMK_KEY @"1qE0Fvek3PM2ufdkB1qakVQSkzBvHNk8"//百度地图的key
@interface ABMeasurementViewController ()<UITableViewDelegate,UITableViewDataSource,CLLocationManagerDelegate,BMKGeneralDelegate,BMKLocationManagerDelegate,BMKGeoCodeSearchDelegate,BMKLocationAuthDelegate>
@property(nonatomic, strong)UITableView *mainTable;
@property(nonatomic, strong)ABMeasurementModel *model;
@property(nonatomic, strong)BMKLocationManager *locationManager;
@property (nonatomic, strong)BMKGeoCodeSearch *geocodesearch;
@property BOOL isGeoSearch;
@end

@implementation ABMeasurementViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = ABH_Color(15, 18, 39, 1);
    [[BMKLocationAuth sharedInstance] checkPermisionWithKey:BMK_KEY authDelegate:self];
    [self.locationManager requestLocationWithReGeocode:YES withNetworkState:YES completionBlock:^(BMKLocation * _Nullable location, BMKLocationNetworkState state, NSError * _Nullable error) {
        if (error)
        {
            NSLog(@"locError:{%ld - %@};", (long)error.code, error.localizedDescription);
        }
        if (location) {//得到定位信息，添加annotation

            if (location.location) {
                NSLog(@"LOC = %@",location.location);
            }
            if (location.rgcData) {
                NSLog(@"rgc = %@",[location.rgcData description]);
                self.model.position = [NSString stringWithFormat:@"%@%@%@%@",location.rgcData.city,location.rgcData.district,location.rgcData.street,location.rgcData.locationDescribe];
                NSLog(@"当前位置:%@",self.model.position);
            }
        }
        NSLog(@"netstate = %d",state);
        [self.mainTable reloadData];
    }];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.hidden = YES;
}
- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
}
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    self.navigationController.navigationBar.hidden = NO;
}
- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate{
    [self.view endEditing:YES];
}
- (void)closeKeyBoard:(UIGestureRecognizer *)ges{
    [self.view endEditing:YES];
}
#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 4;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSInteger row = indexPath.row;
    if (row == 0) {
        ABMeasurementTitleInputTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ABMeasurementTitleInputTableViewCell" forIndexPath:indexPath];
        cell.model = self.model;
        __weak typeof(self) weakSelf = self;
        cell.ABMeasurementTitleInputB = ^(ABMeasurementTitleInputTableViewCell * _Nonnull cell) {
            weakSelf.model.title = cell.measurementTitle;
            [weakSelf.mainTable reloadData];
        };
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }else if (row == 1){
        ABMeasurementPositionTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ABMeasurementPositionTableViewCell" forIndexPath:indexPath];
        cell.model = self.model;
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }else if (row == 2){
        ABMeasurementTestDBTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ABMeasurementTestDBTableViewCell" forIndexPath:indexPath];
        cell.model = self.model;
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }else{
        ABMeasurementReferenceTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ABMeasurementReferenceTableViewCell" forIndexPath:indexPath];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSInteger row = indexPath.row;
    if (row == 0) {
        
    }else if (row == 1){
        ABMapViewController *mapVC = [[ABMapViewController alloc] init];
        mapVC.hidesBottomBarWhenPushed = YES;
        __weak typeof(self) weakSelf = self;
        mapVC.ABMapViewControllerB = ^(ABMapViewController * _Nonnull vc) {
            BMKLocation *location = vc.locatio;
            weakSelf.model.position = [NSString stringWithFormat:@"%@%@%@%@",location.rgcData.city,location.rgcData.district,location.rgcData.street,location.rgcData.locationDescribe];
            [weakSelf.mainTable reloadData];
        };
        [self.navigationController pushViewController:mapVC animated:YES];
    }else if (row == 2){
        
    }else{
        
    }
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}
#pragma mark - 属性懒加载
- (BMKLocationManager *)locationManager{
    if (!_locationManager) {
        _locationManager = [[BMKLocationManager alloc] init];
        _locationManager.delegate = self;
        //设置返回位置的坐标系类型
        _locationManager.coordinateType = BMKLocationCoordinateTypeBMK09LL;
        //设置距离过滤参数
        _locationManager.distanceFilter = kCLDistanceFilterNone;
        //设置预期精度参数
        _locationManager.desiredAccuracy = kCLLocationAccuracyBest;
        //设置应用位置类型
        _locationManager.activityType = CLActivityTypeAutomotiveNavigation;
        //设置是否自动停止位置更新
        _locationManager.pausesLocationUpdatesAutomatically = NO;
        //设置位置获取超时时间
        _locationManager.locationTimeout = 10;
        //设置获取地址信息超时时间
        _locationManager.reGeocodeTimeout = 10;
    }
    return _locationManager;
}
- (ABMeasurementModel *)model{
    if (!_model) {
        _model = [[ABMeasurementModel alloc] init];
    }
    return _model;
}
- (UITableView *)mainTable{
    if (!_mainTable) {
        _mainTable = [[UITableView alloc] init];
        _mainTable.backgroundColor = ABH_Color(15, 18, 39, 1);
        _mainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _mainTable.estimatedRowHeight = 55.0f;
        _mainTable.rowHeight = UITableViewAutomaticDimension;
        _mainTable.delegate = self;
        _mainTable.dataSource = self;
        [_mainTable registerClass:[ABMeasurementTitleInputTableViewCell class] forCellReuseIdentifier:@"ABMeasurementTitleInputTableViewCell"];
        [_mainTable registerClass:[ABMeasurementPositionTableViewCell class] forCellReuseIdentifier:@"ABMeasurementPositionTableViewCell"];
        [_mainTable registerClass:[ABMeasurementTestDBTableViewCell class] forCellReuseIdentifier:@"ABMeasurementTestDBTableViewCell"];
        [_mainTable registerClass:[ABMeasurementReferenceTableViewCell class] forCellReuseIdentifier:@"ABMeasurementReferenceTableViewCell"];
        [self.view addSubview:_mainTable];
        [_mainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.view);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.view).offset(-ABHeightTabBar-10);
        }];
//        UITapGestureRecognizer *tapGes = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(closeKeyBoard:)];
//        [self.view addGestureRecognizer:tapGes];
    }
    return _mainTable;
}
@end
