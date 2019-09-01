//
//  ABMeasurementViewController.m
//  AroundTheDB
//
//  Created by bykj on 2019/8/14.
//  Copyright © 2019 hgg. All rights reserved.
//
#import <AVFoundation/AVFoundation.h>
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
#define kRecordAudioFile @"myRecord.caf"
#define BMK_KEY @"1qE0Fvek3PM2ufdkB1qakVQSkzBvHNk8"//百度地图的key
@interface ABMeasurementViewController ()<UITableViewDelegate,UITableViewDataSource,CLLocationManagerDelegate,BMKGeneralDelegate,BMKLocationManagerDelegate,BMKGeoCodeSearchDelegate,BMKLocationAuthDelegate,AVAudioRecorderDelegate>
/** 录音机 */
@property (nonatomic, strong) AVAudioRecorder *audioRecorder;
/** 音频播放器,用于播放录音文件 */
@property (nonatomic, strong) AVAudioPlayer *audioPlayer;
/** 录音声波监控（注意这里暂时不对播放进行监控） */
@property (nonatomic,strong) NSTimer *timer;
@property(nonatomic, strong)UITableView *mainTable;
@property(nonatomic, strong)ABMeasurementModel *model;
@property(nonatomic, strong)BMKLocationManager *locationManager;
@property (nonatomic, strong)BMKGeoCodeSearch *geocodesearch;
@property (nonatomic, strong)NSMutableArray *maxArray;
@property BOOL isGeoSearch;
@end

