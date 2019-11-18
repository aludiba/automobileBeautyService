//
//  BTBothTeamsTableViewCell.m
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import "BTBothTeamsTableViewCell.h"
#import "BTScorecardViewModel.h"

@interface BTBothTeamsTableViewCell()<UITextFieldDelegate>
@property(nonatomic, strong)UILabel *BTRightTeamLabel;//右边队伍名称标识
@property(nonatomic, strong)UITextField *BTRightTeamField;//右边队伍
@property(nonatomic, copy)NSString *BTRightTeamName;//右边队伍名称
@property(nonatomic, strong)UILabel *BTVSLabel;//VS标识
@property(nonatomic, strong)UILabel *BTLeftTeamLabel;//左边队伍名称标识
@property(nonatomic, strong)UITextField *BTLeftTeamField;//左边队伍
@property(nonatomic, copy)NSString *BTLeftTeamName;//左边队伍名称
@end
@implementation BTBothTeamsTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = [UIColor cyanColor];
        [self BTSetContentView];
    }
    return self;
}
#pragma mark - action
- (void)setBTModel:(BTScorecardViewModel *)BTModel{
    _BTModel = BTModel;
    self.BTRightTeamField.text = _BTModel.BTTeamRightName;
    self.BTLeftTeamField.text = _BTModel.BTTeamLeftName;
}
- (void)BTSetContentView{
    [self.contentView addSubview:self.BTRightTeamLabel];
    [self.contentView addSubview:self.BTRightTeamField];
    [self.contentView addSubview:self.BTVSLabel];
    [self.contentView addSubview:self.BTLeftTeamLabel];
    [self.contentView addSubview:self.BTLeftTeamField];
    
    [self.BTRightTeamLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(32);
        make.top.equalTo(self.contentView).offset(30);
        make.width.mas_equalTo((BTWIDTH - 200) * 0.5);
        make.height.mas_equalTo(50);
    }];
    [self.BTRightTeamField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(32);
        make.top.equalTo(self.BTRightTeamLabel.mas_bottom).offset(15);
        make.width.mas_equalTo((BTWIDTH - 200) * 0.5);
        make.height.mas_equalTo(36);
        make.bottom.equalTo(self.contentView).offset(-15);
    }];
    [self.BTVSLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.contentView);
        make.centerY.equalTo(self.BTRightTeamField);
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(40);
    }];
    [self.BTLeftTeamLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.equalTo(self.contentView).offset(-32);
        make.top.equalTo(self.contentView).offset(30);
        make.width.mas_equalTo((BTWIDTH - 200) * 0.5);
        make.height.mas_equalTo(50);
    }];
    [self.BTLeftTeamField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.equalTo(self.contentView).offset(-32);
        make.top.equalTo(self.BTLeftTeamLabel.mas_bottom).offset(15);
        make.width.mas_equalTo((BTWIDTH - 200) * 0.5);
        make.height.mas_equalTo(36);
    }];
}
#pragma mark - UITextFieldDelegate
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    if (textField.tag == 99) {
        self.BTRightTeamName = textField.text;
    }else if (textField.tag == 100){
        self.BTLeftTeamName = textField.text;
    }
    self.BTModel.BTTeamRightName = self.BTRightTeamName;
    self.BTModel.BTTeamLeftName = self.BTLeftTeamName;
    return YES;
}
- (BOOL)textFieldShouldEndEditing:(UITextField *)textField{
    if (textField.tag == 99) {
        self.BTRightTeamName = textField.text;
    }else if (textField.tag == 100){
        self.BTLeftTeamName = textField.text;
    }
    self.BTModel.BTTeamRightName = self.BTRightTeamName;
    self.BTModel.BTTeamLeftName = self.BTLeftTeamName;
    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField.tag == 99) {
        self.BTRightTeamName = textField.text;
    }else if (textField.tag == 100){
        self.BTLeftTeamName = textField.text;
    }
    self.BTModel.BTTeamRightName = self.BTRightTeamName;
    self.BTModel.BTTeamLeftName = self.BTLeftTeamName;
}
#pragma mark - 属性懒加载
- (UILabel *)BTRightTeamLabel{
    if (!_BTRightTeamLabel) {
        _BTRightTeamLabel = [[UILabel alloc] init];
        _BTRightTeamLabel.textColor = [UIColor redColor];
        _BTRightTeamLabel.font = [UIFont systemFontOfSize:20];
        _BTRightTeamLabel.textAlignment = NSTextAlignmentCenter;
        _BTRightTeamLabel.text = NSLocalizedString(@"请输入队伍1名称", nil);
        _BTRightTeamLabel.numberOfLines = 0;
    }
    return _BTRightTeamLabel;
}
- (UITextField *)BTRightTeamField{
    if (!_BTRightTeamField) {
        _BTRightTeamField = [[UITextField alloc] init];
        _BTRightTeamField.tag = 99;
        _BTRightTeamField.delegate = self;
        _BTRightTeamField.textColor = [UIColor blackColor];
        _BTRightTeamField.font = [UIFont systemFontOfSize:15];
        _BTRightTeamField.layer.cornerRadius = 8.0f;
        _BTRightTeamField.layer.masksToBounds = YES;
        _BTRightTeamField.layer.borderColor = [UIColor systemRedColor].CGColor;
        _BTRightTeamField.layer.borderWidth = 2.0f;
    }
    return _BTRightTeamField;
}
- (UILabel *)BTVSLabel{
    if (!_BTVSLabel) {
        _BTVSLabel = [[UILabel alloc] init];
        _BTVSLabel.textColor = [UIColor systemRedColor];
        _BTVSLabel.font = [UIFont boldSystemFontOfSize:30];
        _BTVSLabel.textAlignment = NSTextAlignmentCenter;
        _BTVSLabel.text = @"VS";
    }
    return _BTVSLabel;
}
- (UILabel *)BTLeftTeamLabel{
    if (!_BTLeftTeamLabel) {
        _BTLeftTeamLabel = [[UILabel alloc] init];
        _BTLeftTeamLabel.textColor = [UIColor redColor];
        _BTLeftTeamLabel.font = [UIFont systemFontOfSize:20];
        _BTLeftTeamLabel.textAlignment = NSTextAlignmentCenter;
        _BTLeftTeamLabel.text = NSLocalizedString(@"请输入队伍2名称", nil);
        _BTLeftTeamLabel.numberOfLines = 0;
    }
    return _BTLeftTeamLabel;
}
- (UITextField *)BTLeftTeamField{
    if (!_BTLeftTeamField) {
        _BTLeftTeamField = [[UITextField alloc] init];
        _BTLeftTeamField.tag = 100;
        _BTLeftTeamField.delegate = self;
        _BTLeftTeamField.textColor = [UIColor blackColor];
        _BTLeftTeamField.font = [UIFont systemFontOfSize:15];
        _BTLeftTeamField.layer.cornerRadius = 8.0f;
        _BTLeftTeamField.layer.masksToBounds = YES;
        _BTLeftTeamField.layer.borderColor = [UIColor systemRedColor].CGColor;
        _BTLeftTeamField.layer.borderWidth = 2.0f;
    }
    return _BTLeftTeamField;
}
@end
