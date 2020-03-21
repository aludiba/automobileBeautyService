//
//  AHsodePlanDateTableViewCell.m
//  wineAwake
//
//  Created by bykj on 2019/10/7.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "AHsodePlanDateTableViewCell.h"
#import "AHsodePlanModel.h"

@interface AHsodePlanDateTableViewCell()<UITextFieldDelegate>
@property(nonatomic, strong)UILabel *AHtitleLbl;
@property(nonatomic, strong)UITextField *AHeditText;
@property(nonatomic, strong)UIDatePicker *AHdatePicker;
@property(nonatomic, strong)UIToolbar *AHtoolbar;
@property(nonatomic, strong)UIImageView *AHrightArrowImgView;
@property(nonatomic, strong)UIView *AHline;
@end
@implementation AHsodePlanDateTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = [UIColor colorWithRed:0 green:0 blue:1 alpha:0.5];
        [self.contentView addSubview:self.AHtitleLbl];
        [self.contentView addSubview:self.AHeditText];
        [self.contentView addSubview:self.AHrightArrowImgView];
        [self.contentView addSubview:self.AHline];
        
        [self.AHtitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(16);
            make.top.equalTo(self.contentView).offset(25);
            make.width.mas_equalTo(100);
            make.height.mas_equalTo(16);
        }];
        [self.AHrightArrowImgView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.trailing.equalTo(self.contentView).offset(-16);
            make.top.equalTo(self.contentView).offset(22);
            make.width.mas_equalTo(22);
            make.height.mas_equalTo(22);
        }];
        [self.AHeditText mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView).offset(22);
            make.height.mas_equalTo(20);
            make.trailing.equalTo(self.AHrightArrowImgView.mas_leading).offset(-32);
            make.leading.equalTo(self.AHtitleLbl.mas_trailing).offset(0);
        }];
        [self.AHline mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(16);
            make.trailing.equalTo(self.contentView);
            make.top.equalTo(self.AHeditText.mas_bottom).offset(24);
            make.height.mas_equalTo(1);
            make.bottom.equalTo(self.contentView);
        }];
        
        self.AHeditText.inputView = self.AHdatePicker;
        self.AHeditText.inputAccessoryView = self.AHtoolbar;
    }
    return self;
}
- (void)setAHmodel:(AHsodePlanModel *)AHmodel{
    _AHmodel = AHmodel;
    self.AHtitleLbl.text = _AHmodel.AHtitle;
    if (_AHmodel.AHcontent.length) {
        self.AHeditText.text = _AHmodel.AHcontent;
    }else{
        self.AHeditText.placeholder = _AHmodel.AHdefaultString;
    }
}
- (void)AHdateChange:(UIDatePicker *)datePicker {
    
}
- (void)AHdateResult:(UIBarButtonItem *)sender{
    if (sender.tag == 100) {
        NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
        //设置时间格式
        formatter.dateFormat = @"yyyy-MM-dd";
        NSString *dateStr = [formatter  stringFromDate:self.AHdatePicker.date];
        if (dateStr.length) {
            self.AHmodel.AHcontent = dateStr;
        }else{
            self.AHeditText.placeholder = _AHmodel.AHdefaultString;
        }
        if (self.AHsodePlanDateB) {
            self.AHsodePlanDateB(self);
        }
        [self.contentView endEditing:YES];
    }else{
        [self.contentView endEditing:YES];
    }
}
#pragma mark - 属性懒加载
- (UILabel *)AHtitleLbl{
    if (!_AHtitleLbl) {
        _AHtitleLbl = [[UILabel alloc] init];
        _AHtitleLbl.textColor = [UIColor blackColor];
        _AHtitleLbl.font = [UIFont systemFontOfSize:15];
        _AHtitleLbl.numberOfLines = 0;
    }
    return _AHtitleLbl;
}
- (UITextField *)AHeditText{
    if (!_AHeditText) {
        _AHeditText = [[UITextField alloc] init];
        _AHeditText.delegate = self;
        _AHeditText.textColor = [UIColor blackColor];
        _AHeditText.font = [UIFont systemFontOfSize:18];
        _AHeditText.textAlignment = NSTextAlignmentRight;
    }
    return _AHeditText;
}
- (UIDatePicker *)AHdatePicker{
    if (!_AHdatePicker) {
        _AHdatePicker = [[UIDatePicker alloc] init];
        _AHdatePicker.datePickerMode = UIDatePickerModeDateAndTime;
        NSString *language = [[NSUserDefaults standardUserDefaults] objectForKey:@"appLanguage"];
        if (!language) {
            language = [AHHBTool getPreferredLanguage];
            NSLog(@"language:%@",language);
        }
        if ([language isEqualToString:@"zh-Hans-US"]) {    //简体中文
            [_AHdatePicker setLocale:[[NSLocale alloc]initWithLocaleIdentifier:@"zh-Hans-US"]];
        }else if ([language isEqualToString:@"en"]){
            //英文
        [_AHdatePicker setLocale:[[NSLocale alloc]initWithLocaleIdentifier:@"en"]];
        }else if ([language isEqualToString:@"ja-US"]){
            //日文
        [_AHdatePicker setLocale:[[NSLocale alloc]initWithLocaleIdentifier:@"ja-US"]];
        }else{
            //其他地区默认设为英语
            [_AHdatePicker setLocale:[[NSLocale alloc]initWithLocaleIdentifier:@"en"]];
        }
        [_AHdatePicker setDate:[NSDate date] animated:YES];
        [_AHdatePicker setMaximumDate:[NSDate date]];
        [_AHdatePicker addTarget:self action:@selector(AHdateChange:) forControlEvents:UIControlEventValueChanged];
    }
    return _AHdatePicker;
}
- (UIToolbar *)AHtoolbar{
    if (!_AHtoolbar) {
        UIToolbar *toolbar = [[UIToolbar alloc] init];
        toolbar.barTintColor = AHH_Color(242, 242, 242, 1);
        //设置工具条的frame
        toolbar.frame = CGRectMake(0, 0, AHWIDTH, 44);
        //给工具条添加按钮
        UIBarButtonItem *item0 = [[UIBarButtonItem alloc]initWithTitle:NSLocalizedString(@"取消", nil) style:UIBarButtonItemStylePlain target:self action:@selector(AHdateResult:)];
        item0.tag = 101;
        UIBarButtonItem *item1;
        NSString *language = [[NSUserDefaults standardUserDefaults] objectForKey:@"appLanguage"];
        if (!language) {
            language = [AHHBTool getPreferredLanguage];
        }
        if ([language isEqualToString:@"zh-Hans-US"]) {    //简体中文
             item1 = [[UIBarButtonItem alloc]initWithTitle:@"                                                         " style:UIBarButtonItemStyleDone target:self action:@selector(AHdateResult:)];
        }else{
             item1 = [[UIBarButtonItem alloc]initWithTitle:@"                                               " style:UIBarButtonItemStyleDone target:self action:@selector(AHdateResult:)];
        }
        UIBarButtonItem *item2 = [[UIBarButtonItem alloc]initWithTitle:NSLocalizedString(@"完成", nil) style:UIBarButtonItemStylePlain target:self action:@selector(AHdateResult:)];
        item2.tag = 100;
        toolbar.items = @[item0, item1, item2];
        _AHtoolbar = toolbar;
    }
    return _AHtoolbar;
}
- (UIImageView *)AHrightArrowImgView{
    if (!_AHrightArrowImgView) {
        _AHrightArrowImgView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"AH_arrow_right"]];
    }
    return _AHrightArrowImgView;
}
- (UIView *)AHline{
    if (!_AHline) {
        _AHline = [[UIView alloc] init];
        _AHline.backgroundColor = [UIColor grayColor];
    }
    return _AHline;
}
@end
