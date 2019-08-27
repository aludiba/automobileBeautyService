//
//  SDWriteDiaryViewController.m
//  Simple Diary
//
//  Created by bykj on 2019/7/20.
//  Copyright © 2019 hgg. All rights reserved.
//

#import "SDWriteDiaryViewController.h"
#import "SDWriteDiaryViewController.h"
#import "SDJournalEditingToolbar.h"
#import "SDTextSetView.h"
#import "SDTextThemeView.h"
#import "SDTextPictureView.h"
#import "SDTextWeatherView.h"
#import "SDWriteDiaryModel.h"
#import "MLPhotoImageHelper.h"
#import <CoreLocation/CoreLocation.h>

@interface SDWriteDiaryViewController()<UITextViewDelegate,CLLocationManagerDelegate>
@property (nonatomic, strong) CLLocationManager *locationManager;//设置manager
@property(nonatomic, strong)UIButton *completeButton;
@property(nonatomic, strong)SDJournalEditingToolbar *editingToolbar;
@property(nonatomic, strong)NSMutableArray *selectImagesArray;
@property(nonatomic, strong)NSString *locationInformationString;
@property(nonatomic, strong)NSString *weatherInformationString;
@end

@implementation SDWriteDiaryViewController
+ (SDWriteDiaryViewController *)shareInstance{
    static SDWriteDiaryViewController *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[SDWriteDiaryViewController allocWithZone:NULL] init];
    });
    return client;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = NSLocalizedString(@"写日记", nil);
    // 添加通知监听见键盘弹出/退出
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardAction:) name:UIKeyboardWillShowNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardAction:) name:UIKeyboardWillHideNotification object:nil];
    [self locate];
    [self setContentView];
    [self setGestureRecognizer];
    [self.textView becomeFirstResponder];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
}
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
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
    [self presentViewController:alert animated:YES completion:nil];
}
-(void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray<CLLocation *> *)locations {
    [self.locationManager stopUpdatingLocation];//停止定位
    //地理反编码
    CLLocation *currentLocation = [locations lastObject];
    CLGeocoder *geoCoder = [[CLGeocoder alloc]init];
    __weak typeof(self) weakSelf = self;
    [geoCoder reverseGeocodeLocation:currentLocation completionHandler:^(NSArray<CLPlacemark *> * _Nullable placemarks, NSError * _Nullable error) {
        if (placemarks.count > 0) {
            CLPlacemark *placeMark = placemarks[0];
            NSString *city = placeMark.locality;
            if (!city) {
             weakSelf.editingToolbar.textWeatherView.locationInformationString = NSLocalizedString(@"定位失败", nil);
            weakSelf.editingToolbar.textWeatherView.locationInformationLabel.text = weakSelf.editingToolbar.textWeatherView.locationInformationString;
            } else {
                weakSelf.editingToolbar.textWeatherView.locationInformationString = [NSString stringWithFormat:@"%@%@%@%@",placeMark.country,placeMark.locality,placeMark.subLocality,placeMark.name];
                weakSelf.editingToolbar.textWeatherView.locationInformationLabel.text = weakSelf.editingToolbar.textWeatherView.locationInformationString;
            }
        } else if (error == nil && placemarks.count == 0 ) {
            
        } else if (error) {
            weakSelf.editingToolbar.textWeatherView.locationInformationString = NSLocalizedString(@"定位失败", nil);
            weakSelf.editingToolbar.textWeatherView.locationInformationLabel.text = weakSelf.editingToolbar.textWeatherView.locationInformationString;
        }
        weakSelf.locationInformationString = weakSelf.editingToolbar.textWeatherView.locationInformationString;
        weakSelf.releaseModel.location = weakSelf.locationInformationString;
    }];
}
// 点击非TextField区域取消第一响应者
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.textView resignFirstResponder];
}
// 键盘监听事件
- (void)keyboardAction:(NSNotification*)sender{
    // 通过通知对象获取键盘frame: [value CGRectValue]
    NSDictionary *useInfo = [sender userInfo];
    NSValue *value = [useInfo objectForKey:UIKeyboardFrameEndUserInfoKey];
    // <注意>具有约束的控件通过改变约束值进行frame的改变处理
    if([sender.name isEqualToString:UIKeyboardWillShowNotification]){
        [UIView animateWithDuration:1.5 animations:^{
            [self.textView layoutIfNeeded];
            [self.view layoutSubviews];
        }];
//        [self.textView mas_updateConstraints:^(MASConstraintMaker *make) {
//            make.bottom.equalTo(self.mas_bottomLayoutGuideBottom).offset(-285);
//        }];
        }else{
            [UIView animateWithDuration:1.5 animations:^{
                [self.textView layoutIfNeeded];
                [self.view layoutSubviews];
            }];
//            [self.textView mas_updateConstraints:^(MASConstraintMaker *make) {
//                make.bottom.equalTo(self.mas_bottomLayoutGuideBottom).offset(0);
//            }];
        }
}
- (void)SD_setupNavigationItems{
    [super SD_setupNavigationItems];
    [self setNavigationBarItems];
}
- (void)setNavigationBarItems{
    UIBarButtonItem *completeItem = [[UIBarButtonItem alloc] initWithCustomView:self.completeButton];
    self.navigationItem.rightBarButtonItem = completeItem;
}
- (void)setContentView{
    if (self.type == SDWriteDiaryViewControllerTypeDefault) {
        NSNumber *fontSize = [[NSUserDefaults standardUserDefaults] objectForKey:FONTSIZE];
        CGFloat fontsize = 17;
        if (fontSize) {
            fontsize = [fontSize floatValue];
        }
    self.releaseModel.fontSize = [NSString stringWithFormat:@"%lf",fontsize];
    NSDictionary *textColorDic = [[NSUserDefaults standardUserDefaults] objectForKey:FONTRGB];
    self.releaseModel.fontRGB = textColorDic;
    NSDictionary *themeColorDic = [[NSUserDefaults standardUserDefaults] objectForKey:THEMERGB];
    self.releaseModel.themeRGB = themeColorDic;
    self.releaseModel.location = self.editingToolbar.textWeatherView.locationInformationString;
    self.releaseModel.weather = self.editingToolbar.textWeatherView.weatherInformationString;
    self.editingToolbar.isExpand = NO;
    }else if(self.type == SDWriteDiaryViewControllerTypeEdit){
        self.editingToolbar.textSetView.fontSize = [self.releaseModel.fontSize floatValue];
        self.editingToolbar.isExpand = YES;
        self.editingToolbar.textSetView.fontRGBDictionary = self.releaseModel.fontRGB;
        self.editingToolbar.textThemeView.themeRGBDictionary = self.releaseModel.themeRGB;
        self.editingToolbar.textWeatherView.locationInformationString = self.releaseModel.location;
        self.editingToolbar.textWeatherView.weatherInformationString = self.releaseModel.weather;
        self.weatherInformationString = self.editingToolbar.textWeatherView.weatherInformationString;
        self.textView.text = self.releaseModel.content;
        NSDictionary *themeDic = self.releaseModel.themeRGB;
        NSInteger themeR = [[themeDic objectForKey:@"R"] integerValue];
        NSInteger themeG = [[themeDic objectForKey:@"G"] integerValue];
        NSInteger themeB = [[themeDic objectForKey:@"B"] integerValue];
        self.textView.backgroundColor = SDH_Color(themeR, themeG, themeB, 1);
        NSDictionary *fontDic = self.releaseModel.fontRGB;
        NSInteger fontR = [[fontDic objectForKey:@"R"] integerValue];
        NSInteger fontG = [[fontDic objectForKey:@"G"] integerValue];
        NSInteger fontB = [[fontDic objectForKey:@"B"] integerValue];
        self.textView.textColor = SDH_Color(fontR, fontG, fontB, 1);
        CGFloat fontSize = [self.releaseModel.fontSize floatValue];
        self.textView.font = [UIFont systemFontOfSize:fontSize];
        self.editingToolbar.isExpand = NO;
    }
}
- (void)setGestureRecognizer{
    UISwipeGestureRecognizer *rightRecognizer = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handleSwipeFrom:)];
    [rightRecognizer setDirection:(UISwipeGestureRecognizerDirectionRight)];
    [self.view addGestureRecognizer:rightRecognizer];
    UISwipeGestureRecognizer *leftRecognizer = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handleSwipeFrom:)];
    [leftRecognizer setDirection:(UISwipeGestureRecognizerDirectionLeft)];
    [self.view addGestureRecognizer:leftRecognizer];
    UISwipeGestureRecognizer *upRecognizer = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handleSwipeFrom:)];
    [upRecognizer setDirection:(UISwipeGestureRecognizerDirectionUp)];
    [self.view addGestureRecognizer:upRecognizer];
    UISwipeGestureRecognizer *downRecognizer = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handleSwipeFrom:)];
    [downRecognizer setDirection:(UISwipeGestureRecognizerDirectionDown)];
    [self.view addGestureRecognizer:downRecognizer];
}
#pragma mark - actions
- (void)btnClick:(UIButton *)sender{
    self.releaseModel.content = self.textView.text;
    if (!self.releaseModel.content.length) {
        [MBProgressHUD SDshowReminderText:NSLocalizedString(@"请输入日记内容", nil)];
    }
    CGFloat fontsize = [self.releaseModel.fontSize floatValue];
    NSNumber *fontSize = [NSNumber numberWithFloat:fontsize];
    [[NSUserDefaults standardUserDefaults] setObject:fontSize forKey:FONTSIZE];
    [[NSUserDefaults standardUserDefaults] setObject:self.releaseModel.fontRGB forKey:FONTRGB];
    [[NSUserDefaults standardUserDefaults] setObject:self.releaseModel.themeRGB forKey:THEMERGB];
    NSDate *nowDate = [[NSDate alloc] init];
    if (!self.releaseModel.date.length) {
        self.releaseModel.date = [self dateToString:nowDate withDateFormat:@"yyyy-MM-dd HH:mm"];
    }
    NSInteger weekDay = [CalendarTool convertDateToWeekDay:nowDate];
    switch (weekDay) {
        case 0:
            self.releaseModel.weekDay = @"星期日";
            break;
        case 1:
            self.releaseModel.weekDay = @"星期一";
            break;
        case 2:
            self.releaseModel.weekDay = @"星期二";
            break;
        case 3:
            self.releaseModel.weekDay = @"星期三";
            break;
        case 4:
            self.releaseModel.weekDay = @"星期四";
            break;
        case 5:
            self.releaseModel.weekDay = @"星期五";
            break;
        case 6:
            self.releaseModel.weekDay = @"星期六";
            break;
        default:
            break;
    }
    if (self.selectImagesArray.count) {
        [BmobFile filesUploadBatchWithPaths:self.selectImagesArray progressBlock:^(int index, float progress) {
        NSLog(@"index %d progress %f",index,progress);
    } resultBlock:^(NSArray *array, BOOL isSuccessful, NSError *error) {
        if (isSuccessful) {
            //存放文件URL的数组
            NSMutableArray *fileArray = [NSMutableArray array];
            for (int i = 0; i < array.count;i++) {
                BmobFile *file = array [i];
                [fileArray addObject:file.url];
            }
            self.releaseModel.imageUrls = [fileArray copy];
            NSDictionary *jsonDictionary = (NSDictionary *)[self.releaseModel yy_modelToJSONObject];
            BmobObject *diary = [BmobObject objectWithClassName:@"Diary"];
            [diary saveAllWithDictionary:jsonDictionary];
            [diary saveInBackgroundWithResultBlock:^(BOOL isSuccessful, NSError *error) {
                if (isSuccessful) {
                    //创建成功后的动作
                    NSLog(@"保存成功~~~");
                    [self.navigationController popViewControllerAnimated:YES];
                } else if (error){
                    //发生错误后的动作
                    NSLog(@"保存错误%@",error);
                } else {
                    NSLog(@"Unknow error");
                }
            }];
        }else{
            NSLog(@"上传图片发生错误error:%@",error.userInfo);
        }
    }];
    }else{
        NSDictionary *jsonDictionary = (NSDictionary *)[self.releaseModel yy_modelToJSONObject];
        if (self.type == SDWriteDiaryViewControllerTypeDefault) {
        BmobObject *diary = [BmobObject objectWithClassName:@"Diary"];
        [diary saveAllWithDictionary:jsonDictionary];
        BmobUser *author = [BmobUser currentUser];
        [diary setObject:author forKey:@"author"];
        [diary saveInBackgroundWithResultBlock:^(BOOL isSuccessful, NSError *error) {
            if (isSuccessful) {
                //创建成功后的动作
                [MBProgressHUD SDshowReminderText:NSLocalizedString(@"添加成功", nil)];
                [self.navigationController popViewControllerAnimated:YES];
            } else if (error){
                //发生错误后的动作
                [MBProgressHUD SDshowReminderText:[NSString stringWithFormat:@"%@",error]];
            } else {
                NSLog(@"Unknow error");
            }
        }];
        }else if (self.type == SDWriteDiaryViewControllerTypeEdit){
            BmobObject *diary = [BmobObject objectWithoutDataWithClassName:@"Diary" objectId:self.releaseModel.objectId];
            [diary saveAllWithDictionary:jsonDictionary];
            [diary updateInBackgroundWithResultBlock:^(BOOL isSuccessful, NSError *error) {
                if (isSuccessful) {
                    [MBProgressHUD SDshowReminderText:NSLocalizedString(@"更新成功", nil)];
                    [self.navigationController popToRootViewControllerAnimated:YES];
                } else {
                    [MBProgressHUD SDshowReminderText:[NSString stringWithFormat:@"%@",error]];
                }
            }];
        }
    }
}
//日期格式转字符串
- (NSString *)dateToString:(NSDate *)date withDateFormat:(NSString *)format{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:format];
    NSString *strDate = [dateFormatter stringFromDate:date];
    return strDate;
}
- (void)handleSwipeFrom:(UISwipeGestureRecognizer*)recognizer{
    if(recognizer.direction == UISwipeGestureRecognizerDirectionDown) {
        NSLog(@"swipe down");
    }
    if(recognizer.direction ==UISwipeGestureRecognizerDirectionUp) {
        NSLog(@"swipe up");
    }
    if(recognizer.direction ==UISwipeGestureRecognizerDirectionLeft) {
        NSLog(@"swipe left");
    }
    if(recognizer.direction ==UISwipeGestureRecognizerDirectionRight) {
        NSLog(@"swipe right");
    }
    [self.view endEditing:YES];
}
#pragma mark - getters
- (UIButton *)completeButton{
    if (!_completeButton) {
        _completeButton = [[UIButton alloc] init];
        [_completeButton addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
        [_completeButton setImage:[UIImage imageNamed:@"SD_complete"] forState:UIControlStateNormal];
    }
    return _completeButton;
}
- (NSMutableArray *)selectImagesArray{
    if (!_selectImagesArray) {
        _selectImagesArray = [[NSMutableArray alloc] init];
    }
    return _selectImagesArray;
}
- (SDJournalEditingToolbar *)editingToolbar{
    if (!_editingToolbar) {
        _editingToolbar = [[SDJournalEditingToolbar alloc] init];
        _editingToolbar.superVC = self;
        self.weatherInformationString = @"SD_sunny";
        self.releaseModel.weather = @"SD_sunny";
        __weak typeof(self) weakSelf = self;
        _editingToolbar.editingToolbarBlock = ^(SDJournalEditingToolbar * _Nonnull editingToolbar) {
            if (editingToolbar.completetype == editingToolbarCompleteTypeLift) {
                if (editingToolbar.isExpand) {
                    weakSelf.textView.hidden = YES;
                }else{
                    weakSelf.textView.hidden = NO;
                    weakSelf.textView.font = [UIFont systemFontOfSize:editingToolbar.textSetView.fontSize];
                    weakSelf.releaseModel.fontSize = [NSString stringWithFormat:@"%lf",editingToolbar.textSetView.fontSize];
                    weakSelf.textView.textColor = editingToolbar.textSetView.fontColor;
                    weakSelf.releaseModel.fontRGB = editingToolbar.textSetView.fontRGBDictionary;
                    weakSelf.textView.backgroundColor = editingToolbar.textThemeView.themeColor;
                    weakSelf.releaseModel.themeRGB = editingToolbar.textThemeView.themeRGBDictionary;
                    if (weakSelf.selectImagesArray.count) {
                        [weakSelf.selectImagesArray removeAllObjects];
                    }
                    for (int i = 0; i < editingToolbar.textPictureView.selectArray.count; i++) {
                        ImageModel *imageModel = editingToolbar.textPictureView.selectArray[i];
                        [MLPhotoImageHelper getImageDataWithAsset:imageModel.asset complete:^(UIImage *image,UIImage*HDImage) {
                            if (image) {
                                NSData *imageData = [SDHBTool compressImage:image toByte:100000]; 
                                NSArray *paths=NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
                                    NSString *doucument=paths[0];
                                NSString *filename = [imageModel.asset valueForKey:@"filename"];

                                NSString *fullpath = [doucument stringByAppendingPathComponent:filename];
                                
                                [imageData writeToFile:fullpath atomically:YES];
                                [weakSelf.selectImagesArray addObject:fullpath];
                            }
                        }];
                    }
                    weakSelf.locationInformationString = editingToolbar.textWeatherView.locationInformationString;
                    weakSelf.releaseModel.location = editingToolbar.textWeatherView.locationInformationString;
                    weakSelf.weatherInformationString = editingToolbar.textWeatherView.weatherInformationString;
                    weakSelf.releaseModel.weather = editingToolbar.textWeatherView.weatherInformationString;
                }
            }
        };
    }
    return _editingToolbar;
}
- (UITextView *)textView{
    if (!_textView) {
        _textView = [[UITextView alloc] init];
        [self.view addSubview:self.editingToolbar];
        [self.editingToolbar mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.top.equalTo(self.mas_topLayoutGuideBottom);
            make.height.mas_equalTo(4 * 90);
        }];
        [self.view addSubview:_textView];
        [_textView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.mas_topLayoutGuideBottom).offset(90);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.mas_bottomLayoutGuideBottom).offset(0);
        }];
        _textView.delegate = self;
        NSNumber *fontSize = [[NSUserDefaults standardUserDefaults] objectForKey:FONTSIZE];
        CGFloat fontsize = 17;
        if (fontSize) {
            fontsize = [fontSize floatValue];
        }
        NSDictionary *textColorDic = [[NSUserDefaults standardUserDefaults] objectForKey:FONTRGB];
        NSInteger R = [[textColorDic objectForKey:@"R"] integerValue];
        NSInteger G = [[textColorDic objectForKey:@"G"] integerValue];
        NSInteger B = [[textColorDic objectForKey:@"B"] integerValue];
        NSDictionary *themeColorDic = [[NSUserDefaults standardUserDefaults] objectForKey:THEMERGB];
        NSInteger R1 = [[themeColorDic objectForKey:@"R"] integerValue];
        NSInteger G1 = [[themeColorDic objectForKey:@"G"] integerValue];
        NSInteger B1 = [[themeColorDic objectForKey:@"B"] integerValue];
        [_textView setFont:[UIFont systemFontOfSize:fontsize]];
        [_textView setTextColor:SDH_Color(R, G, B, 1)];
        [_textView setBackgroundColor:SDH_Color(R1, G1, B1, 1)];
    }
    return _textView;
}
- (SDWriteDiaryModel *)releaseModel{
    if (!_releaseModel) {
        _releaseModel = [[SDWriteDiaryModel alloc] init];
        _releaseModel.imageUrls = [[NSArray alloc] init];
    }
    return _releaseModel;
}
@end
