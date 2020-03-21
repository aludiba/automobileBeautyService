//
//  AHsodePlanEditTableViewCell.m
//  wineAwake
//
//  Created by bykj on 2019/10/6.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "AHsodePlanEditTableViewCell.h"
#import "AHsodePlanModel.h"

@interface AHsodePlanEditTableViewCell()<UITextFieldDelegate>
@property(nonatomic, strong)UILabel *AHtitleLbl;
@property(nonatomic, strong)UITextField *AHeditText;
@property(nonatomic, strong)UILabel *AHunitLabel;
@property(nonatomic, strong)UIView *AHline;
@end
@implementation AHsodePlanEditTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = [UIColor colorWithRed:0 green:0 blue:1 alpha:0.5];
        [self.contentView addSubview:self.AHtitleLbl];
        [self.contentView addSubview:self.AHeditText];
        [self.contentView addSubview:self.AHunitLabel];
        [self.contentView addSubview:self.AHline];
        
        [self.AHtitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(16);
            make.top.equalTo(self.contentView).offset(25);
            make.width.mas_equalTo(180);
            make.height.mas_equalTo(20);
        }];
        [self.AHunitLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.trailing.equalTo(self.contentView).offset(-16);
            make.top.equalTo(self.contentView).offset(22);
            make.width.mas_equalTo(65);
            make.height.mas_equalTo(20);
        }];
        [self.AHeditText mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView).offset(22);
            make.height.mas_equalTo(20);
            make.trailing.equalTo(self.AHunitLabel.mas_leading).offset(-5);
            make.leading.equalTo(self.AHtitleLbl.mas_trailing).offset(0);
        }];
        [self.AHline mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(16);
            make.trailing.equalTo(self.contentView);
            make.top.equalTo(self.AHeditText.mas_bottom).offset(24);
            make.height.mas_equalTo(1);
            make.bottom.equalTo(self.contentView);
        }];
    }
    return self;
}
- (void)setAHmodel:(AHsodePlanModel *)AHmodel{
    _AHmodel = AHmodel;
    self.AHtitleLbl.text = _AHmodel.AHtitle;
    self.AHunitLabel.text = _AHmodel.AHunit;
    if (_AHmodel.AHcontent.length) {
        self.AHeditText.text = _AHmodel.AHcontent;
    }else{
        self.AHeditText.placeholder = _AHmodel.AHdefaultString;
    }
}
#pragma mark - UITextFieldDelegate
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    if (textField.text.length) {
        self.AHmodel.AHcontent = textField.text;
    }else{
        self.AHeditText.placeholder = _AHmodel.AHdefaultString;
    }
    return YES;
}
- (BOOL)textFieldShouldEndEditing:(UITextField *)textField{
    if (textField.text.length) {
        self.AHmodel.AHcontent = textField.text;
    }else{
        self.AHeditText.placeholder = _AHmodel.AHdefaultString;
    }
    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField.text.length) {
        self.AHmodel.AHcontent = textField.text;
    }else{
        self.AHeditText.placeholder = _AHmodel.AHdefaultString;
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
- (UILabel *)AHunitLabel{
    if (!_AHunitLabel) {
        _AHunitLabel = [[UILabel alloc] init];
        _AHunitLabel.textColor = [UIColor blackColor];
        _AHunitLabel.font = [UIFont systemFontOfSize:14];
        _AHunitLabel.numberOfLines = 0;
        _AHunitLabel.textAlignment = NSTextAlignmentRight;
    }
    return _AHunitLabel;
}
- (UIView *)AHline{
    if (!_AHline) {
        _AHline = [[UIView alloc] init];
        _AHline.backgroundColor = [UIColor grayColor];
    }
    return _AHline;
}
@end
