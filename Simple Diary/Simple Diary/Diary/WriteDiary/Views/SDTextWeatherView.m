//
//  SDTextWeatherView.m
//  Simple Diary
//
//  Created by 褚红彪 on 2019/7/27.
//  Copyright © 2019 hgg. All rights reserved.
//

#import "SDTextWeatherView.h"
#import "SDDiaryViewController.h"
#import "SDWriteDiaryViewController.h"
#import <CoreLocation/CoreLocation.h>
@interface SDTextWeatherView()<CLLocationManagerDelegate>
@property (nonatomic, strong) CLLocationManager *locationManager;//设置manager
@property(nonatomic,strong)UILabel *locationTitleLabel;
@property(nonatomic,strong)UILabel *weatherTitleLabel;
@property(nonatomic,strong)NSMutableArray *weatherButtonImageNamesArray;
@property(nonatomic,strong)NSMutableArray *weatherButtonArray;
@end
@implementation SDTextWeatherView
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.backgroundColor = SDH_Color(247, 252, 251, 1);
        [self locate];
        [self setContentView];
        [self setLayoutContentView];
    }
    return self;
}
- (void)layoutSubviews{
    [super layoutSubviews];
}
- (void)locate{
    if ([CLLocationManager locationServicesEnabled]) {//监测权限设置
        self.locationManager = [[CLLocationManager alloc] init];
        self.locationManager.delegate = self;//设置代理
        self.locationManager.desiredAccuracy = kCLLocationAccuracyBest;//设置精度
        self.locationManager.distanceFilter = kCLDistanceFilterNone;//距离过滤
        [self.locationManager requestAlwaysAuthorization];//位置权限申请
        [self.locationManager startUpdatingLocation];//开始定位
    }
}
#pragma mark location代理
-(void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error {
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:NSLocalizedString(@"提示", nil) message:NSLocalizedString(@"您还未开启定位服务，是否需要开启？", nil)  preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *cancel = [UIAlertAction actionWithTitle:NSLocalizedString(@"取消", nil) style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
    }];
    UIAlertAction *queren = [UIAlertAction actionWithTitle:NSLocalizedString(@"确定", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        NSURL *setingsURL = [NSURL URLWithString:UIApplicationOpenSettingsURLString];
        [[UIApplication sharedApplication]openURL:setingsURL];
    }];
    [alert addAction:cancel];
    [alert addAction:queren];
    [[SDTabBarController shareInstance].SDDiaryVC.wdVC presentViewController:alert animated:YES completion:nil];
}
-(void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray<CLLocation *> *)locations {
    [self.locationManager stopUpdatingLocation];//停止定位
    //地理反编码
    CLLocation *currentLocation = [locations lastObject];
    CLGeocoder *geoCoder = [[CLGeocoder alloc]init];
    [geoCoder reverseGeocodeLocation:currentLocation completionHandler:^(NSArray<CLPlacemark *> * _Nullable placemarks, NSError * _Nullable error) {
        if (placemarks.count > 0) {
            CLPlacemark *placeMark = placemarks[0];
            NSString *city = placeMark.locality;
            if (!city) {
                self.locationInformationString = NSLocalizedString(@"定位失败", nil);
                self.locationInformationLabel.text = self.locationInformationString;
            } else {
                self.locationInformationString = [NSString stringWithFormat:@"%@%@%@%@",placeMark.country,placeMark.locality,placeMark.subLocality,placeMark.name];
                self.locationInformationLabel.text = self.locationInformationString;
            }
        } else if (error == nil && placemarks.count == 0 ) {
        } else if (error) {
            self.locationInformationString = NSLocalizedString(@"定位失败", nil);
            self.locationInformationLabel.text = self.locationInformationString;
        }
    }];
}
- (void)setContentView{
    [self addSubview:self.locationTitleLabel];
    [self addSubview:self.locationInformationLabel];
    [self addSubview:self.weatherTitleLabel];
}
- (void)setLayoutContentView{
    [self.locationTitleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self).offset(16);
        make.top.equalTo(self).offset(10);
        make.width.mas_equalTo(50);
        make.height.mas_equalTo(13);
    }];
    [self.locationInformationLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self).offset(30);
        make.top.equalTo(self.locationTitleLabel.mas_bottom).offset(10);
        make.trailing.equalTo(self).offset(-30);
        make.height.mas_equalTo(13);
    }];
    [self.weatherTitleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self).offset(16);
        make.top.equalTo(self.locationInformationLabel.mas_bottom).offset(10);
        make.width.mas_equalTo(50);
        make.height.mas_equalTo(13);
    }];
    CGFloat width = 60.0f;
    CGFloat height = 60.0f;
    CGFloat margin = (SDWIDTH - 5 * width) / 6;
    for (int i = 0; i < self.weatherButtonArray.count; i++) {
        SDButton *btn = self.weatherButtonArray[i];
        [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
        btn.tag = 100 + i;
        NSInteger line = i / 5;
        NSInteger column = i % 5;
        [self addSubview:btn];
        [btn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self).offset(margin * (column + 1) + width * column);
            make.top.equalTo(self.weatherTitleLabel.mas_bottom).offset(margin * (line + 1) + width * line);
            make.width.mas_equalTo(width);
            make.height.mas_equalTo(height);
        }];
    }
}
- (void)btnClick:(SDButton *)sender{
    self.weatherInformationString = self.weatherButtonImageNamesArray[sender.tag - 100];
}
#pragma mark - 属性懒加载
- (UILabel *)locationTitleLabel{
    if (!_locationTitleLabel) {
        _locationTitleLabel = [[UILabel alloc] init];
        _locationTitleLabel.font = [UIFont systemFontOfSize:12];
        _locationTitleLabel.textColor = [UIColor blackColor];
        [_locationTitleLabel setText:@"你在哪里"];
    }
    return _locationTitleLabel;
}
- (UILabel *)locationInformationLabel{
    if (!_locationInformationLabel) {
        _locationInformationLabel = [[UILabel alloc] init];
        _locationInformationLabel.font = [UIFont systemFontOfSize:12];
        _locationInformationLabel.textColor = [UIColor blackColor];
        if (self.locationInformationString.length) {
            _locationInformationLabel.text = self.locationInformationString;
        }
    }
    return _locationInformationLabel;
}
- (UILabel *)weatherTitleLabel{
    if (!_weatherTitleLabel) {
        _weatherTitleLabel = [[UILabel alloc] init];
        _weatherTitleLabel.font = [UIFont systemFontOfSize:12];
        _weatherTitleLabel.textColor = [UIColor blackColor];
        [_weatherTitleLabel setText:@"天气好吗"];
    }
    return _weatherTitleLabel;
}
- (NSMutableArray *)weatherButtonImageNamesArray{
    if (!_weatherButtonImageNamesArray) {
        _weatherButtonImageNamesArray = [[NSMutableArray alloc] initWithArray:@[@"SD_sunny",@"SD_cloudy",@"SD_fog",@"SD_hail",@"SD_moreCloud",@"SD_rain",@"SD_shower",@"SD_snow",@"SD_Thunderlightning"]];
        if (!self.weatherInformationString) {
            self.weatherInformationString = _weatherButtonImageNamesArray[0];
        }
    }
    return _weatherButtonImageNamesArray;
}
- (NSMutableArray *)weatherButtonArray{
    if (!_weatherButtonArray) {
        _weatherButtonArray = [[NSMutableArray alloc] init];
        for (int i = 0; i < self.weatherButtonImageNamesArray.count; i++) {
            NSString *imageNameString = self.weatherButtonImageNamesArray[i];
            SDButton *btn = [[SDButton alloc] init];
            [btn setImage:[UIImage imageNamed:imageNameString] forState:UIControlStateNormal];
            [_weatherButtonArray addObject:btn];
        }
        self.weatherInformationString = self.weatherButtonImageNamesArray[0];
    }
    return _weatherButtonArray;
}
@end