@implementation ABMeasurementViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = ABH_Color(15, 18, 39, 1);
    [self setAudioSession];
    [[BMKLocationAuth sharedInstance] checkPermisionWithKey:BMK_KEY authDelegate:self];
    [self.locationManager requestLocationWithReGeocode:YES withNetworkState:YES completionBlock:^(BMKLocation * _Nullable location, BMKLocationNetworkState state, NSError * _Nullable error) {
        if (error){
            
        }
        if (location) {
            //得到定位信息，添加annotation
            if (location.location) {
                
            }
            if (location.rgcData) {
                self.model.position = [NSString stringWithFormat:@"%@%@%@%@",location.rgcData.city,location.rgcData.district,location.rgcData.street,location.rgcData.locationDescribe];
            }
        }
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
#pragma mark - 录音方法
/**
 *  设置音频会话
 */
-(void)setAudioSession{
    AVAudioSession *audioSession=[AVAudioSession sharedInstance];
    //设置为播放和录音状态，以便可以在录制完之后播放录音
    [audioSession setCategory:AVAudioSessionCategoryPlayAndRecord error:nil];
    [audioSession setActive:YES error:nil];
}
/**
 *  取得录音文件保存路径
 *
 *  @return 录音文件路径
 */
-(NSURL *)getSavePath{
    NSString *urlStr=[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject];
    urlStr=[urlStr stringByAppendingPathComponent:kRecordAudioFile];
    NSURL *url=[NSURL fileURLWithPath:urlStr];
    return url;
}
/**
 *  取得录音文件设置
 *
 *  @return 录音设置
 */
- (NSDictionary *)getAudioSetting {
    
    NSMutableDictionary *dicM = [NSMutableDictionary dictionary];
    // 设置录音格式为lpcm
    [dicM setObject:@(kAudioFormatLinearPCM) forKey:AVFormatIDKey];
    // 设置录音采样率，8000是电话采样率，对于一般录音已经够了
    [dicM setObject:@(8000) forKey:AVSampleRateKey];
    // 声道
    [dicM setObject:@(2) forKey:AVNumberOfChannelsKey];
    // 每个采样点位数
    [dicM setObject:@(8) forKey:AVLinearPCMBitDepthKey];
    // 是否使用浮点数采样
    [dicM setObject:@(YES) forKey:AVLinearPCMIsFloatKey];
    // 录音品质
    [dicM setObject:@(AVAudioQualityHigh) forKey:AVSampleRateConverterAudioQualityKey];
    return dicM;
}
/**
 *  录音声波状态设置
 */
-(void)audioPowerChange{
    [self.audioRecorder updateMeters];//更新测量值
    float power = [self.audioRecorder averagePowerForChannel:0];
    float powerMax = [self.audioRecorder peakPowerForChannel:0];
    power = power + 160  - 50;
    int dB = 0;
    if (power < 0.f) {
        dB = 0;
    } else if (power < 40.f) {
        dB = (int)(power * 0.875);
    } else if (power < 100.f) {
        dB = (int)(power - 15);
    } else if (power < 110.f) {
        dB = (int)(power * 2.5 - 165);
    } else {
        dB = 110;
    }
    powerMax = powerMax + 160  - 50;
    int MaxdB = 0;
    if (powerMax < 0.f) {
        MaxdB = 0;
    } else if (powerMax < 40.f) {
        MaxdB = (int)(powerMax * 0.875);
    } else if (powerMax < 100.f) {
        MaxdB = (int)(powerMax - 15);
    } else if (powerMax < 110.f) {
        MaxdB = (int)(powerMax * 2.5 - 165);
    } else {
        MaxdB = 110;
    }
    self.model.realDB = [NSNumber numberWithInt:MaxdB];
    self.model.averageDB = [NSNumber numberWithInt:dB];
    [self.maxArray addObject:[NSNumber numberWithInt:MaxdB]];
    NSArray *result = [self.maxArray sortedArrayUsingComparator:^NSComparisonResult(id  _Nonnull obj1, id  _Nonnull obj2) {
        return [obj1 compare:obj2]; //升序
    }];
    NSNumber *maxNumber = [result lastObject];
    self.model.maxDB = maxNumber;
    [self.mainTable reloadData];
}
#pragma mark - 录音机代理方法
/**
 *  录音完成，录音完成后播放录音
 *
 *  @param recorder 录音机对象
 *  @param flag     是否成功
 */
-(void)audioRecorderDidFinishRecording:(AVAudioRecorder *)recorder successfully:(BOOL)flag{
    if (![self.audioPlayer isPlaying]) {
        [self.audioPlayer play];
    }
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
        cell.maxArray = self.maxArray;
        cell.model = self.model;
        __weak typeof(self) weakSelf = self;
        cell.measurementTestDBBlock = ^(ABMeasurementTestDBTableViewCell * _Nonnull cell) {
            if (cell.isStart) {
            if (![weakSelf.audioRecorder isRecording]) {
                [weakSelf.audioRecorder record];//首次使用应用时如果调用record方法会询问用户是否允许使用麦克风
                weakSelf.timer.fireDate = [NSDate distantPast];
            }
            }else{
                [weakSelf.audioRecorder stop];
                weakSelf.timer.fireDate=[NSDate distantFuture];
                [weakSelf saveData];
                weakSelf.model.title = @"";
                weakSelf.model.date = nil;
                weakSelf.model.maxDB = nil;
                weakSelf.model.realDB = nil;
                weakSelf.model.averageDB = nil;
                [weakSelf.maxArray removeAllObjects];
                [weakSelf.mainTable reloadData];
            }
        };
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
- (void)saveData{
    if (!self.model.title.length) {
        self.model.title = NSLocalizedString(@"无标题", nil);
    }
    if (!self.model.position.length) {
        [MBProgressHUD ABshowReminderText:NSLocalizedString(@"请刷新位置信息", nil)];
        return;
    }
    if (!self.model.maxDB && !self.model.averageDB) {
        [MBProgressHUD ABshowReminderText:NSLocalizedString(@"请检测分贝", nil)];
        return;
    }
    NSDate *nowDate = [[NSDate alloc] init];
    NSMutableDictionary *jsonDictionary = [[NSMutableDictionary alloc] initWithDictionary:(NSDictionary *)[self.model yy_modelToJSONObject]];
    [jsonDictionary setObject:nowDate forKey:@"date"];
    BmobObject *DB = [BmobObject objectWithClassName:@"DB"];
    [DB saveAllWithDictionary:jsonDictionary];
    BmobUser *author = [BmobUser currentUser];
    [DB setObject:author forKey:@"author"];
    [DB saveInBackgroundWithResultBlock:^(BOOL isSuccessful, NSError *error) {
        if (isSuccessful) {
            //创建成功后的动作
        } else if (error){
            //发生错误后的动作
            [MBProgressHUD ABshowReminderText:[NSString stringWithFormat:@"%@",error]];
        } else {
            
        }
    }];
}
#pragma mark - 属性懒加载
- (AVAudioRecorder *)audioRecorder{
    if (!_audioRecorder) {
        // 保存路径
        NSURL *url = [self getSavePath];
        // 录音设置
        NSDictionary *setting = [self getAudioSetting];
        // 创建录音机
        NSError *error = nil;
        _audioRecorder = [[AVAudioRecorder alloc] initWithURL:url settings:setting error:&error];
        _audioRecorder.delegate = self;
        _audioRecorder.meteringEnabled = YES;
        
        if (error) {
            return nil;
        }
        
    }
    return _audioRecorder;
}
/**
 *  录音声波监控定制器
 *
 *  @return 定时器
 */
-(NSTimer *)timer {
    if (!_timer) {
        _timer = [NSTimer scheduledTimerWithTimeInterval:0.1f target:self selector:@selector(audioPowerChange) userInfo:nil repeats:YES];
    }
    return _timer;
}
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
- (NSMutableArray *)maxArray{
    if (!_maxArray) {
        _maxArray = [[NSMutableArray alloc] init];
    }
    return _maxArray;
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
    }
    return _mainTable;
}
@end
