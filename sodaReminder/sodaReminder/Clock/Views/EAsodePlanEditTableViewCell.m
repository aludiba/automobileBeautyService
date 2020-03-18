//
//  EAsodePlanEditTableViewCell.m
//  wineAwake
//
//  Created by bykj on 2019/10/6.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "EAsodePlanEditTableViewCell.h"
#import "EAsodePlanModel.h"

@interface EAsodePlanEditTableViewCell()<UITextFieldDelegate>
@property(nonatomic, strong)UILabel *EAtitleLbl;
@property(nonatomic, strong)UITextField *EAeditText;
@property(nonatomic, strong)UILabel *EAunitLabel;
@property(nonatomic, strong)UIView *EAline;
@end
@implementation EAsodePlanEditTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = [UIColor colorWithRed:0 green:0 blue:1 alpha:0.5];
        [self.contentView addSubview:self.EAtitleLbl];
        [self.contentView addSubview:self.EAeditText];
        [self.contentView addSubview:self.EAunitLabel];
        [self.contentView addSubview:self.EAline];
        
        [self.EAtitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(16);
            make.top.equalTo(self.contentView).offset(25);
            make.width.mas_equalTo(180);
            make.height.mas_equalTo(20);
        }];
        [self.EAunitLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.trailing.equalTo(self.contentView).offset(-16);
            make.top.equalTo(self.contentView).offset(22);
            make.width.mas_equalTo(65);
            make.height.mas_equalTo(20);
        }];
        [self.EAeditText mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView).offset(22);
            make.height.mas_equalTo(20);
            make.trailing.equalTo(self.EAunitLabel.mas_leading).offset(-5);
            make.leading.equalTo(self.EAtitleLbl.mas_trailing).offset(0);
        }];
        [self.EAline mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(16);
            make.trailing.equalTo(self.contentView);
            make.top.equalTo(self.EAeditText.mas_bottom).offset(24);
            make.height.mas_equalTo(1);
            make.bottom.equalTo(self.contentView);
        }];
    }
    return self;
}
- (void)setEAmodel:(EAsodePlanModel *)EAmodel{
    _EAmodel = EAmodel;
    self.EAtitleLbl.text = _EAmodel.EAtitle;
    self.EAunitLabel.text = _EAmodel.EAunit;
    if (_EAmodel.EAcontent.length) {
        self.EAeditText.text = _EAmodel.EAcontent;
    }else{
        self.EAeditText.placeholder = _EAmodel.EAdefaultString;
    }
}
#pragma mark - UITextFieldDelegate
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    if (textField.text.length) {
        self.EAmodel.EAcontent = textField.text;
    }else{
        self.EAeditText.placeholder = _EAmodel.EAdefaultString;
    }
    return YES;
}
- (BOOL)textFieldShouldEndEditing:(UITextField *)textField{
    if (textField.text.length) {
        self.EAmodel.EAcontent = textField.text;
    }else{
        self.EAeditText.placeholder = _EAmodel.EAdefaultString;
    }
    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField.text.length) {
        self.EAmodel.EAcontent = textField.text;
    }else{
        self.EAeditText.placeholder = _EAmodel.EAdefaultString;
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
- (UILabel *)EAunitLabel{
    if (!_EAunitLabel) {
        _EAunitLabel = [[UILabel alloc] init];
        _EAunitLabel.textColor = [UIColor blackColor];
        _EAunitLabel.font = [UIFont systemFontOfSize:14];
        _EAunitLabel.numberOfLines = 0;
        _EAunitLabel.textAlignment = NSTextAlignmentRight;
    }
    return _EAunitLabel;
}
- (UIView *)EAline{
    if (!_EAline) {
        _EAline = [[UIView alloc] init];
        _EAline.backgroundColor = [UIColor grayColor];
    }
    return _EAline;
}
@end
