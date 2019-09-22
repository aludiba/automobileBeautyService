//
//  GHClockInViewController.m
//  GoodHabit
//
//  Created by 褚红彪 on 2019/9/21.
//  Copyright © 2019 hb. All rights reserved.
//

#import "GHClockInViewController.h"
#import "GHTodayViewController.h"
#import "GHGuideModel.h"
@interface GHClockInViewController ()<UITextViewDelegate>
@property(nonatomic, strong)UILabel *clockInDateLabel;
@property(nonatomic, strong)UIImageView *projectImgView;
@property(nonatomic, strong)UILabel *projectLabel;
@property(nonatomic, strong)UITextView *clockInLogTextView;
@property(nonatomic, strong)UIButton *saveButton;
@property(nonatomic, strong)UIButton *allLogButton;
@end

@implementation GHClockInViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"打卡日志", nil);
    [self setContentView];
}
- (void)setContentView{
    UIBarButtonItem *finishItem = [[UIBarButtonItem alloc] initWithCustomView:self.allLogButton];
    self.navigationItem.rightBarButtonItem = finishItem;
    
    [self.view addSubview:self.clockInDateLabel];
    [self.view addSubview:self.projectImgView];
    [self.view addSubview:self.projectLabel];
    [self.view addSubview:self.clockInLogTextView];
    [self.view addSubview:self.saveButton];
    
    [self.clockInDateLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.mas_topLayoutGuideBottom).offset(20);
        make.trailing.equalTo(self.view).offset(-15);
        make.width.mas_equalTo(140);
        make.height.mas_equalTo(40);
    }];
    [self.projectImgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.clockInDateLabel.mas_bottom).offset(20);
        make.centerX.equalTo(self.view);
        make.width.mas_equalTo(50);
        make.height.mas_equalTo(50);
    }];
    [self.projectLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.projectImgView.mas_bottom);
        make.centerX.equalTo(self.view);
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(20);
    }];
    [self.clockInLogTextView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.projectLabel.mas_bottom).offset(15);
        make.centerX.equalTo(self.view);
        make.width.mas_equalTo(GHWIDTH - 30);
        make.height.mas_equalTo(GHHEIGHT - GHHeightNavBar - GHHeightNavContentBar - 165 - 90);
    }];
    [self.saveButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view);
        make.bottom.equalTo(self.view).offset(-GHHeightNavContentBar - 15);
        make.width.mas_equalTo(60);
        make.height.mas_equalTo(30);
    }];
    NSDate *nowDate = [[NSDate alloc] init];
    NSString *nowDateString = [NSString stringWithFormat:@" %@ ",[GHUIUtilities GHformattedTimeStringWithDate:nowDate format:@"yyyy-MM-dd HH:mm"]];
    self.clockInDateLabel.text = nowDateString;
}
#pragma mark - 数据模型设置
- (void)setModel:(GHGuideModel *)model{
    _model = model;
    self.projectImgView.image = [UIImage imageNamed:_model.imageContent];
    self.projectLabel.text = _model.content;
    NSDate *nowDate = [[NSDate alloc] init];
    NSString *nowDateString = [GHUIUtilities GHformattedTimeStringWithDate:nowDate format:@"yyyy-MM-dd"];
    if (self.model.punchArray.count) {
        NSMutableArray *puchArray = [[NSMutableArray alloc] initWithArray:self.model.punchArray];
        for (int i = 0; i < puchArray.count; i++) {
            GHGuideClockInformationModel *model = puchArray[i];
            NSString *clockDateString = [GHUIUtilities GHformattedTimeStringWithDate:model.clockDate format:@"yyyy-MM-dd"];
            NSLog(@"clockDateString:%@,nowDateString:%@",clockDateString,nowDateString);
            if ([clockDateString isEqualToString:nowDateString]) {
                self.clockInLogTextView.text = model.clockLogContent;
            }
        }
    }
}
#pragma mark - actions
- (void)allLogAction{
    
}
- (void)saveAction{
    if (!self.clockInLogTextView.text.length) {
        [MBProgressHUD GHshowReminderText:NSLocalizedString(@"请输入日志", nil)];
        return;
    }
    NSDate *nowDate = [[NSDate alloc] init];
    NSString *nowDateString = [GHUIUtilities GHformattedTimeStringWithDate:nowDate format:@"yyyy-MM-dd"];
    if (!self.model.punchArray.count) {
        NSMutableArray *puchArray = [[NSMutableArray alloc] init];
        GHGuideClockInformationModel *model = [[GHGuideClockInformationModel alloc] init];
        model.clockDate = nowDate;
        model.clockLogContent = self.clockInLogTextView.text;
        [puchArray addObject: model];
        self.model.punchArray = puchArray;
        self.model.lastClockDate = [GHUIUtilities GHdateFromString:nowDateString formate:@"yyyy-MM-dd"];
        self.model.clockContinuouslyNumber = 1;
    }else{
        NSMutableArray *puchArray = [[NSMutableArray alloc] initWithArray:self.model.punchArray];
        Boolean isNewClock = YES;
        for (int i = 0; i < puchArray.count; i++) {
            GHGuideClockInformationModel *model = puchArray[i];
            NSString *clockDateString = [GHUIUtilities GHformattedTimeStringWithDate:model.clockDate format:@"yyyy-MM-dd"];
            if ([clockDateString isEqualToString:nowDateString]) {
                model.clockLogContent = self.clockInLogTextView.text;
                model.clockDate = nowDate;
                isNewClock = NO;
            }
        }
        if (isNewClock == YES) {
            GHGuideClockInformationModel *model = [[GHGuideClockInformationModel alloc] init];
            model.clockDate = nowDate;
            model.clockLogContent = self.clockInLogTextView.text;
            [puchArray addObject: model];
        }
        self.model.punchArray = [puchArray copy];
        NSCalendar *calendar = [NSCalendar currentCalendar];
        NSCalendarUnit unit = NSCalendarUnitDay;//只比较天数差异
        //比较的结果是NSDateComponents类对象
        NSDateComponents *delta = [calendar components:unit fromDate:self.model.lastClockDate toDate:nowDate options:0];
        self.model.lastClockDate = [GHUIUtilities GHdateFromString:nowDateString formate:@"yyyy-MM-dd"];
        if (delta.day >= 1 && delta.day < 2) {
            self.model.clockContinuouslyNumber += 1;
        }else if (delta.day >= 2){
            self.model.clockContinuouslyNumber = 1;
        }
    }
    NSMutableArray *selectArray = [[NSMutableArray alloc] init];
    for (int i = 0; i < self.dataArray.count; i++) {
        NSDictionary *dic = self.dataArray[i];
        NSMutableArray *dataArray = [dic objectForKey:@"data"];
        for (int j = 0; j < dataArray.count; j++) {
            GHGuideModel *model = dataArray[j];
            [selectArray addObject:model];
        }
    }
    BmobObject *clockProjects = [BmobObject objectWithClassName:@"GHClockProjects"];
    BmobUser *author = [BmobUser currentUser];
    [clockProjects setObject:author forKey:@"author"];
    NSMutableArray *tempArray = [[NSMutableArray alloc] init];
    for (int i = 0; i < selectArray.count; i++) {
        GHGuideModel *model = selectArray[i];
        NSMutableDictionary *dic = [[NSMutableDictionary alloc] initWithDictionary:(NSDictionary *)[model yy_modelToJSONObject]];
        [tempArray addObject:dic];
    }
    NSMutableDictionary *tempDic = [[NSMutableDictionary alloc] init];
    [tempDic setObject:tempArray forKey:@"data"];
    [clockProjects saveAllWithDictionary:tempDic];
    [clockProjects saveInBackgroundWithResultBlock:^(BOOL isSuccessful, NSError *error) {
            if (isSuccessful) {
                  [MBProgressHUD GHshowReminderText:NSLocalizedString(@"设置成功", nil)];
                [self.superVC loadData];
                [self.navigationController popViewControllerAnimated:YES];
            } else if (error){
                [MBProgressHUD GHshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            } else {
                [MBProgressHUD GHshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            }
        }];
}
#pragma mark - 属性懒加载
- (UILabel *)clockInDateLabel{
    if (!_clockInDateLabel) {
        _clockInDateLabel = [[UILabel alloc] init];
        _clockInDateLabel.backgroundColor = GHH_Color(242, 242, 242, 1);
        _clockInDateLabel.textColor = [UIColor blackColor];
        _clockInDateLabel.font = [UIFont systemFontOfSize:14];
        _clockInDateLabel.textAlignment = NSTextAlignmentCenter;
        _clockInDateLabel.layer.cornerRadius = 4.0f;
        _clockInDateLabel.layer.masksToBounds = YES;
        _clockInDateLabel.numberOfLines = 0;
    }
    return _clockInDateLabel;
}
- (UIImageView *)projectImgView{
    if (!_projectImgView) {
        _projectImgView = [[UIImageView alloc] init];
    }
    return _projectImgView;
}
- (UILabel *)projectLabel{
    if (!_projectLabel) {
        _projectLabel = [[UILabel alloc] init];
        _projectLabel.backgroundColor = [UIColor whiteColor];
        _projectLabel.textColor = [UIColor blackColor];
        _projectLabel.font = [UIFont systemFontOfSize:13];
        _projectLabel.textAlignment = NSTextAlignmentCenter;
        _projectLabel.numberOfLines = 0;
    }
    return _projectLabel;
}
- (UITextView *)clockInLogTextView{
    if (!_clockInLogTextView) {
        _clockInLogTextView = [[UITextView alloc] init];
        _clockInLogTextView.delegate = self;
        _clockInLogTextView.backgroundColor = GHH_Color(242, 242, 242, 1);
        _clockInLogTextView.layer.cornerRadius = 8.0f;
        _clockInLogTextView.layer.masksToBounds = YES;
        _clockInLogTextView.textColor = [UIColor blackColor];
        _clockInLogTextView.font = [UIFont systemFontOfSize:18];
        [_clockInLogTextView sizeToFit];
    }
    return _clockInLogTextView;
}
- (UIButton *)saveButton{
    if (!_saveButton) {
        _saveButton = [[UIButton alloc] init];
        [_saveButton setTitle:NSLocalizedString(@"保存", nil) forState:UIControlStateNormal];
        _saveButton.backgroundColor = [UIColor grayColor];
        _saveButton.layer.cornerRadius = 15.0f;
        _saveButton.layer.masksToBounds = YES;
        [_saveButton.titleLabel setFont:[UIFont systemFontOfSize:15]];
        [_saveButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_saveButton addTarget:self action:@selector(saveAction) forControlEvents:UIControlEventTouchUpInside];
    }
    return _saveButton;
}
- (UIButton *)allLogButton{
    if (!_allLogButton) {
        _allLogButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 49, 30)];
        [_allLogButton setTitle:NSLocalizedString(@"所有日志", nil) forState:UIControlStateNormal];
        [_allLogButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_allLogButton.titleLabel setFont:[UIFont systemFontOfSize:14]];
        [_allLogButton addTarget:self action:@selector(allLogAction) forControlEvents:UIControlEventTouchUpInside];
    }
    return _allLogButton;
}
@end
