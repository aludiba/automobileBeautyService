//
//  SDRemindWriteDiaryViewController.m
//  Simple Diary
//
//  Created by bykj on 2019/8/9.
//  Copyright © 2019 hgg. All rights reserved.
//

#import "SDRemindWriteDiaryViewController.h"

@interface SDRemindWriteDiaryViewController ()<UITextFieldDelegate>
@property(nonatomic, strong)UILabel *titleLabel;
@property(nonatomic, strong)UISwitch *switchBtn;
@property(nonatomic, strong)UILabel *dateTitleLabel;
@property(nonatomic, strong)UITextField *dateContentTextField;
@property(nonatomic, strong)UIButton *completeButton;
@property(nonatomic, strong)NSDate *remindDate;
@property (nonatomic, strong)UIDatePicker *datePicker;
@end

@implementation SDRemindWriteDiaryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = NSLocalizedString(@"提醒写日记", nil);
    [self setContent];
}
- (void)SD_setupNavigationItems{
    [super SD_setupNavigationItems];
    [self setNavigationBarItems];
}
- (void)setNavigationBarItems{
    UIBarButtonItem *completeItem = [[UIBarButtonItem alloc] initWithCustomView:self.completeButton];
    self.navigationItem.rightBarButtonItem = completeItem;
}
- (void)setContent{
    [self.view addSubview:self.titleLabel];
    [self.view addSubview:self.switchBtn];
    [self.view addSubview:self.dateTitleLabel];
    [self.view addSubview:self.dateContentTextField];
    
    [self.titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(15);
        make.top.equalTo(self.mas_topLayoutGuideBottom).offset(20);
        make.trailing.equalTo(self.switchBtn.mas_leading).offset(-10);
        make.height.mas_equalTo(20);
    }];
    [self.switchBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.equalTo(self.view).offset(-15);
        make.centerY.equalTo(self.titleLabel);
        make.width.mas_equalTo(60);
        make.height.mas_equalTo(30);
    }];
    UIView *line = [[UIView alloc] init];
    line.backgroundColor = SDH_Color(242, 242, 242, 1);
    [self.view addSubview:line];
    [line mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(15);
        make.trailing.equalTo(self.view);
        make.top.equalTo(self.switchBtn.mas_bottom).offset(10);
        make.height.mas_equalTo(0.5);
    }];
    [self.dateTitleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(15);
        make.top.equalTo(line.mas_bottom).offset(10);
        make.trailing.equalTo(self.dateContentTextField.mas_leading).offset(-10);
        make.height.mas_equalTo(20);
    }];
    [self.dateContentTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.equalTo(self.view).offset(-15);
        make.centerY.equalTo(self.dateTitleLabel);
        make.width.mas_equalTo(50);
        make.height.mas_equalTo(30);
    }];
    UIView *line1 = [[UIView alloc] init];
    line1.backgroundColor = SDH_Color(242, 242, 242, 1);
    [self.view addSubview:line1];
    [line1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(15);
        make.trailing.equalTo(self.view);
        make.top.equalTo(self.dateContentTextField.mas_bottom).offset(10);
        make.height.mas_equalTo(0.5);
    }];
}
#pragma mark - action
- (void)btnClick:(UIButton *)sender{
    [self.navigationController popViewControllerAnimated:YES];
}
- (void)switch:(UISwitch *)sender{
    
}
- (void)dateChange:(UIBarButtonItem *)sender{
    [self.view endEditing:YES];
    if (sender.tag == 101) {
        
    }else{
        NSString *remindDateString = [SDUIUtilities SDformattedTimeStringWithDate:self.datePicker.date format:@"HH:mm"];
        self.dateContentTextField.text = remindDateString;
        self.remindDate = [NSDate date];
    }
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}
#pragma mark - 属性懒加载
- (UIButton *)completeButton{
    if (!_completeButton) {
        _completeButton = [[UIButton alloc] init];
        _completeButton.tag = 100;
        [_completeButton addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
        [_completeButton setImage:[UIImage imageNamed:@"SD_complete"] forState:UIControlStateNormal];
    }
    return _completeButton;
}
- (UILabel *)titleLabel{
    if (!_titleLabel) {
        _titleLabel = [[UILabel alloc] init];
        _titleLabel.font = [UIFont systemFontOfSize:17];
        _titleLabel.textColor = [UIColor blackColor];
        _titleLabel.text = NSLocalizedString(@"提醒我写日记", nil);
    }
    return _titleLabel;
}
- (UISwitch *)switchBtn{
    if (!_switchBtn) {
        _switchBtn = [[UISwitch alloc] init];
        [_switchBtn addTarget:self action:@selector(switch:) forControlEvents:UIControlEventValueChanged];
    }
    return _switchBtn;
}
- (UILabel *)dateTitleLabel{
    if (!_dateTitleLabel) {
        _dateTitleLabel = [[UILabel alloc] init];
        _dateTitleLabel.font = [UIFont systemFontOfSize:17];
        _dateTitleLabel.textColor = [UIColor blackColor];
        _dateTitleLabel.text = NSLocalizedString(@"提醒时间", nil);
    }
    return _dateTitleLabel;
}
- (UITextField *)dateContentTextField{
    if (!_dateContentTextField) {
        _dateContentTextField = [[UITextField alloc] init];
        [_dateContentTextField setFont:[UIFont systemFontOfSize:18]];
        [_dateContentTextField setTextColor:[UIColor redColor]];
        _dateContentTextField.layer.cornerRadius = 3.0f;
        _dateContentTextField.layer.masksToBounds = YES;
        _dateContentTextField.layer.borderColor = [UIColor grayColor].CGColor;
        _dateContentTextField.layer.borderWidth = 0.5f;
        [_dateContentTextField sizeToFit];
        BmobUser *user = [BmobUser currentUser];
        if ([user objectForKey:@"reminddate"]) {
            NSString *remindDateString = [SDUIUtilities SDformattedTimeStringWithDate:[user objectForKey:@"reminddate"] format:@"HH:mm"];
            _dateContentTextField.text = remindDateString;
            self.remindDate = [user objectForKey:@"reminddate"];
        }else{
            NSString *remindDateString = [SDUIUtilities SDformattedTimeStringWithDate:[NSDate date] format:@"HH:mm"];
            _dateContentTextField.text = remindDateString;
            self.remindDate = [NSDate date];
        }
        //设置时间输入框的键盘框样式为时间选择器
        _dateContentTextField.inputView = self.datePicker;
        //创建工具条
        UIToolbar *toolbar = [[UIToolbar alloc]init];
        //设置工具条的颜色
        toolbar.barTintColor = SDH_Color(242, 242, 242, 1);
        //设置工具条的frame
        toolbar.frame = CGRectMake(0, 0, 320, 44);
        //给工具条添加按钮
        UIBarButtonItem *item0 = [[UIBarButtonItem alloc]initWithTitle:NSLocalizedString(@"取消", nil) style:UIBarButtonItemStylePlain target:self action:@selector(dateChange:) ];
        item0.tag = 101;
        UIBarButtonItem *item1 = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
        UIBarButtonItem *item2 = [[UIBarButtonItem alloc]initWithTitle:NSLocalizedString(@"确定", nil) style:UIBarButtonItemStylePlain target:self action:@selector(dateChange:)];
        item2.tag = 102;
        toolbar.items = @[item0, item1, item2];
        //设置文本输入框键盘的辅助视图
        _dateContentTextField.inputAccessoryView = toolbar;
    }
    return _dateContentTextField;
}
- (UIDatePicker *)datePicker{
    if (!_datePicker) {
        _datePicker = [[UIDatePicker alloc] init];
        //设置地区: zh-中国
//        datePicker.locale = [NSLocale localeWithLocaleIdentifier:@"zh"];
        
        //设置日期模式(Displays month, day, and year depending on the locale setting)
        _datePicker.datePickerMode = UIDatePickerModeCountDownTimer;
        // 设置当前显示时间
        [_datePicker setDate:[NSDate date] animated:YES];
        // 设置显示最大时间（此处为当前时间）
        //监听DataPicker的滚动
    }
    return _datePicker;
}
@end
