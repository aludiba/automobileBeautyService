//
//  CFBothTeamsTableViewCell.m
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import "CFBothTeamsTableViewCell.h"
#import "CFScorecardViewModel.h"

@interface CFBothTeamsTableViewCell()<UITextFieldDelegate>
@property(nonatomic, strong)UILabel *CFRightTeamLabel;//右边队伍名称标识
@property(nonatomic, strong)UITextField *CFRightTeamField;//右边队伍
@property(nonatomic, copy)NSString *CFRightTeamName;//右边队伍名称
@property(nonatomic, strong)UILabel *CFVSLabel;//VS标识
@property(nonatomic, strong)UILabel *CFLeftTeamLabel;//左边队伍名称标识
@property(nonatomic, strong)UITextField *CFLeftTeamField;//左边队伍
@property(nonatomic, copy)NSString *CFLeftTeamName;//左边队伍名称
@end
@implementation CFBothTeamsTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self CFSetContentView];
    }
    return self;
}
#pragma mark - action
- (void)setCFModel:(CFScorecardViewModel *)CFModel{
    _CFModel = CFModel;
    self.CFRightTeamField.text = _CFModel.CFTeamRightName;
    self.CFLeftTeamField.text = _CFModel.CFTeamLeftName;
}
- (void)CFSetContentView{
    [self.contentView addSubview:self.CFRightTeamLabel];
    [self.contentView addSubview:self.CFRightTeamField];
    [self.contentView addSubview:self.CFVSLabel];
    [self.contentView addSubview:self.CFLeftTeamLabel];
    [self.contentView addSubview:self.CFLeftTeamField];
    
    [self.CFRightTeamLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(32);
        make.top.equalTo(self.contentView).offset(30);
        make.width.mas_equalTo((CFWIDTH - 200) * 0.5);
        make.height.mas_equalTo(50);
    }];
    [self.CFRightTeamField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(32);
        make.top.equalTo(self.CFRightTeamLabel.mas_bottom).offset(15);
        make.width.mas_equalTo((CFWIDTH - 200) * 0.5);
        make.height.mas_equalTo(36);
        make.bottom.equalTo(self.contentView).offset(-30);
    }];
    [self.CFVSLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.contentView);
        make.centerY.equalTo(self.CFRightTeamField);
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(40);
    }];
    [self.CFLeftTeamLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.equalTo(self.contentView).offset(-32);
        make.top.equalTo(self.contentView).offset(30);
        make.width.mas_equalTo((CFWIDTH - 200) * 0.5);
        make.height.mas_equalTo(50);
    }];
    [self.CFLeftTeamField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.equalTo(self.contentView).offset(-32);
        make.top.equalTo(self.CFLeftTeamLabel.mas_bottom).offset(15);
        make.width.mas_equalTo((CFWIDTH - 200) * 0.5);
        make.height.mas_equalTo(36);
    }];
}
#pragma mark - UITextFieldDelegate
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    if (textField.tag == 99) {
        self.CFRightTeamName = textField.text;
    }else if (textField.tag == 100){
        self.CFLeftTeamName = textField.text;
    }
    self.CFModel.CFTeamRightName = self.CFRightTeamName;
    self.CFModel.CFTeamLeftName = self.CFLeftTeamName;
    return YES;
}
- (BOOL)textFieldShouldEndEditing:(UITextField *)textField{
    if (textField.tag == 99) {
        self.CFRightTeamName = textField.text;
    }else if (textField.tag == 100){
        self.CFLeftTeamName = textField.text;
    }
    self.CFModel.CFTeamRightName = self.CFRightTeamName;
    self.CFModel.CFTeamLeftName = self.CFLeftTeamName;
    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField.tag == 99) {
        self.CFRightTeamName = textField.text;
    }else if (textField.tag == 100){
        self.CFLeftTeamName = textField.text;
    }
    self.CFModel.CFTeamRightName = self.CFRightTeamName;
    self.CFModel.CFTeamLeftName = self.CFLeftTeamName;
}
#pragma mark - 属性懒加载
- (UILabel *)CFRightTeamLabel{
    if (!_CFRightTeamLabel) {
        _CFRightTeamLabel = [[UILabel alloc] init];
        _CFRightTeamLabel.textColor = [UIColor redColor];
        _CFRightTeamLabel.font = [UIFont systemFontOfSize:20];
        _CFRightTeamLabel.textAlignment = NSTextAlignmentCenter;
        _CFRightTeamLabel.text = NSLocalizedString(@"请输入队伍1名称", nil);
        _CFRightTeamLabel.numberOfLines = 0;
    }
    return _CFRightTeamLabel;
}
- (UITextField *)CFRightTeamField{
    if (!_CFRightTeamField) {
        _CFRightTeamField = [[UITextField alloc] init];
        _CFRightTeamField.tag = 99;
        _CFRightTeamField.delegate = self;
        _CFRightTeamField.textColor = [UIColor blackColor];
        _CFRightTeamField.font = [UIFont systemFontOfSize:15];
        _CFRightTeamField.layer.cornerRadius = 8.0f;
        _CFRightTeamField.layer.masksToBounds = YES;
        _CFRightTeamField.layer.borderColor = [UIColor systemGrayColor].CGColor;
        _CFRightTeamField.layer.borderWidth = 1.5f;
    }
    return _CFRightTeamField;
}
- (UILabel *)CFVSLabel{
    if (!_CFVSLabel) {
        _CFVSLabel = [[UILabel alloc] init];
        _CFVSLabel.textColor = CFH_Color(0, 204, 131, 1);
        _CFVSLabel.font = [UIFont boldSystemFontOfSize:30];
        _CFVSLabel.textAlignment = NSTextAlignmentCenter;
        _CFVSLabel.text = @"VS";
    }
    return _CFVSLabel;
}
- (UILabel *)CFLeftTeamLabel{
    if (!_CFLeftTeamLabel) {
        _CFLeftTeamLabel = [[UILabel alloc] init];
        _CFLeftTeamLabel.textColor = [UIColor redColor];
        _CFLeftTeamLabel.font = [UIFont systemFontOfSize:20];
        _CFLeftTeamLabel.textAlignment = NSTextAlignmentCenter;
        _CFLeftTeamLabel.text = NSLocalizedString(@"请输入队伍2名称", nil);
        _CFLeftTeamLabel.numberOfLines = 0;
    }
    return _CFLeftTeamLabel;
}
- (UITextField *)CFLeftTeamField{
    if (!_CFLeftTeamField) {
        _CFLeftTeamField = [[UITextField alloc] init];
        _CFLeftTeamField.tag = 100;
        _CFLeftTeamField.delegate = self;
        _CFLeftTeamField.textColor = [UIColor blackColor];
        _CFLeftTeamField.font = [UIFont systemFontOfSize:15];
        _CFLeftTeamField.layer.cornerRadius = 8.0f;
        _CFLeftTeamField.layer.masksToBounds = YES;
        _CFLeftTeamField.layer.borderColor = [UIColor systemGrayColor].CGColor;
        _CFLeftTeamField.layer.borderWidth = 1.5f;
    }
    return _CFLeftTeamField;
}
@end
