//
//  PHClockInViewController.m
//  GoodHabit
//
//  Created by 褚红彪 on 2019/9/21.
//  Copyright © 2019 hb. All rights reserved.
//

#import "PHClockInViewController.h"
#import "PHTodayViewController.h"
#import "PHGuideModel.h"
#import "PHAllClockLogsViewController.h"
@interface PHClockInViewController ()<UITextViewDelegate>
@property(nonatomic, strong)UILabel *PHclockInDateLabel;
@property(nonatomic, strong)UIImageView *PHprojectImgView;
@property(nonatomic, strong)UILabel *PHprojectLabel;
@property(nonatomic, strong)UITextView *PHclockInLogTextView;
@property(nonatomic, strong)UIButton *PHsaveButton;
@property(nonatomic, strong)UIButton *PHallLogButton;
@end

@implementation PHClockInViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"打卡日志", nil);
    [self PHsetContentView];
}
- (void)PHsetContentView{
    UIBarButtonItem *finishItem = [[UIBarButtonItem alloc] initWithCustomView:self.PHallLogButton];
    self.navigationItem.rightBarButtonItem = finishItem;
    
    [self.view addSubview:self.PHclockInDateLabel];
    [self.view addSubview:self.PHprojectImgView];
    [self.view addSubview:self.PHprojectLabel];
    [self.view addSubview:self.PHclockInLogTextView];
    [self.view addSubview:self.PHsaveButton];
    
    [self.PHclockInDateLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.mas_topLayoutGuideBottom).offset(20);
        make.trailing.equalTo(self.view).offset(-15);
        make.width.mas_equalTo(140);
        make.height.mas_equalTo(40);
    }];
    [self.PHprojectImgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.PHclockInDateLabel.mas_bottom).offset(20);
        make.centerX.equalTo(self.view);
        make.width.mas_equalTo(50);
        make.height.mas_equalTo(50);
    }];
    [self.PHprojectLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.PHprojectImgView.mas_bottom);
        make.centerX.equalTo(self.view);
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(20);
    }];
    [self.PHclockInLogTextView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.PHprojectLabel.mas_bottom).offset(15);
        make.centerX.equalTo(self.view);
        make.width.mas_equalTo(PHWIDTH - 30);
        make.height.mas_equalTo(PHHEIPHT - PHHeightNavBar - PHHeightNavContentBar - 165 - 90);
    }];
    [self.PHsaveButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view);
        make.bottom.equalTo(self.view).offset(-PHHeightNavContentBar - 15);
        make.width.mas_equalTo(60);
        make.height.mas_equalTo(30);
    }];
    NSDate *nowDate = [[NSDate alloc] init];
    NSString *nowDateString = [NSString stringWithFormat:@" %@ ",[PHUIUtilities PHformattedTimeStringWithDate:nowDate format:@"yyyy-MM-dd HH:mm"]];
    self.PHclockInDateLabel.text = nowDateString;
}
#pragma mark - 数据模型设置
- (void)setModel:(PHGuideModel *)model{
    _model = model;
    self.PHprojectImgView.image = [UIImage imageNamed:_model.PHimageContent];
    self.PHprojectLabel.text = _model.content;
    NSDate *nowDate = [[NSDate alloc] init];
    NSString *nowDateString = [PHUIUtilities PHformattedTimeStringWithDate:nowDate format:@"yyyy-MM-dd"];
    if (self.model.PHpunchArray.count) {
        NSMutableArray *puchArray = [[NSMutableArray alloc] initWithArray:self.model.PHpunchArray];
        for (int i = 0; i < puchArray.count; i++) {
            PHGuideClockInformationModel *model = puchArray[i];
            NSString *PHclockDateString = [PHUIUtilities PHformattedTimeStringWithDate:model.PHclockDate format:@"yyyy-MM-dd"];
            NSLog(@"PHclockDateString:%@,nowDateString:%@",PHclockDateString,nowDateString);
            if ([PHclockDateString isEqualToString:nowDateString]) {
                self.PHclockInLogTextView.text = model.PHclockLogContent;
            }
        }
    }
}
#pragma mark - actions
- (void)PHallLogAction{
    PHAllClockLogsViewController *vc = [[PHAllClockLogsViewController alloc] init];
    vc.data = self.PHdataArray;
    vc.model = self.model;
    [self.navigationController pushViewController:vc animated:YES];
}
- (void)PHsaveAction{
    if (!self.PHclockInLogTextView.text.length) {
        [MBProgressHUD PHshowReminderText:NSLocalizedString(@"请输入日志", nil)];
        return;
    }
    NSDate *nowDate = [[NSDate alloc] init];
    NSString *nowDateString = [PHUIUtilities PHformattedTimeStringWithDate:nowDate format:@"yyyy-MM-dd"];
    if (!self.model.PHpunchArray.count) {
        NSMutableArray *puchArray = [[NSMutableArray alloc] init];
        PHGuideClockInformationModel *model = [[PHGuideClockInformationModel alloc] init];
        model.PHclockDate = nowDate;
        model.PHclockLogContent = self.PHclockInLogTextView.text;
        [puchArray addObject: model];
        self.model.PHpunchArray = puchArray;
        self.model.PHlastClockDate = [PHUIUtilities PHdateFromString:nowDateString formate:@"yyyy-MM-dd"];
        self.model.PHclockContinuouslyNumber = 1;
    }else{
        NSMutableArray *puchArray = [[NSMutableArray alloc] initWithArray:self.model.PHpunchArray];
        Boolean isNewClock = YES;
        for (int i = 0; i < puchArray.count; i++) {
            PHGuideClockInformationModel *model = puchArray[i];
            NSString *PHclockDateString = [PHUIUtilities PHformattedTimeStringWithDate:model.PHclockDate format:@"yyyy-MM-dd"];
            if ([PHclockDateString isEqualToString:nowDateString]) {
                model.PHclockLogContent = self.PHclockInLogTextView.text;
                model.PHclockDate = nowDate;
                isNewClock = NO;
            }
        }
        if (isNewClock == YES) {
            PHGuideClockInformationModel *model = [[PHGuideClockInformationModel alloc] init];
            model.PHclockDate = nowDate;
            model.PHclockLogContent = self.PHclockInLogTextView.text;
            [puchArray addObject: model];
        }
        self.model.PHpunchArray = [puchArray copy];
        NSCalendar *calendar = [NSCalendar currentCalendar];
        NSCalendarUnit unit = NSCalendarUnitDay;//只比较天数差异
        //比较的结果是NSDateComponents类对象
        NSDateComponents *delta = [calendar components:unit fromDate:self.model.PHlastClockDate toDate:nowDate options:0];
        self.model.PHlastClockDate = [PHUIUtilities PHdateFromString:nowDateString formate:@"yyyy-MM-dd"];
        if (delta.day >= 1 && delta.day < 2) {
            self.model.PHclockContinuouslyNumber += 1;
        }else if (delta.day >= 2){
            self.model.PHclockContinuouslyNumber = 1;
        }
    }
    NSMutableArray *selectArray = [[NSMutableArray alloc] init];
    for (int i = 0; i < self.PHdataArray.count; i++) {
        NSDictionary *dic = self.PHdataArray[i];
        NSMutableArray *PHdataArray = [dic objectForKey:@"data"];
        for (int j = 0; j < PHdataArray.count; j++) {
            PHGuideModel *model = PHdataArray[j];
            [selectArray addObject:model];
        }
    }
    BmobObject *clockProjects = [BmobObject objectWithClassName:@"PHClockProjects"];
    BmobUser *author = [BmobUser currentUser];
    [clockProjects setObject:author forKey:@"author"];
    NSMutableArray *tempArray = [[NSMutableArray alloc] init];
    for (int i = 0; i < selectArray.count; i++) {
        PHGuideModel *model = selectArray[i];
        NSMutableDictionary *dic = [[NSMutableDictionary alloc] initWithDictionary:(NSDictionary *)[model yy_modelToJSONObject]];
        [tempArray addObject:dic];
    }
    NSMutableDictionary *tempDic = [[NSMutableDictionary alloc] init];
    [tempDic setObject:tempArray forKey:@"data"];
    [clockProjects saveAllWithDictionary:tempDic];
    [clockProjects saveInBackgroundWithResultBlock:^(BOOL isSuccessful, NSError *error) {
            if (isSuccessful) {
                  [MBProgressHUD PHshowReminderText:NSLocalizedString(@"设置成功", nil)];
                [self.PHsuperVC PHloadData];
                [self.navigationController popViewControllerAnimated:YES];
            } else if (error){
                [MBProgressHUD PHshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            } else {
                [MBProgressHUD PHshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            }
        }];
}
#pragma mark - 属性懒加载
- (UILabel *)PHclockInDateLabel{
    if (!_PHclockInDateLabel) {
        _PHclockInDateLabel = [[UILabel alloc] init];
        _PHclockInDateLabel.backgroundColor = PHH_Color(242, 242, 242, 1);
        _PHclockInDateLabel.textColor = [UIColor blackColor];
        _PHclockInDateLabel.font = [UIFont systemFontOfSize:14];
        _PHclockInDateLabel.textAlignment = NSTextAlignmentCenter;
        _PHclockInDateLabel.layer.cornerRadius = 4.0f;
        _PHclockInDateLabel.layer.masksToBounds = YES;
        _PHclockInDateLabel.numberOfLines = 0;
    }
    return _PHclockInDateLabel;
}
- (UIImageView *)PHprojectImgView{
    if (!_PHprojectImgView) {
        _PHprojectImgView = [[UIImageView alloc] init];
    }
    return _PHprojectImgView;
}
- (UILabel *)PHprojectLabel{
    if (!_PHprojectLabel) {
        _PHprojectLabel = [[UILabel alloc] init];
        _PHprojectLabel.backgroundColor = [UIColor whiteColor];
        _PHprojectLabel.textColor = [UIColor blackColor];
        _PHprojectLabel.font = [UIFont systemFontOfSize:13];
        _PHprojectLabel.textAlignment = NSTextAlignmentCenter;
        _PHprojectLabel.numberOfLines = 0;
    }
    return _PHprojectLabel;
}
- (UITextView *)PHclockInLogTextView{
    if (!_PHclockInLogTextView) {
        _PHclockInLogTextView = [[UITextView alloc] init];
        _PHclockInLogTextView.delegate = self;
        _PHclockInLogTextView.backgroundColor = PHH_Color(242, 242, 242, 1);
        _PHclockInLogTextView.layer.cornerRadius = 8.0f;
        _PHclockInLogTextView.layer.masksToBounds = YES;
        _PHclockInLogTextView.textColor = [UIColor blackColor];
        _PHclockInLogTextView.font = [UIFont systemFontOfSize:18];
        [_PHclockInLogTextView sizeToFit];
    }
    return _PHclockInLogTextView;
}
- (UIButton *)PHsaveButton{
    if (!_PHsaveButton) {
        _PHsaveButton = [[UIButton alloc] init];
        [_PHsaveButton setTitle:NSLocalizedString(@"保存", nil) forState:UIControlStateNormal];
        _PHsaveButton.backgroundColor = [UIColor grayColor];
        _PHsaveButton.layer.cornerRadius = 15.0f;
        _PHsaveButton.layer.masksToBounds = YES;
        [_PHsaveButton.titleLabel setFont:[UIFont systemFontOfSize:15]];
        [_PHsaveButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_PHsaveButton addTarget:self action:@selector(PHsaveAction) forControlEvents:UIControlEventTouchUpInside];
    }
    return _PHsaveButton;
}
- (UIButton *)PHallLogButton{
    if (!_PHallLogButton) {
        _PHallLogButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 49, 30)];
        [_PHallLogButton setTitle:NSLocalizedString(@"所有日志", nil) forState:UIControlStateNormal];
        [_PHallLogButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_PHallLogButton.titleLabel setFont:[UIFont systemFontOfSize:14]];
        [_PHallLogButton addTarget:self action:@selector(PHallLogAction) forControlEvents:UIControlEventTouchUpInside];
    }
    return _PHallLogButton;
}
@end
