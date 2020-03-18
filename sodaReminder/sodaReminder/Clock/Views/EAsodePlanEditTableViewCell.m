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
@property(nonatomic, strong)UILabel *titleLbl;
@property(nonatomic, strong)UITextField *editText;
@property(nonatomic, strong)UILabel *unitLabel;
@property(nonatomic, strong)UIView *line;
@end
@implementation EAsodePlanEditTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = EAH_Color(236, 236, 236, 1);
        [self.contentView addSubview:self.titleLbl];
        [self.contentView addSubview:self.editText];
        [self.contentView addSubview:self.unitLabel];
        [self.contentView addSubview:self.line];
        
        [self.titleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(16);
            make.top.equalTo(self.contentView).offset(25);
            make.width.mas_equalTo(180);
            make.height.mas_equalTo(20);
        }];
        [self.unitLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.trailing.equalTo(self.contentView).offset(-16);
            make.top.equalTo(self.contentView).offset(22);
            make.width.mas_equalTo(65);
            make.height.mas_equalTo(20);
        }];
        [self.editText mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView).offset(22);
            make.height.mas_equalTo(20);
            make.trailing.equalTo(self.unitLabel.mas_leading).offset(-5);
            make.leading.equalTo(self.titleLbl.mas_trailing).offset(0);
        }];
        [self.line mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(16);
            make.trailing.equalTo(self.contentView);
            make.top.equalTo(self.editText.mas_bottom).offset(24);
            make.height.mas_equalTo(1);
            make.bottom.equalTo(self.contentView);
        }];
    }
    return self;
}
- (void)setModel:(EAsodePlanModel *)model{
    _model = model;
    self.titleLbl.text = _model.EAtitle;
    self.unitLabel.text = _model.EAunit;
    if (_model.EAcontent.length) {
        self.editText.text = _model.EAcontent;
    }else{
        self.editText.placeholder = _model.EAdefaultString;
    }
}
#pragma mark - UITextFieldDelegate
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    if (textField.text.length) {
        self.model.EAcontent = textField.text;
    }else{
        self.editText.placeholder = _model.EAdefaultString;
    }
    return YES;
}
- (BOOL)textFieldShouldEndEditing:(UITextField *)textField{
    if (textField.text.length) {
        self.model.EAcontent = textField.text;
    }else{
        self.editText.placeholder = _model.EAdefaultString;
    }
    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField.text.length) {
        self.model.EAcontent = textField.text;
    }else{
        self.editText.placeholder = _model.EAdefaultString;
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
- (UILabel *)unitLabel{
    if (!_unitLabel) {
        _unitLabel = [[UILabel alloc] init];
        _unitLabel.textColor = [UIColor blackColor];
        _unitLabel.font = [UIFont systemFontOfSize:14];
        _unitLabel.numberOfLines = 0;
        _unitLabel.textAlignment = NSTextAlignmentRight;
    }
    return _unitLabel;
}
- (UIView *)line{
    if (!_line) {
        _line = [[UIView alloc] init];
        _line.backgroundColor = EAH_Color(242, 242, 242, 1);
    }
    return _line;
}
@end
