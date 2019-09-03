//
//  PKLimitesMensuellesTableViewCell.m
//  PocketBooks
//
//  Created by bykj on 2019/9/3.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "PKLimitesMensuellesTableViewCell.h"
#import "PKLimitesMensuellesModel.h"

@interface PKLimitesMensuellesTableViewCell()<UITextFieldDelegate>
@property(nonatomic, strong)UILabel *titleLbl;
@property(nonatomic, strong)UITextField *contentText;
@property(nonatomic, strong)UILabel *unitLbl;
@property(nonatomic, strong)UIView *line;
@end
@implementation PKLimitesMensuellesTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self.contentView addSubview:self.titleLbl];
        [self.contentView addSubview:self.contentText];
        [self.contentView addSubview:self.unitLbl];
        [self.contentView addSubview:self.line];
        
        [self.titleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(30);
            make.centerY.equalTo(self.contentView);
            make.width.mas_equalTo(70);
            make.height.mas_equalTo(30);
        }];
        [self.contentText mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.titleLbl.mas_trailing);
            make.width.mas_equalTo(PKWIDTH - 30 - 80 - 50 - 5 - 5);
            make.top.equalTo(self.contentView).offset(15);
            make.height.mas_equalTo(30);
            make.bottom.equalTo(self.contentView).offset(-15);
        }];
        [self.unitLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentText.mas_trailing).offset(5);
            make.width.mas_equalTo(50);
            make.centerY.equalTo(self.contentView);
            make.height.mas_equalTo(30);
        }];
        [self.line mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView);
            make.trailing.equalTo(self.contentView);
            make.height.mas_equalTo(1);
            make.bottom.equalTo(self.contentView);
        }];
    }
    return self;
}
- (BOOL)textFieldShouldEndEditing:(UITextField *)textField{
    self.model.content = textField.text;
    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    self.model.content = textField.text;
}
- (void)textFieldDidBeginEditing:(UITextField *)textField{
    self.model.content = textField.text;
}
- (void)setModel:(PKLimitesMensuellesModel *)model{
    _model = model;
    self.titleLbl.text = _model.title;
    if (_model.content.length) {
        self.contentText.text = _model.content;
    }
    self.unitLbl.text = _model.unit;
    if (_model.isEdit) {
        self.contentText.userInteractionEnabled = YES;
    }else{
        self.contentText.userInteractionEnabled = NO;
    }
}
#pragma mark - 属性懒加载
- (UILabel *)titleLbl{
    if (!_titleLbl) {
        _titleLbl = [[UILabel alloc] init];
        _titleLbl.textColor = [UIColor blackColor];
        _titleLbl.font = [UIFont systemFontOfSize:14];
        _titleLbl.numberOfLines = 0;
    }
    return _titleLbl;
}
- (UITextField *)contentText{
    if (!_contentText) {
        _contentText = [[UITextField alloc] init];
        _contentText.placeholder = NSLocalizedString(@"请输入金额", nil);
        _contentText.textColor = [UIColor blackColor];
        _contentText.font = [UIFont systemFontOfSize:16];
        _contentText.delegate = self;
        _contentText.keyboardType = UIKeyboardTypeNumberPad;
    }
    return _contentText;
}
- (UILabel *)unitLbl{
    if (!_unitLbl) {
        _unitLbl = [[UILabel alloc] init];
        _unitLbl.textColor = [UIColor blackColor];
        _unitLbl.font = [UIFont systemFontOfSize:13];
        _unitLbl.numberOfLines = 0;
    }
    return _unitLbl;
}
- (UIView *)line{
    if (!_line) {
        _line = [[UIView alloc] init];
        _line.backgroundColor = PKH_Color(242, 242, 242, 1);
    }
    return _line;
}
@end
