//
//  SOsodePlanDateTableViewCell.m
//  wineAwake
//
//  Created by bykj on 2019/10/7.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "SOsodePlanDateTableViewCell.h"
#import "SOsodePlanModel.h"

@interface SOsodePlanDateTableViewCell()<UITextFieldDelegate>
@property(nonatomic, strong)UILabel *titleLbl;
@property(nonatomic, strong)UITextField *editText;
@property(nonatomic, strong)UIDatePicker *datePicker;
@property(nonatomic, strong)UIToolbar *toolbar;
@property(nonatomic, strong)UIImageView *rightArrowImgView;
@property(nonatomic, strong)UIView *line;
@end
@implementation SOsodePlanDateTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = SOH_Color(236, 236, 236, 1);
        [self.contentView addSubview:self.titleLbl];
        [self.contentView addSubview:self.editText];
        [self.contentView addSubview:self.rightArrowImgView];
        [self.contentView addSubview:self.line];
        
        [self.titleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(16);
            make.top.equalTo(self.contentView).offset(25);
            make.width.mas_equalTo(100);
            make.height.mas_equalTo(16);
        }];
        [self.rightArrowImgView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.trailing.equalTo(self.contentView).offset(-16);
            make.top.equalTo(self.contentView).offset(22);
            make.width.mas_equalTo(22);
            make.height.mas_equalTo(22);
        }];
        [self.editText mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView).offset(22);
            make.height.mas_equalTo(20);
            make.trailing.equalTo(self.rightArrowImgView.mas_leading).offset(-32);
            make.leading.equalTo(self.titleLbl.mas_trailing).offset(0);
        }];
        [self.line mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(16);
            make.trailing.equalTo(self.contentView);
            make.top.equalTo(self.editText.mas_bottom).offset(24);
            make.height.mas_equalTo(1);
            make.bottom.equalTo(self.contentView);
        }];
        
        self.editText.inputView = self.datePicker;
        self.editText.inputAccessoryView = self.toolbar;
    }
    return self;
}
- (void)setModel:(SOsodePlanModel *)model{
    _model = model;
    self.titleLbl.text = _model.SOtitle;
    if (_model.SOcontent.length) {
        self.editText.text = _model.SOcontent;
    }else{
        self.editText.placeholder = _model.SOdefaultString;
    }
}
//#pragma mark - UITextFieldDelegate
//- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
//    if (textField.text.length) {
//        self.model.content = textField.text;
//    }else{
//        self.editText.placeholder = _model.defaultString;
//    }
//    return YES;
//}
//- (BOOL)textFieldShouldEndEditing:(UITextField *)textField{
//    if (textField.text.length) {
//        self.model.content = textField.text;
//    }else{
//        self.editText.placeholder = _model.defaultString;
//    }
//    return YES;
//}
//- (void)textFieldDidEndEditing:(UITextField *)textField{
//    if (textField.text.length) {
//        self.model.content = textField.text;
//    }else{
//        self.editText.placeholder = _model.defaultString;
//    }
//}
- (void)dateChange:(UIDatePicker *)datePicker {
    
}
- (void)dateResult:(UIBarButtonItem *)sender{
    if (sender.tag == 100) {
        NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
        //设置时间格式
        formatter.dateFormat = @"yyyy-MM-dd";
        NSString *dateStr = [formatter  stringFromDate:self.datePicker.date];
        if (dateStr.length) {
            self.model.SOcontent = dateStr;
        }else{
            self.editText.placeholder = _model.SOdefaultString;
        }
        if (self.SOsodePlanDateB) {
            self.SOsodePlanDateB(self);
        }
        [self.contentView endEditing:YES];
    }else{
        [self.contentView endEditing:YES];
    }
}
#pragma mark - 属性懒加载
- (UILabel *)titleLbl{
    if (!_titleLbl) {
        _titleLbl = [[UILabel alloc] init];
        _titleLbl.textColor = [UIColor blackColor];
        _titleLbl.font = [UIFont systemFontOfSize:15];
        _titleLbl.numberOfLines = 0;
    }
    return _titleLbl;
}
- (UITextField *)editText{
    if (!_editText) {
        _editText = [[UITextField alloc] init];
        _editText.delegate = self;
        _editText.textColor = [UIColor blackColor];
        _editText.font = [UIFont systemFontOfSize:18];
        _editText.textAlignment = NSTextAlignmentRight;
    }
    return _editText;
}
- (UIDatePicker *)datePicker{
    if (!_datePicker) {
        _datePicker = [[UIDatePicker alloc] init];
        _datePicker.datePickerMode = UIDatePickerModeDateAndTime;
        NSString *language = [[NSUserDefaults standardUserDefaults] objectForKey:@"appLanguage"];
        if (!language) {
            language = [SOHBTool getPreferredLanguage];
            NSLog(@"language:%@",language);
        }
        if ([language isEqualToString:@"zh-Hans-US"]) {    //简体中文
            [_datePicker setLocale:[[NSLocale alloc]initWithLocaleIdentifier:@"zh-Hans-US"]];
        }else if ([language isEqualToString:@"en"]){
            //英文
        [_datePicker setLocale:[[NSLocale alloc]initWithLocaleIdentifier:@"en"]];
        }else if ([language isEqualToString:@"ja-US"]){
            //日文
        [_datePicker setLocale:[[NSLocale alloc]initWithLocaleIdentifier:@"ja-US"]];
        }else{
            //其他地区默认设为英语
            [_datePicker setLocale:[[NSLocale alloc]initWithLocaleIdentifier:@"en"]];
        }
        [_datePicker setDate:[NSDate date] animated:YES];
        [_datePicker setMaximumDate:[NSDate date]];
        [_datePicker addTarget:self action:@selector(dateChange:) forControlEvents:UIControlEventValueChanged];
    }
    return _datePicker;
}
- (UIToolbar *)toolbar{
    if (!_toolbar) {
        UIToolbar *toolbar = [[UIToolbar alloc] init];
        toolbar.barTintColor = SOH_Color(242, 242, 242, 1);
        //设置工具条的frame
        toolbar.frame = CGRectMake(0, 0, SOWIDTH, 44);
        //给工具条添加按钮
        UIBarButtonItem *item0 = [[UIBarButtonItem alloc]initWithTitle:NSLocalizedString(@"取消", nil) style:UIBarButtonItemStylePlain target:self action:@selector(dateResult:)];
        item0.tag = 101;
        UIBarButtonItem *item1;
        NSString *language = [[NSUserDefaults standardUserDefaults] objectForKey:@"appLanguage"];
        if (!language) {
            language = [SOHBTool getPreferredLanguage];
        }
        if ([language isEqualToString:@"zh-Hans-US"]) {    //简体中文
             item1 = [[UIBarButtonItem alloc]initWithTitle:@"                                                         " style:UIBarButtonItemStyleDone target:self action:@selector(dateResult:)];
        }else{
             item1 = [[UIBarButtonItem alloc]initWithTitle:@"                                               " style:UIBarButtonItemStyleDone target:self action:@selector(dateResult:)];
        }
        UIBarButtonItem *item2 = [[UIBarButtonItem alloc]initWithTitle:NSLocalizedString(@"完成", nil) style:UIBarButtonItemStylePlain target:self action:@selector(dateResult:)];
        item2.tag = 100;
        toolbar.items = @[item0, item1, item2];
        _toolbar = toolbar;
    }
    return _toolbar;
}
- (UIImageView *)rightArrowImgView{
    if (!_rightArrowImgView) {
        _rightArrowImgView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"SO_arrow_right"]];
    }
    return _rightArrowImgView;
}
- (UIView *)line{
    if (!_line) {
        _line = [[UIView alloc] init];
        _line.backgroundColor = SOH_Color(242, 242, 242, 1);
    }
    return _line;
}
@end
