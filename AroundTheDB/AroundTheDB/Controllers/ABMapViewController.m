//
//  ABMapViewController.m
//  AroundTheDB
//
//  Created by 褚红彪 on 2019/8/18.
//  Copyright © 2019 hgg. All rights reserved.
//

#import "ABMapViewController.h"
#import <BaiduMapAPI_Base/BMKBaseComponent.h>
#import <BaiduMapAPI_Map/BMKMapComponent.h>
#import <BMKLocationKit/BMKLocationManager.h>
@interface ABMapViewController ()<BMKMapViewDelegate,BMKLocationManagerDelegate>
@property (nonatomic, strong) BMKLocationManager *locationManager;
@property(nonatomic, strong)BMKMapView *mapView;
@property (nonatomic, strong)BMKUserLocation *userLocation;//当前位置对象
@property(nonatomic , strong) BMKPointAnnotation *annotation;
@end

@implementation ABMapViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"位置";
    [self.view addSubview:self.mapView];
    [self.locationManager startUpdatingLocation];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self.mapView viewWillAppear];
}
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    [self.mapView viewWillDisappear];
}
#pragma mark - 定位至当前位置
- (void)BMKLocationManager:(BMKLocationManager * _Nonnull)manager didUpdateLocation:(BMKLocation * _Nullable)locatio orError:(NSError * _Nullable)error{
    if (locatio){
        //显示当前位置
        BMKUserLocation *loca = [[BMKUserLocation alloc] init];
        loca.location = locatio.location;
        [self.mapView updateLocationData:loca];
        [self.mapView setCenterCoordinate:locatio.location.coordinate animated:YES];
        [self.locationManager stopUpdatingLocation];
        if (self.ABMapViewControllerB) {
            self.locatio = locatio;
            self.ABMapViewControllerB(self);
        }
    }
}
-(void)mapView:(BMKMapView *)mapView  onClickedMapBlank:(CLLocationCoordinate2D)coordinate{
    if (self.annotation)
    {
        [self.mapView removeAnnotation:self.annotation];
    }
    self.annotation = [[BMKPointAnnotation alloc]init];
    self.annotation.coordinate = coordinate;
    [self.mapView addAnnotation:self.annotation];
    [self.mapView setCenterCoordinate:coordinate animated:YES];
}
-(BMKLocationManager *)locationManager{
    if (!_locationManager)
    {
        _locationManager = [[BMKLocationManager alloc] init];
        _locationManager.delegate = self;
        _locationManager.coordinateType = BMKLocationCoordinateTypeBMK09LL;
        _locationManager.distanceFilter = kCLLocationAccuracyBestForNavigation;
        _locationManager.desiredAccuracy = kCLLocationAccuracyBest;
        _locationManager.activityType = CLActivityTypeAutomotiveNavigation;
        _locationManager.pausesLocationUpdatesAutomatically = NO;
        // YES的话是可以进行后台定位的，但需要项目配置，否则会报错，具体参考开发文档
        _locationManager.allowsBackgroundLocationUpdates = NO;
        _locationManager.locationTimeout = 10;
        _locationManager.reGeocodeTimeout = 10;
    }
    return _locationManager;
}
- (BMKMapView *)mapView{
    if (!_mapView) {
        _mapView = [[BMKMapView alloc] initWithFrame:self.view.bounds];
        _mapView.delegate = self;
        _mapView.showMapScaleBar = YES;
        _mapView.showsUserLocation = YES;
        _mapView.zoomLevel = 14;
        BMKLocationViewDisplayParam *param = [[BMKLocationViewDisplayParam alloc] init];
        [_mapView updateLocationViewWithParam:param];
        param.isAccuracyCircleShow = YES;
    }
    return _mapView;
}
@end
