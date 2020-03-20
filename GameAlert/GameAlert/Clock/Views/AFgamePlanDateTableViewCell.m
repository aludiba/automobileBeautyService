//
//  AFgamePlanDateTableViewCell.m
//  wineAwake
//
//  Created by bykj on 2019/10/7.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "AFgamePlanDateTableViewCell.h"
#import "AFgamePlanModel.h"

@interface AFgamePlanDateTableViewCell()<UITextFieldDelegate>
@property(nonatomic, strong)UILabel *AFtitleLbl;
@property(nonatomic, strong)UITextField *AFeditText;
@property(nonatomic, strong)UIDatePicker *AFdatePicker;
@property(nonatomic, strong)UIToolbar *AFtoolbar;
@property(nonatomic, strong)UIImageView *AFrightArrowImgView;
@end
@implementation AFgamePlanDateTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = AFH_Color(44, 77, 93, 0.7);
        [self.contentView addSubview:self.AFtitleLbl];
        [self.contentView addSubview:self.AFeditText];
        [self.contentView addSubview:self.AFrightArrowImgView];
        
        [self.AFtitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(16);
            make.top.equalTo(self.contentView).offset(35);
            make.width.mas_equalTo(220);
            make.height.mas_equalTo(16);
        }];
        [self.AFrightArrowImgView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.trailing.equalTo(self.contentView).offset(-16);
            make.top.equalTo(self.contentView).offset(32);
            make.width.mas_equalTo(22);
            make.height.mas_equalTo(22);
        }];
        [self.AFeditText mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView).offset(32);
            make.height.mas_equalTo(25);
            make.trailing.equalTo(self.AFrightArrowImgView.mas_leading);
            make.leading.equalTo(self.AFtitleLbl.mas_trailing).offset(0);
            make.bottom.equalTo(self.contentView).offset(-32);
        }];
        
        self.AFeditText.inputView = self.AFdatePicker;
        self.AFeditText.inputAccessoryView = self.AFtoolbar;
    }
    return self;
}
- (void)setAFmodel:(AFgamePlanModel *)AFmodel{
    _AFmodel = AFmodel;
    self.AFtitleLbl.text = _AFmodel.AFtitle;
    CGSize size = [self.AFtitleLbl sizeThatFits:CGSizeMake(MAXFLOAT, 20)];
    [self.AFtitleLbl mas_updateConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(size.width);
    }];
    [self.AFtitleLbl layoutIfNeeded];
    [self.contentView layoutSubviews];
    if (_AFmodel.AFcontent.length) {
        self.AFeditText.text = _AFmodel.AFcontent;
    }else{
        self.AFeditText.placeholder = _AFmodel.AFdefaultString;
    }
}
- (void)AFdateChange:(UIDatePicker *)datePicker {
    
}
- (void)AFdateResult:(UIBarButtonItem *)sender{
    if (sender.tag == 100) {
        NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
        //设置时间格式
        formatter.dateFormat = @"yyyy/MM/dd";
        NSString *dateStr = [formatter  stringFromDate:self.AFdatePicker.date];
        if (dateStr.length) {
            self.AFmodel.AFcontent = dateStr;
        }else{
            self.AFeditText.placeholder = _AFmodel.AFdefaultString;
        }
        if (self.AFgamePlanDateB) {
            self.AFgamePlanDateB(self);
        }
        [self.contentView endEditing:YES];
    }else{
        [self.contentView endEditing:YES];
    }
}
#pragma mark - 属性懒加载
- (UILabel *)AFtitleLbl{
    if (!_AFtitleLbl) {
        _AFtitleLbl = [[UILabel alloc] init];
        _AFtitleLbl.textColor = [UIColor blackColor];
        _AFtitleLbl.font = [UIFont systemFontOfSize:15];
        _AFtitleLbl.numberOfLines = 0;
    }
    return _AFtitleLbl;
}
- (UITextField *)AFeditText{
    if (!_AFeditText) {
        _AFeditText = [[UITextField alloc] init];
        _AFeditText.delegate = self;
        _AFeditText.textColor = [UIColor blackColor];
        _AFeditText.font = [UIFont systemFontOfSize:16];
        _AFeditText.textAlignment = NSTextAlignmentRight;
    }
    return _AFeditText;
}
- (UIDatePicker *)AFdatePicker{
    if (!_AFdatePicker) {
        _AFdatePicker = [[UIDatePicker alloc] init];
        _AFdatePicker.datePickerMode = UIDatePickerModeDateAndTime;
        NSString *language = [[NSUserDefaults standardUserDefaults] objectForKey:@"appLanguage"];
        if (!language) {
            language = [AFHBTool getPreferredLanguage];
            NSLog(@"language:%@",language);
        }
        if ([language isEqualToString:@"zh-Hans-US"]) {    //简体中文
            [_AFdatePicker setLocale:[[NSLocale alloc]initWithLocaleIdentifier:@"zh-Hans-US"]];
        }else if ([language isEqualToString:@"en"]){
            //英文
        [_AFdatePicker setLocale:[[NSLocale alloc]initWithLocaleIdentifier:@"en"]];
        }else if ([language isEqualToString:@"ja-US"]){
            //日文
        [_AFdatePicker setLocale:[[NSLocale alloc]initWithLocaleIdentifier:@"ja-US"]];
        }else{
            //其他地区默认设为英语
            [_AFdatePicker setLocale:[[NSLocale alloc]initWithLocaleIdentifier:@"en"]];
        }
        [_AFdatePicker setDate:[NSDate date] animated:YES];
        [_AFdatePicker setMaximumDate:[NSDate date]];
        [_AFdatePicker addTarget:self action:@selector(AFdateChange:) forControlEvents:UIControlEventValueChanged];
    }
    return _AFdatePicker;
}
- (UIToolbar *)AFtoolbar{
    if (!_AFtoolbar) {
        UIToolbar *toolbar = [[UIToolbar alloc] init];
        toolbar.barTintColor = AFH_Color(242, 242, 242, 1);
        //设置工具条的frame
        toolbar.frame = CGRectMake(0, 0, AFWIDTH, 44);
        //给工具条添加按钮
        UIBarButtonItem *item0 = [[UIBarButtonItem alloc]initWithTitle:NSLocalizedString(@"取消", nil) style:UIBarButtonItemStylePlain target:self action:@selector(AFdateResult:)];
        item0.tag = 101;
        UIBarButtonItem *item1;
        NSString *language = [[NSUserDefaults standardUserDefaults] objectForKey:@"appLanguage"];
        if (!language) {
            language = [AFHBTool getPreferredLanguage];
        }
        if ([language isEqualToString:@"zh-Hans-US"]) {    //简体中文
             item1 = [[UIBarButtonItem alloc]initWithTitle:@"                                                         " style:UIBarButtonItemStyleDone target:self action:@selector(AFdateResult:)];
        }else{
             item1 = [[UIBarButtonItem alloc]initWithTitle:@"                                               " style:UIBarButtonItemStyleDone target:self action:@selector(AFdateResult:)];
        }
        UIBarButtonItem *item2 = [[UIBarButtonItem alloc]initWithTitle:NSLocalizedString(@"完成", nil) style:UIBarButtonItemStylePlain target:self action:@selector(AFdateResult:)];
        item2.tag = 100;
        toolbar.items = @[item0, item1, item2];
        _AFtoolbar = toolbar;
    }
    return _AFtoolbar;
}
- (UIImageView *)AFrightArrowImgView{
    if (!_AFrightArrowImgView) {
        _AFrightArrowImgView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"AF_arrow_right"]];
    }
    return _AFrightArrowImgView;
}
@end
