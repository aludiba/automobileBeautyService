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
    UIBarButtonItem *finishItem = [[UIBarButtonItem alloc] initWithCustomView:self.CDallLogButton];
    self.navigationItem.rightBarButtonItem = finishItem;
    
    [self.view addSubview:self.CDclockInDateLabel];
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
    NSDate *nowDate = [[NSDate alloc] init];
    NSString *nowDateString = [NSString stringWithFormat:@" %@ ",[CDUIUtilities CDformattedTimeStringWithDate:nowDate format:@"yyyy-MM-dd HH:mm"]];
    self.CDclockInDateLabel.text = nowDateString;
}
#pragma mark - 数据模型设置
- (void)setModel:(CDGuideModel *)model{
    _model = model;
    self.CDprojectImgView.image = [UIImage imageNamed:_model.CDimageContent];
    self.CDprojectLabel.text = _model.content;
    NSDate *nowDate = [[NSDate alloc] init];
    NSString *nowDateString = [CDUIUtilities CDformattedTimeStringWithDate:nowDate format:@"yyyy-MM-dd"];
    if (self.model.CDpunchArray.count) {
        NSMutableArray *puchArray = [[NSMutableArray alloc] initWithArray:self.model.CDpunchArray];
        for (int i = 0; i < puchArray.count; i++) {
            CDGuideClockInformationModel *model = puchArray[i];
            NSString *CDclockDateString = [CDUIUtilities CDformattedTimeStringWithDate:model.CDclockDate format:@"yyyy-MM-dd"];
            NSLog(@"CDclockDateString:%@,nowDateString:%@",CDclockDateString,nowDateString);
            if ([CDclockDateString isEqualToString:nowDateString]) {
                self.CDclockInLogTextView.text = model.CDclockLogContent;
            }
        }
    }
}
#pragma mark - actions
- (void)CDallLogAction{
    CDAllClockLogsViewController *vc = [[CDAllClockLogsViewController alloc] init];
    vc.data = self.CDdataArray;
    vc.model = self.model;
    [self.navigationController pushViewController:vc animated:YES];
}
- (void)CDsaveAction{
    if (!self.CDclockInLogTextView.text.length) {
        [MBProgressHUD CDshowReminderText:NSLocalizedString(@"请输入日志", nil)];
        return;
    }
    NSDate *nowDate = [[NSDate alloc] init];
    NSString *nowDateString = [CDUIUtilities CDformattedTimeStringWithDate:nowDate format:@"yyyy-MM-dd"];
    if (!self.model.CDpunchArray.count) {
        NSMutableArray *puchArray = [[NSMutableArray alloc] init];
        CDGuideClockInformationModel *model = [[CDGuideClockInformationModel alloc] init];
        model.CDclockDate = nowDate;
        model.CDclockLogContent = self.CDclockInLogTextView.text;
        [puchArray addObject: model];
        self.model.CDpunchArray = puchArray;
        self.model.CDlastClockDate = [CDUIUtilities CDdateFromString:nowDateString formate:@"yyyy-MM-dd"];
        self.model.CDclockContinuouslyNumber = 1;
    }else{
        NSMutableArray *puchArray = [[NSMutableArray alloc] initWithArray:self.model.CDpunchArray];
        Boolean isNewClock = YES;
        for (int i = 0; i < puchArray.count; i++) {
            CDGuideClockInformationModel *model = puchArray[i];
            NSString *CDclockDateString = [CDUIUtilities CDformattedTimeStringWithDate:model.CDclockDate format:@"yyyy-MM-dd"];
            if ([CDclockDateString isEqualToString:nowDateString]) {
                model.CDclockLogContent = self.CDclockInLogTextView.text;
                model.CDclockDate = nowDate;
                isNewClock = NO;
            }
        }
        if (isNewClock == YES) {
            CDGuideClockInformationModel *model = [[CDGuideClockInformationModel alloc] init];
            model.CDclockDate = nowDate;
            model.CDclockLogContent = self.CDclockInLogTextView.text;
            [puchArray addObject: model];
        }
        self.model.CDpunchArray = [puchArray copy];
        NSCalendar *calendar = [NSCalendar currentCalendar];
        NSCalendarUnit unit = NSCalendarUnitDay;//只比较天数差异
        //比较的结果是NSDateComponents类对象
        NSDateComponents *delta = [calendar components:unit fromDate:self.model.CDlastClockDate toDate:nowDate options:0];
        self.model.CDlastClockDate = [CDUIUtilities CDdateFromString:nowDateString formate:@"yyyy-MM-dd"];
        if (delta.day >= 1 && delta.day < 2) {
            self.model.CDclockContinuouslyNumber += 1;
        }else if (delta.day >= 2){
            self.model.CDclockContinuouslyNumber = 1;
        }
    }
    NSMutableArray *selectArray = [[NSMutableArray alloc] init];
    for (int i = 0; i < self.CDdataArray.count; i++) {
        NSDictionary *dic = self.CDdataArray[i];
        NSMutableArray *CDdataArray = [dic objectForKey:@"data"];
        for (int j = 0; j < CDdataArray.count; j++) {
            CDGuideModel *model = CDdataArray[j];
            [selectArray addObject:model];
        }
    }
    AVObject *clockProjects = [AVObject objectWithClassName:@"CDClockProjects"];
    AVUser *author = [AVUser currentUser];
    [clockProjects setObject:author forKey:@"author"];
    NSMutableArray *tempArray = [[NSMutableArray alloc] init];
    for (int i = 0; i < selectArray.count; i++) {
        CDGuideModel *model = selectArray[i];
        NSMutableDictionary *dic = [[NSMutableDictionary alloc] initWithDictionary:(NSDictionary *)[model yy_modelToJSONObject]];
        [tempArray addObject:dic];
    }
    NSMutableDictionary *tempDic = [[NSMutableDictionary alloc] init];
    [tempDic setObject:tempArray forKey:@"data"];
    for (NSString *key in tempDic.allKeys) {
        [clockProjects setObject:[tempDic objectForKey:key]  forKey:key];
    }
    [clockProjects saveInBackgroundWithBlock:^(BOOL isSuccessful, NSError *error) {
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
        _CDclockInDateLabel.backgroundColor = CDH_Color(242, 242, 242, 1);
        _CDclockInDateLabel.textColor = [UIColor blackColor];
        _CDclockInDateLabel.font = [UIFont systemFontOfSize:14];
        _CDclockInDateLabel.textAlignment = NSTextAlignmentCenter;
        _CDclockInDateLabel.layer.cornerRadius = 4.0f;
        _CDclockInDateLabel.layer.masksToBounds = YES;
        _CDclockInDateLabel.numberOfLines = 0;
    }
    return _CDclockInDateLabel;
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
        _CDclockInLogTextView.backgroundColor = CDH_Color(242, 242, 242, 1);
        _CDclockInLogTextView.layer.cornerRadius = 8.0f;
        _CDclockInLogTextView.layer.masksToBounds = YES;
        _CDclockInLogTextView.textColor = [UIColor blackColor];
        _CDclockInLogTextView.font = [UIFont systemFontOfSize:18];
        [_CDclockInLogTextView sizeToFit];
    }
    return _CDclockInLogTextView;
}
- (UIButton *)CDsaveButton{
    if (!_CDsaveButton) {
        _CDsaveButton = [[UIButton alloc] init];
        [_CDsaveButton setTitle:NSLocalizedString(@"保存", nil) forState:UIControlStateNormal];
        _CDsaveButton.backgroundColor = [UIColor grayColor];
        _CDsaveButton.layer.cornerRadius = 15.0f;
        _CDsaveButton.layer.masksToBounds = YES;
        [_CDsaveButton.titleLabel setFont:[UIFont systemFontOfSize:15]];
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
