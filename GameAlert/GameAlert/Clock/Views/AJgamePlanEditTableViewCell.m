//
//  AJgamePlanEditTableViewCell.m
//  wineAwake
//
//  Created by bykj on 2019/10/6.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "AJgamePlanEditTableViewCell.h"
#import "AJgamePlanModel.h"

@interface AJgamePlanEditTableViewCell()<UITextFieldDelegate>
@property(nonatomic, strong)UILabel *AJtitleLbl;
@property(nonatomic, strong)UITextField *AJeditText;
@property(nonatomic, strong)UILabel *AJunitLabel;
@end
@implementation AJgamePlanEditTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = AJH_Color(44, 77, 93, 0.7);
        [self.contentView addSubview:self.AJtitleLbl];
        [self.contentView addSubview:self.AJeditText];
        [self.contentView addSubview:self.AJunitLabel];
        
        [self.AJtitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(16);
            make.top.equalTo(self.contentView).offset(35);
            make.width.mas_equalTo(180);
            make.height.mas_equalTo(20);
        }];
        [self.AJunitLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.trailing.equalTo(self.contentView).offset(-16);
            make.top.equalTo(self.contentView).offset(32);
            make.width.mas_equalTo(80);
            make.height.mas_equalTo(20);
        }];
        [self.AJeditText mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView).offset(32);
            make.height.mas_equalTo(20);
            make.trailing.equalTo(self.AJunitLabel.mas_leading).offset(-5);
            make.leading.equalTo(self.AJtitleLbl.mas_trailing).offset(0);
            make.bottom.equalTo(self.contentView).offset(-32);

        }];
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
    self.AJunitLabel.text = _AJmodel.AJunit;
    size = [self.AJunitLabel sizeThatFits:CGSizeMake(MAXFLOAT, 20)];
    [self.AJunitLabel mas_updateConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(size.width);
    }];
    [self.AJunitLabel layoutIfNeeded];
    [self.contentView layoutSubviews];
    if (_AJmodel.AJcontent.length) {
        self.AJeditText.text = _AJmodel.AJcontent;
    }else{
        self.AJeditText.placeholder = _AJmodel.AJdefaultString;
    }
}
#pragma mark - UITextFieldDelegate
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    if (textField.text.length) {
        self.AJmodel.AJcontent = textField.text;
    }else{
        self.AJeditText.placeholder = _AJmodel.AJdefaultString;
    }
    return YES;
}
- (BOOL)textFieldShouldEndEditing:(UITextField *)textField{
    if (textField.text.length) {
        self.AJmodel.AJcontent = textField.text;
    }else{
        self.AJeditText.placeholder = _AJmodel.AJdefaultString;
    }
    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField.text.length) {
        self.AJmodel.AJcontent = textField.text;
    }else{
        self.AJeditText.placeholder = _AJmodel.AJdefaultString;
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
- (UILabel *)AJunitLabel{
    if (!_AJunitLabel) {
        _AJunitLabel = [[UILabel alloc] init];
        _AJunitLabel.textColor = [UIColor blackColor];
        _AJunitLabel.font = [UIFont systemFontOfSize:13];
        _AJunitLabel.numberOfLines = 0;
        _AJunitLabel.textAlignment = NSTextAlignmentRight;
    }
    return _AJunitLabel;
}
@end
