//
//  PKAddBudgetTableViewCell.m
//  PocketBooks
//
//  Created by bykj on 2019/9/4.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "PKAddBudgetTableViewCell.h"
#import "PKBudgetModel.h"

@interface PKAddBudgetTableViewCell()<UITextFieldDelegate>
@property(nonatomic, strong)UILabel *titleLbl;
@property(nonatomic, strong)UILabel *unitLbl;
@property(nonatomic, strong)UILabel *limitsLbl;
@property(nonatomic, strong)UIView *line;
@end
@implementation PKAddBudgetTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self.contentView addSubview:self.titleLbl];
        [self.contentView addSubview:self.contentText];
        [self.contentView addSubview:self.unitLbl];
        [self.contentView addSubview:self.limitsLbl];
        [self.contentView addSubview:self.line];

        [self.titleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(30);
            make.centerY.equalTo(self.contentView);
            make.width.mas_equalTo(70);
            make.height.mas_equalTo(30);
        }];
        [self.contentText mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.titleLbl.mas_trailing);
            make.width.mas_equalTo(PKWIDTH * 0.5 - 100);
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
        [self.limitsLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.trailing.equalTo(self.contentView).offset(-10);
            make.centerY.equalTo(self.contentView);
            make.width.mas_equalTo(PKWIDTH - PKWIDTH * 0.5 - 50 - 10);
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
- (void)setModel:(PKBudgetModel *)model{
    _model = model;
    self.titleLbl.text = _model.title;
    self.unitLbl.text = _model.unit;
    self.limitsLbl.text = [NSString stringWithFormat:@"%@:%@ %@",NSLocalizedString(@"限额", nil),_model.limits,_model.unit];
    if (_model.content.length) {
        self.contentText.text = _model.content;
    }
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
#pragma mark - 属性懒加载
- (UILabel *)titleLbl{
    if (!_titleLbl) {
        _titleLbl = [[UILabel alloc] init];
        _titleLbl.textColor = [UIColor blueColor];
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
        _contentText.font = [UIFont systemFontOfSize:18];
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
- (UILabel *)limitsLbl{
    if (!_limitsLbl) {
        _limitsLbl = [[UILabel alloc] init];
        _limitsLbl.textColor = [UIColor redColor];
        _limitsLbl.font = [UIFont systemFontOfSize:16];
        _limitsLbl.numberOfLines = 0;
    }
    return _limitsLbl;
}
@end
