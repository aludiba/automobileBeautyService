//
//  ZLBothTeamsTableViewCell.m
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import "ZLBothTeamsTableViewCell.h"
#import "ZLScorecardViewModel.h"

@interface ZLBothTeamsTableViewCell()<UITextFieldDelegate>
@property(nonatomic, strong)UILabel *ZLRightTeamLabel;//右边队伍名称标识
@property(nonatomic, strong)UITextField *ZLRightTeamField;//右边队伍
@property(nonatomic, copy)NSString *ZLRightTeamName;//右边队伍名称
@property(nonatomic, strong)UILabel *ZLVSLabel;//VS标识
@property(nonatomic, strong)UILabel *ZLLeftTeamLabel;//左边队伍名称标识
@property(nonatomic, strong)UITextField *ZLLeftTeamField;//左边队伍
@property(nonatomic, copy)NSString *ZLLeftTeamName;//左边队伍名称
@end
@implementation ZLBothTeamsTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self ZLSetContentView];
    }
    return self;
}
#pragma mark - action
- (void)setZLModel:(ZLScorecardViewModel *)ZLModel{
    _ZLModel = ZLModel;
    self.ZLRightTeamField.text = _ZLModel.ZLTeamRightName;
    self.ZLLeftTeamField.text = _ZLModel.ZLTeamLeftName;
}
- (void)ZLSetContentView{
    [self.contentView addSubview:self.ZLRightTeamLabel];
    [self.contentView addSubview:self.ZLRightTeamField];
    [self.contentView addSubview:self.ZLVSLabel];
    [self.contentView addSubview:self.ZLLeftTeamLabel];
    [self.contentView addSubview:self.ZLLeftTeamField];
    
    [self.ZLRightTeamLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(32);
        make.top.equalTo(self.contentView).offset(30);
        make.width.mas_equalTo((ZLWIDTH - 200) * 0.5);
        make.height.mas_equalTo(50);
    }];
    [self.ZLRightTeamField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(32);
        make.top.equalTo(self.ZLRightTeamLabel.mas_bottom).offset(15);
        make.width.mas_equalTo((ZLWIDTH - 200) * 0.5);
        make.height.mas_equalTo(36);
        make.bottom.equalTo(self.contentView).offset(-30);
    }];
    [self.ZLVSLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.contentView);
        make.centerY.equalTo(self.ZLRightTeamField);
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(40);
    }];
    [self.ZLLeftTeamLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.equalTo(self.contentView).offset(-32);
        make.top.equalTo(self.contentView).offset(30);
        make.width.mas_equalTo((ZLWIDTH - 200) * 0.5);
        make.height.mas_equalTo(50);
    }];
    [self.ZLLeftTeamField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.equalTo(self.contentView).offset(-32);
        make.top.equalTo(self.ZLLeftTeamLabel.mas_bottom).offset(15);
        make.width.mas_equalTo((ZLWIDTH - 200) * 0.5);
        make.height.mas_equalTo(36);
    }];
}
#pragma mark - UITextFieldDelegate
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    if (textField.tag == 99) {
        self.ZLRightTeamName = textField.text;
    }else if (textField.tag == 100){
        self.ZLLeftTeamName = textField.text;
    }
    self.ZLModel.ZLTeamRightName = self.ZLRightTeamName;
    self.ZLModel.ZLTeamLeftName = self.ZLLeftTeamName;
    return YES;
}
- (BOOL)textFieldShouldEndEditing:(UITextField *)textField{
    if (textField.tag == 99) {
        self.ZLRightTeamName = textField.text;
    }else if (textField.tag == 100){
        self.ZLLeftTeamName = textField.text;
    }
    self.ZLModel.ZLTeamRightName = self.ZLRightTeamName;
    self.ZLModel.ZLTeamLeftName = self.ZLLeftTeamName;
    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField.tag == 99) {
        self.ZLRightTeamName = textField.text;
    }else if (textField.tag == 100){
        self.ZLLeftTeamName = textField.text;
    }
    self.ZLModel.ZLTeamRightName = self.ZLRightTeamName;
    self.ZLModel.ZLTeamLeftName = self.ZLLeftTeamName;
}
#pragma mark - 属性懒加载
- (UILabel *)ZLRightTeamLabel{
    if (!_ZLRightTeamLabel) {
        _ZLRightTeamLabel = [[UILabel alloc] init];
        _ZLRightTeamLabel.textColor = [UIColor systemGreenColor];
        _ZLRightTeamLabel.font = [UIFont systemFontOfSize:15];
        _ZLRightTeamLabel.textAlignment = NSTextAlignmentCenter;
        _ZLRightTeamLabel.text = NSLocalizedString(@"请输入队伍1名称", nil);
        _ZLRightTeamLabel.numberOfLines = 0;
    }
    return _ZLRightTeamLabel;
}
- (UITextField *)ZLRightTeamField{
    if (!_ZLRightTeamField) {
        _ZLRightTeamField = [[UITextField alloc] init];
        _ZLRightTeamField.tag = 99;
        _ZLRightTeamField.delegate = self;
        _ZLRightTeamField.textColor = [UIColor blackColor];
        _ZLRightTeamField.font = [UIFont systemFontOfSize:22];
        _ZLRightTeamField.layer.cornerRadius = 4.0f;
        _ZLRightTeamField.layer.masksToBounds = YES;
        _ZLRightTeamField.layer.borderColor = [UIColor systemGreenColor].CGColor;
        _ZLRightTeamField.layer.borderWidth = 2.0f;
    }
    return _ZLRightTeamField;
}
- (UILabel *)ZLVSLabel{
    if (!_ZLVSLabel) {
        _ZLVSLabel = [[UILabel alloc] init];
        _ZLVSLabel.textColor = [UIColor systemGreenColor];
        _ZLVSLabel.font = [UIFont boldSystemFontOfSize:30];
        _ZLVSLabel.textAlignment = NSTextAlignmentCenter;
        _ZLVSLabel.text = @"VS";
    }
    return _ZLVSLabel;
}
- (UILabel *)ZLLeftTeamLabel{
    if (!_ZLLeftTeamLabel) {
        _ZLLeftTeamLabel = [[UILabel alloc] init];
        _ZLLeftTeamLabel.textColor = [UIColor systemGreenColor];
        _ZLLeftTeamLabel.font = [UIFont systemFontOfSize:15];
        _ZLLeftTeamLabel.textAlignment = NSTextAlignmentCenter;
        _ZLLeftTeamLabel.text = NSLocalizedString(@"请输入队伍2名称", nil);
        _ZLLeftTeamLabel.numberOfLines = 0;
    }
    return _ZLLeftTeamLabel;
}
- (UITextField *)ZLLeftTeamField{
    if (!_ZLLeftTeamField) {
        _ZLLeftTeamField = [[UITextField alloc] init];
        _ZLLeftTeamField.tag = 100;
        _ZLLeftTeamField.delegate = self;
        _ZLLeftTeamField.textColor = [UIColor blackColor];
        _ZLLeftTeamField.font = [UIFont systemFontOfSize:22];
        _ZLLeftTeamField.layer.cornerRadius = 4.0f;
        _ZLLeftTeamField.layer.masksToBounds = YES;
        _ZLLeftTeamField.layer.borderColor = [UIColor systemGreenColor].CGColor;
        _ZLLeftTeamField.layer.borderWidth = 2.0f;
    }
    return _ZLLeftTeamField;
}
@end
