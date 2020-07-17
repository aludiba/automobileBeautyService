//
//  CDClockInViewController.m
//  GoodHabit
//
//  Created by 褚红彪 on 2019/9/21.
//  Copyright © 2019 hb. All rights reserved.
//

#import "CDClockInViewController.h"
#import "CDTodayViewController.h"
#import "CDGuideModel.h"
#import "CDAllClockLogsViewController.h"
@interface CDClockInViewController ()<UITextViewDelegate>
@property(nonatomic, strong)UILabel *CDclockInDateLabel;
@property(nonatomic, strong)UIView *CDprojectBackView;
@property(nonatomic, strong)UIImageView *CDprojectImgView;
@property(nonatomic, strong)UILabel *CDprojectLabel;
@property(nonatomic, strong)UITextView *CDclockInLogTextView;
@property(nonatomic, strong)UIButton *CDsaveButton;
@property(nonatomic, strong)UIButton *CDallLogButton;
@end

@implementation CDClockInViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"打卡日志", nil);
    [self CDsetContentView];
}
- (void)CDsetContentView{
    self.view.backgroundColor = [UIColor cyanColor];
    UIBarButtonItem *CDfinishItem = [[UIBarButtonItem alloc] initWithCustomView:self.CDallLogButton];
    self.navigationItem.rightBarButtonItem = CDfinishItem;
    
    [self.view addSubview:self.CDclockInDateLabel];
    [self.view addSubview:self.CDprojectBackView];
    [self.view addSubview:self.CDprojectImgView];
    [self.view addSubview:self.CDprojectLabel];
    [self.view addSubview:self.CDclockInLogTextView];
    [self.view addSubview:self.CDsaveButton];
    
    [self.CDclockInDateLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.mas_topLayoutGuideBottom).offset(20);
        make.trailing.equalTo(self.view).offset(-15);
        make.width.mas_equalTo(140);
        make.height.mas_equalTo(40);
    }];
    [self.CDprojectBackView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.CDclockInDateLabel.mas_bottom).offset(20);
        make.centerX.equalTo(self.view);
        make.width.mas_equalTo(82);
        make.height.mas_equalTo(50);
    }];
    [self.CDprojectImgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.CDclockInDateLabel.mas_bottom).offset(20);
        make.centerX.equalTo(self.view);
        make.width.mas_equalTo(50);
        make.height.mas_equalTo(50);
    }];
    [self.CDprojectLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.CDprojectImgView.mas_bottom);
        make.centerX.equalTo(self.view);
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(20);
    }];
    [self.CDclockInLogTextView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.CDprojectLabel.mas_bottom).offset(15);
        make.centerX.equalTo(self.view);
        make.width.mas_equalTo(CDWIDTH - 30);
        make.height.mas_equalTo(CDHEICDT - CDHeightNavBar - CDHeightNavContentBar - 165 - 90);
    }];
    [self.CDsaveButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view);
        make.bottom.equalTo(self.view).offset(-CDHeightNavContentBar - 15);
        make.width.mas_equalTo(60);
        make.height.mas_equalTo(30);
    }];
    NSDate *CDnowDate = [[NSDate alloc] init];
    NSString *CDnowDateString = [NSString stringWithFormat:@" %@ ",[CDUIUtilities CDformattedTimeStringWithDate:CDnowDate format:@"yyyy-MM-dd HH:mm"]];
    self.CDclockInDateLabel.text = CDnowDateString;
}
#pragma mark - 数据模型设置
- (void)setModel:(CDGuideModel *)model{
    _model = model;
    self.CDprojectImgView.image = [UIImage imageNamed:_model.CDimageContent];
    self.CDprojectLabel.text = _model.content;
    NSDate *CDnowDate = [[NSDate alloc] init];
    NSString *CDnowDateString = [CDUIUtilities CDformattedTimeStringWithDate:CDnowDate format:@"yyyy-MM-dd"];
    if (self.model.CDpunchArray.count) {
        NSMutableArray *CDpuchArray = [[NSMutableArray alloc] initWithArray:self.model.CDpunchArray];
        for (int i = 0; i < CDpuchArray.count; i++) {
            CDGuideClockInformationModel *CDmodel = CDpuchArray[i];
            NSString *CDclockDateString = [CDUIUtilities CDformattedTimeStringWithDate:CDmodel.CDclockDate format:@"yyyy-MM-dd"];
            NSLog(@"CDclockDateString:%@,nowDateString:%@",CDclockDateString,CDnowDateString);
            if ([CDclockDateString isEqualToString:CDnowDateString]) {
                self.CDclockInLogTextView.text = CDmodel.CDclockLogContent;
            }
        }
    }
}
#pragma mark - actions
- (void)CDallLogAction{
    CDAllClockLogsViewController *CDvc = [[CDAllClockLogsViewController alloc] init];
    CDvc.data = self.CDdataArray;
    CDvc.model = self.model;
    [self.navigationController pushViewController:CDvc animated:YES];
}
- (void)CDsaveAction{
    if (!self.CDclockInLogTextView.text.length) {
        [MBProgressHUD CDshowReminderText:NSLocalizedString(@"请输入日志", nil)];
        return;
    }
    NSDate *CDnowDate = [[NSDate alloc] init];
    NSString *CDnowDateString = [CDUIUtilities CDformattedTimeStringWithDate:CDnowDate format:@"yyyy-MM-dd"];
    if (!self.model.CDpunchArray.count) {
        NSMutableArray *CDpuchArray = [[NSMutableArray alloc] init];
        CDGuideClockInformationModel *CDmodel = [[CDGuideClockInformationModel alloc] init];
        CDmodel.CDclockDate = CDnowDate;
        CDmodel.CDclockLogContent = self.CDclockInLogTextView.text;
        [CDpuchArray addObject: CDmodel];
        self.model.CDpunchArray = CDpuchArray;
        self.model.CDlastClockDate = [CDUIUtilities CDdateFromString:CDnowDateString formate:@"yyyy-MM-dd"];
        self.model.CDclockContinuouslyNumber = 1;
    }else{
        NSMutableArray *CDpuchArray = [[NSMutableArray alloc] initWithArray:self.model.CDpunchArray];
        Boolean CDisNewClock = YES;
        for (int i = 0; i < CDpuchArray.count; i++) {
            CDGuideClockInformationModel *CDmodel = CDpuchArray[i];
            NSString *CDclockDateString = [CDUIUtilities CDformattedTimeStringWithDate:CDmodel.CDclockDate format:@"yyyy-MM-dd"];
            if ([CDclockDateString isEqualToString:CDnowDateString]) {
                CDmodel.CDclockLogContent = self.CDclockInLogTextView.text;
                CDmodel.CDclockDate = CDnowDate;
                CDisNewClock = NO;
            }
        }
        if (CDisNewClock == YES) {
            CDGuideClockInformationModel *CDmodel = [[CDGuideClockInformationModel alloc] init];
            CDmodel.CDclockDate = CDnowDate;
            CDmodel.CDclockLogContent = self.CDclockInLogTextView.text;
            [CDpuchArray addObject: CDmodel];
        }
        self.model.CDpunchArray = [CDpuchArray copy];
        NSCalendar *CDcalendar = [NSCalendar currentCalendar];
        NSCalendarUnit CDunit = NSCalendarUnitDay;//只比较天数差异
        //比较的结果是NSDateComponents类对象
        NSDateComponents *CDdelta = [CDcalendar components:CDunit fromDate:self.model.CDlastClockDate toDate:CDnowDate options:0];
        self.model.CDlastClockDate = [CDUIUtilities CDdateFromString:CDnowDateString formate:@"yyyy-MM-dd"];
        if (CDdelta.day >= 1 && CDdelta.day < 2) {
            self.model.CDclockContinuouslyNumber += 1;
        }else if (CDdelta.day >= 2){
            self.model.CDclockContinuouslyNumber = 1;
        }
    }
    NSMutableArray *CDselectArray = [[NSMutableArray alloc] init];
    for (int i = 0; i < self.CDdataArray.count; i++) {
        NSDictionary *CDdic = self.CDdataArray[i];
        NSMutableArray *CDdataArray = [CDdic objectForKey:@"data"];
        for (int j = 0; j < CDdataArray.count; j++) {
            CDGuideModel *CDmodel = CDdataArray[j];
            [CDselectArray addObject:CDmodel];
        }
    }
    AVObject *CDclockProjects = [AVObject objectWithClassName:@"CDClockProjects"];
    AVUser *CDauthor = [AVUser currentUser];
    [CDclockProjects setObject:CDauthor forKey:@"author"];
    NSMutableArray *CDtempArray = [[NSMutableArray alloc] init];
    for (int i = 0; i < CDselectArray.count; i++) {
        CDGuideModel *CDmodel = CDselectArray[i];
        NSMutableDictionary *CDdic = [[NSMutableDictionary alloc] initWithDictionary:(NSDictionary *)[CDmodel yy_modelToJSONObject]];
        [CDtempArray addObject:CDdic];
    }
    NSMutableDictionary *CDtempDic = [[NSMutableDictionary alloc] init];
    [CDtempDic setObject:CDtempArray forKey:@"data"];
    for (NSString *CDkey in CDtempDic.allKeys) {
        [CDclockProjects setObject:[CDtempDic objectForKey:CDkey]  forKey:CDkey];
    }
    [CDclockProjects saveInBackgroundWithBlock:^(BOOL isSuccessful, NSError *error) {
            if (isSuccessful) {
                  [MBProgressHUD CDshowReminderText:NSLocalizedString(@"设置成功", nil)];
                [self.CDsuperVC CDloadData];
                [self.navigationController popViewControllerAnimated:YES];
            } else if (error){
                [MBProgressHUD CDshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            } else {
                [MBProgressHUD CDshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            }
        }];
}
#pragma mark - 属性懒加载
- (UILabel *)CDclockInDateLabel{
    if (!_CDclockInDateLabel) {
        _CDclockInDateLabel = [[UILabel alloc] init];
        _CDclockInDateLabel.backgroundColor = [UIColor greenColor];
        _CDclockInDateLabel.textColor = [UIColor blackColor];
        _CDclockInDateLabel.font = [UIFont systemFontOfSize:15];
        _CDclockInDateLabel.textAlignment = NSTextAlignmentCenter;
        _CDclockInDateLabel.layer.cornerRadius = 8.0f;
        _CDclockInDateLabel.layer.masksToBounds = YES;
        _CDclockInDateLabel.numberOfLines = 0;
    }
    return _CDclockInDateLabel;
}
- (UIView *)CDprojectBackView{
    if (!_CDprojectBackView) {
        _CDprojectBackView = [[UIView alloc] init];
        _CDprojectBackView.backgroundColor = [UIColor whiteColor];
    }
    return _CDprojectBackView;
}
- (UIImageView *)CDprojectImgView{
    if (!_CDprojectImgView) {
        _CDprojectImgView = [[UIImageView alloc] init];
    }
    return _CDprojectImgView;
}
- (UILabel *)CDprojectLabel{
    if (!_CDprojectLabel) {
        _CDprojectLabel = [[UILabel alloc] init];
        _CDprojectLabel.backgroundColor = [UIColor whiteColor];
        _CDprojectLabel.textColor = [UIColor blackColor];
        _CDprojectLabel.font = [UIFont systemFontOfSize:13];
        _CDprojectLabel.textAlignment = NSTextAlignmentCenter;
        _CDprojectLabel.numberOfLines = 0;
    }
    return _CDprojectLabel;
}
- (UITextView *)CDclockInLogTextView{
    if (!_CDclockInLogTextView) {
        _CDclockInLogTextView = [[UITextView alloc] init];
        _CDclockInLogTextView.delegate = self;
        _CDclockInLogTextView.backgroundColor = [UIColor grayColor];
        _CDclockInLogTextView.layer.cornerRadius = 16.0f;
        _CDclockInLogTextView.layer.masksToBounds = YES;
        _CDclockInLogTextView.textColor = [UIColor blackColor];
        _CDclockInLogTextView.font = [UIFont systemFontOfSize:25];
        [_CDclockInLogTextView sizeToFit];
    }
    return _CDclockInLogTextView;
}
- (UIButton *)CDsaveButton{
    if (!_CDsaveButton) {
        _CDsaveButton = [[UIButton alloc] init];
        [_CDsaveButton setTitle:NSLocalizedString(@"保存", nil) forState:UIControlStateNormal];
        _CDsaveButton.backgroundColor = [UIColor blueColor];
        _CDsaveButton.layer.cornerRadius = 8.0f;
        _CDsaveButton.layer.masksToBounds = YES;
        [_CDsaveButton.titleLabel setFont:[UIFont systemFontOfSize:16]];
        [_CDsaveButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_CDsaveButton addTarget:self action:@selector(CDsaveAction) forControlEvents:UIControlEventTouchUpInside];
    }
    return _CDsaveButton;
}
- (UIButton *)CDallLogButton{
    if (!_CDallLogButton) {
        _CDallLogButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 49, 30)];
        [_CDallLogButton setTitle:NSLocalizedString(@"所有日志", nil) forState:UIControlStateNormal];
        [_CDallLogButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_CDallLogButton.titleLabel setFont:[UIFont systemFontOfSize:14]];
        [_CDallLogButton addTarget:self action:@selector(CDallLogAction) forControlEvents:UIControlEventTouchUpInside];
    }
    return _CDallLogButton;
}
@end
