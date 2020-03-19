//
//  AFgamePlanEditTableViewCell.m
//  wineAwake
//
//  Created by bykj on 2019/10/6.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "AFgamePlanEditTableViewCell.h"
#import "AFgamePlanModel.h"

@interface AFgamePlanEditTableViewCell()<UITextFieldDelegate>
@property(nonatomic, strong)UILabel *AFtitleLbl;
@property(nonatomic, strong)UITextField *AFeditText;
@property(nonatomic, strong)UILabel *AFunitLabel;
@end
@implementation AFgamePlanEditTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = AFH_Color(24, 50, 62, 1);
        [self.contentView addSubview:self.AFtitleLbl];
        [self.contentView addSubview:self.AFeditText];
        [self.contentView addSubview:self.AFunitLabel];
        
        [self.AFtitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(16);
            make.top.equalTo(self.contentView).offset(35);
            make.width.mas_equalTo(180);
            make.height.mas_equalTo(20);
        }];
        [self.AFunitLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.trailing.equalTo(self.contentView).offset(-16);
            make.top.equalTo(self.contentView).offset(32);
            make.width.mas_equalTo(80);
            make.height.mas_equalTo(20);
        }];
        [self.AFeditText mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView).offset(32);
            make.height.mas_equalTo(20);
            make.trailing.equalTo(self.AFunitLabel.mas_leading).offset(-5);
            make.leading.equalTo(self.AFtitleLbl.mas_trailing).offset(0);
            make.bottom.equalTo(self.contentView).offset(-32);

        }];
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
    self.AFunitLabel.text = _AFmodel.AFunit;
    size = [self.AFunitLabel sizeThatFits:CGSizeMake(MAXFLOAT, 20)];
    [self.AFunitLabel mas_updateConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(size.width);
    }];
    [self.AFunitLabel layoutIfNeeded];
    [self.contentView layoutSubviews];
    if (_AFmodel.AFcontent.length) {
        self.AFeditText.text = _AFmodel.AFcontent;
    }else{
        self.AFeditText.placeholder = _AFmodel.AFdefaultString;
    }
}
#pragma mark - UITextFieldDelegate
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    if (textField.text.length) {
        self.AFmodel.AFcontent = textField.text;
    }else{
        self.AFeditText.placeholder = _AFmodel.AFdefaultString;
    }
    return YES;
}
- (BOOL)textFieldShouldEndEditing:(UITextField *)textField{
    if (textField.text.length) {
        self.AFmodel.AFcontent = textField.text;
    }else{
        self.AFeditText.placeholder = _AFmodel.AFdefaultString;
    }
    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField.text.length) {
        self.AFmodel.AFcontent = textField.text;
    }else{
        self.AFeditText.placeholder = _AFmodel.AFdefaultString;
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
- (UILabel *)AFunitLabel{
    if (!_AFunitLabel) {
        _AFunitLabel = [[UILabel alloc] init];
        _AFunitLabel.textColor = [UIColor blackColor];
        _AFunitLabel.font = [UIFont systemFontOfSize:13];
        _AFunitLabel.numberOfLines = 0;
        _AFunitLabel.textAlignment = NSTextAlignmentRight;
    }
    return _AFunitLabel;
}
@end
