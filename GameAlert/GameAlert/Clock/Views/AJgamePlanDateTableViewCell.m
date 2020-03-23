//
//  AJgamePlanDateTableViewCell.m
//  wineAwake
//
//  Created by bykj on 2019/10/7.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "AJgamePlanDateTableViewCell.h"
#import "AJgamePlanModel.h"

@interface AJgamePlanDateTableViewCell()<UITextFieldDelegate>
@property(nonatomic, strong)UILabel *AJtitleLbl;
@property(nonatomic, strong)UITextField *AJeditText;
@property(nonatomic, strong)UIDatePicker *AJdatePicker;
@property(nonatomic, strong)UIToolbar *AJtoolbar;
@property(nonatomic, strong)UIImageView *AJrightArrowImgView;
@end
@implementation AJgamePlanDateTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = AJH_Color(44, 77, 93, 0.7);
        [self.contentView addSubview:self.AJtitleLbl];
        [self.contentView addSubview:self.AJeditText];
        [self.contentView addSubview:self.AJrightArrowImgView];
        
        [self.AJtitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(16);
            make.top.equalTo(self.contentView).offset(35);
            make.width.mas_equalTo(220);
            make.height.mas_equalTo(16);
        }];
        [self.AJrightArrowImgView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.trailing.equalTo(self.contentView).offset(-16);
            make.top.equalTo(self.contentView).offset(32);
            make.width.mas_equalTo(22);
            make.height.mas_equalTo(22);
        }];
        [self.AJeditText mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView).offset(32);
            make.height.mas_equalTo(25);
            make.trailing.equalTo(self.AJrightArrowImgView.mas_leading);
            make.leading.equalTo(self.AJtitleLbl.mas_trailing).offset(0);
            make.bottom.equalTo(self.contentView).offset(-32);
        }];
        
        self.AJeditText.inputView = self.AJdatePicker;
        self.AJeditText.inputAccessoryView = self.AJtoolbar;
    }
    return self;
}
- (void)setAJmodel:(AJgamePlanModel *)AJmodel{
    _AJmodel = AJmodel;
    self.AJtitleLbl.text = _AJmodel.AJtitle;
    CGSize size = [self.AJtitleLbl sizeThatFits:CGSizeMake(MAXFLOAT, 20)];
    [self.AJtitleLbl mas_updateConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(size.width);
    }];
    [self.AJtitleLbl layoutIfNeeded];
    [self.contentView layoutSubviews];
    if (_AJmodel.AJcontent.length) {
        self.AJeditText.text = _AJmodel.AJcontent;
    }else{
        self.AJeditText.placeholder = _AJmodel.AJdefaultString;
    }
}
- (void)AJdateChange:(UIDatePicker *)datePicker {
    
}
- (void)AJdateResult:(UIBarButtonItem *)sender{
    if (sender.tag == 100) {
        NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
        //设置时间格式
        formatter.dateFormat = @"yyyy/MM/dd";
        NSString *dateStr = [formatter  stringFromDate:self.AJdatePicker.date];
        if (dateStr.length) {
            self.AJmodel.AJcontent = dateStr;
        }else{
            self.AJeditText.placeholder = _AJmodel.AJdefaultString;
        }
        if (self.AJgamePlanDateB) {
            self.AJgamePlanDateB(self);
        }
        [self.contentView endEditing:YES];
    }else{
        [self.contentView endEditing:YES];
    }
}
#pragma mark - 属性懒加载
- (UILabel *)AJtitleLbl{
    if (!_AJtitleLbl) {
        _AJtitleLbl = [[UILabel alloc] init];
        _AJtitleLbl.textColor = [UIColor blackColor];
        _AJtitleLbl.font = [UIFont systemFontOfSize:15];
        _AJtitleLbl.numberOfLines = 0;
    }
    return _AJtitleLbl;
}
- (UITextField *)AJeditText{
    if (!_AJeditText) {
        _AJeditText = [[UITextField alloc] init];
        _AJeditText.delegate = self;
        _AJeditText.textColor = [UIColor blackColor];
        _AJeditText.font = [UIFont systemFontOfSize:16];
        _AJeditText.textAlignment = NSTextAlignmentRight;
    }
    return _AJeditText;
}
- (UIDatePicker *)AJdatePicker{
    if (!_AJdatePicker) {
        _AJdatePicker = [[UIDatePicker alloc] init];
        _AJdatePicker.datePickerMode = UIDatePickerModeDateAndTime;
        NSString *language = [[NSUserDefaults standardUserDefaults] objectForKey:@"appLanguage"];
        if (!language) {
            language = [AJHBTool getPreferredLanguage];
            NSLog(@"language:%@",language);
        }
        if ([language isEqualToString:@"zh-Hans-US"]) {    //简体中文
            [_AJdatePicker setLocale:[[NSLocale alloc]initWithLocaleIdentifier:@"zh-Hans-US"]];
        }else if ([language isEqualToString:@"en"]){
            //英文
        [_AJdatePicker setLocale:[[NSLocale alloc]initWithLocaleIdentifier:@"en"]];
        }else if ([language isEqualToString:@"ja-US"]){
            //日文
        [_AJdatePicker setLocale:[[NSLocale alloc]initWithLocaleIdentifier:@"ja-US"]];
        }else{
            //其他地区默认设为英语
            [_AJdatePicker setLocale:[[NSLocale alloc]initWithLocaleIdentifier:@"en"]];
        }
        [_AJdatePicker setDate:[NSDate date] animated:YES];
        [_AJdatePicker setMaximumDate:[NSDate date]];
        [_AJdatePicker addTarget:self action:@selector(AJdateChange:) forControlEvents:UIControlEventValueChanged];
    }
    return _AJdatePicker;
}
- (UIToolbar *)AJtoolbar{
    if (!_AJtoolbar) {
        UIToolbar *toolbar = [[UIToolbar alloc] init];
        toolbar.barTintColor = AJH_Color(242, 242, 242, 1);
        //设置工具条的frame
        toolbar.frame = CGRectMake(0, 0, AJWIDTH, 44);
        //给工具条添加按钮
        UIBarButtonItem *item0 = [[UIBarButtonItem alloc]initWithTitle:NSLocalizedString(@"取消", nil) style:UIBarButtonItemStylePlain target:self action:@selector(AJdateResult:)];
        item0.tag = 101;
        UIBarButtonItem *item1;
        NSString *language = [[NSUserDefaults standardUserDefaults] objectForKey:@"appLanguage"];
        if (!language) {
            language = [AJHBTool getPreferredLanguage];
        }
        if ([language isEqualToString:@"zh-Hans-US"]) {    //简体中文
             item1 = [[UIBarButtonItem alloc]initWithTitle:@"                                                         " style:UIBarButtonItemStyleDone target:self action:@selector(AJdateResult:)];
        }else{
             item1 = [[UIBarButtonItem alloc]initWithTitle:@"                                               " style:UIBarButtonItemStyleDone target:self action:@selector(AJdateResult:)];
        }
        UIBarButtonItem *item2 = [[UIBarButtonItem alloc]initWithTitle:NSLocalizedString(@"完成", nil) style:UIBarButtonItemStylePlain target:self action:@selector(AJdateResult:)];
        item2.tag = 100;
        toolbar.items = @[item0, item1, item2];
        _AJtoolbar = toolbar;
    }
    return _AJtoolbar;
}
- (UIImageView *)AJrightArrowImgView{
    if (!_AJrightArrowImgView) {
        _AJrightArrowImgView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"AJ_arrow_right"]];
    }
    return _AJrightArrowImgView;
}
@end
