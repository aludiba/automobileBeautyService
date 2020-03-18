//
//  EAsodePlanDateTableViewCell.m
//  wineAwake
//
//  Created by bykj on 2019/10/7.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "EAsodePlanDateTableViewCell.h"
#import "EAsodePlanModel.h"

@interface EAsodePlanDateTableViewCell()<UITextFieldDelegate>
@property(nonatomic, strong)UILabel *EAtitleLbl;
@property(nonatomic, strong)UITextField *EAeditText;
@property(nonatomic, strong)UIDatePicker *EAdatePicker;
@property(nonatomic, strong)UIToolbar *EAtoolbar;
@property(nonatomic, strong)UIImageView *EArightArrowImgView;
@property(nonatomic, strong)UIView *EAline;
@end
@implementation EAsodePlanDateTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = [UIColor colorWithRed:0 green:0 blue:1 alpha:0.5];
        [self.contentView addSubview:self.EAtitleLbl];
        [self.contentView addSubview:self.EAeditText];
        [self.contentView addSubview:self.EArightArrowImgView];
        [self.contentView addSubview:self.EAline];
        
        [self.EAtitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(16);
            make.top.equalTo(self.contentView).offset(25);
            make.width.mas_equalTo(100);
            make.height.mas_equalTo(16);
        }];
        [self.EArightArrowImgView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.trailing.equalTo(self.contentView).offset(-16);
            make.top.equalTo(self.contentView).offset(22);
            make.width.mas_equalTo(22);
            make.height.mas_equalTo(22);
        }];
        [self.EAeditText mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView).offset(22);
            make.height.mas_equalTo(20);
            make.trailing.equalTo(self.EArightArrowImgView.mas_leading).offset(-32);
            make.leading.equalTo(self.EAtitleLbl.mas_trailing).offset(0);
        }];
        [self.EAline mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(16);
            make.trailing.equalTo(self.contentView);
            make.top.equalTo(self.EAeditText.mas_bottom).offset(24);
            make.height.mas_equalTo(1);
            make.bottom.equalTo(self.contentView);
        }];
        
        self.EAeditText.inputView = self.EAdatePicker;
        self.EAeditText.inputAccessoryView = self.EAtoolbar;
    }
    return self;
}
- (void)setEAmodel:(EAsodePlanModel *)EAmodel{
    _EAmodel = EAmodel;
    self.EAtitleLbl.text = _EAmodel.EAtitle;
    if (_EAmodel.EAcontent.length) {
        self.EAeditText.text = _EAmodel.EAcontent;
    }else{
        self.EAeditText.placeholder = _EAmodel.EAdefaultString;
    }
}
- (void)EAdateChange:(UIDatePicker *)datePicker {
    
}
- (void)EAdateResult:(UIBarButtonItem *)sender{
    if (sender.tag == 100) {
        NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
        //设置时间格式
        formatter.dateFormat = @"yyyy-MM-dd";
        NSString *dateStr = [formatter  stringFromDate:self.EAdatePicker.date];
        if (dateStr.length) {
            self.EAmodel.EAcontent = dateStr;
        }else{
            self.EAeditText.placeholder = _EAmodel.EAdefaultString;
        }
        if (self.EAsodePlanDateB) {
            self.EAsodePlanDateB(self);
        }
        [self.contentView endEditing:YES];
    }else{
        [self.contentView endEditing:YES];
    }
}
#pragma mark - 属性懒加载
- (UILabel *)EAtitleLbl{
    if (!_EAtitleLbl) {
        _EAtitleLbl = [[UILabel alloc] init];
        _EAtitleLbl.textColor = [UIColor blackColor];
        _EAtitleLbl.font = [UIFont systemFontOfSize:15];
        _EAtitleLbl.numberOfLines = 0;
    }
    return _EAtitleLbl;
}
- (UITextField *)EAeditText{
    if (!_EAeditText) {
        _EAeditText = [[UITextField alloc] init];
        _EAeditText.delegate = self;
        _EAeditText.textColor = [UIColor blackColor];
        _EAeditText.font = [UIFont systemFontOfSize:18];
        _EAeditText.textAlignment = NSTextAlignmentRight;
    }
    return _EAeditText;
}
- (UIDatePicker *)EAdatePicker{
    if (!_EAdatePicker) {
        _EAdatePicker = [[UIDatePicker alloc] init];
        _EAdatePicker.datePickerMode = UIDatePickerModeDateAndTime;
        NSString *language = [[NSUserDefaults standardUserDefaults] objectForKey:@"appLanguage"];
        if (!language) {
            language = [EAHBTool getPreferredLanguage];
            NSLog(@"language:%@",language);
        }
        if ([language isEqualToString:@"zh-Hans-US"]) {    //简体中文
            [_EAdatePicker setLocale:[[NSLocale alloc]initWithLocaleIdentifier:@"zh-Hans-US"]];
        }else if ([language isEqualToString:@"en"]){
            //英文
        [_EAdatePicker setLocale:[[NSLocale alloc]initWithLocaleIdentifier:@"en"]];
        }else if ([language isEqualToString:@"ja-US"]){
            //日文
        [_EAdatePicker setLocale:[[NSLocale alloc]initWithLocaleIdentifier:@"ja-US"]];
        }else{
            //其他地区默认设为英语
            [_EAdatePicker setLocale:[[NSLocale alloc]initWithLocaleIdentifier:@"en"]];
        }
        [_EAdatePicker setDate:[NSDate date] animated:YES];
        [_EAdatePicker setMaximumDate:[NSDate date]];
        [_EAdatePicker addTarget:self action:@selector(EAdateChange:) forControlEvents:UIControlEventValueChanged];
    }
    return _EAdatePicker;
}
- (UIToolbar *)EAtoolbar{
    if (!_EAtoolbar) {
        UIToolbar *toolbar = [[UIToolbar alloc] init];
        toolbar.barTintColor = EAH_Color(242, 242, 242, 1);
        //设置工具条的frame
        toolbar.frame = CGRectMake(0, 0, EAWIDTH, 44);
        //给工具条添加按钮
        UIBarButtonItem *item0 = [[UIBarButtonItem alloc]initWithTitle:NSLocalizedString(@"取消", nil) style:UIBarButtonItemStylePlain target:self action:@selector(EAdateResult:)];
        item0.tag = 101;
        UIBarButtonItem *item1;
        NSString *language = [[NSUserDefaults standardUserDefaults] objectForKey:@"appLanguage"];
        if (!language) {
            language = [EAHBTool getPreferredLanguage];
        }
        if ([language isEqualToString:@"zh-Hans-US"]) {    //简体中文
             item1 = [[UIBarButtonItem alloc]initWithTitle:@"                                                         " style:UIBarButtonItemStyleDone target:self action:@selector(EAdateResult:)];
        }else{
             item1 = [[UIBarButtonItem alloc]initWithTitle:@"                                               " style:UIBarButtonItemStyleDone target:self action:@selector(EAdateResult:)];
        }
        UIBarButtonItem *item2 = [[UIBarButtonItem alloc]initWithTitle:NSLocalizedString(@"完成", nil) style:UIBarButtonItemStylePlain target:self action:@selector(EAdateResult:)];
        item2.tag = 100;
        toolbar.items = @[item0, item1, item2];
        _EAtoolbar = toolbar;
    }
    return _EAtoolbar;
}
- (UIImageView *)EArightArrowImgView{
    if (!_EArightArrowImgView) {
        _EArightArrowImgView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"EA_arrow_right"]];
    }
    return _EArightArrowImgView;
}
- (UIView *)EAline{
    if (!_EAline) {
        _EAline = [[UIView alloc] init];
        _EAline.backgroundColor = [UIColor grayColor];
    }
    return _EAline;
}
@end
