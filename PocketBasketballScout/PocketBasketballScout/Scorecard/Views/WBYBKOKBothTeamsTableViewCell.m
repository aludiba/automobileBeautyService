//
//  WBYBKOKBothTeamsTableViewCell.m
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import "WBYBKOKBothTeamsTableViewCell.h"
#import "WBYBKOKScorecardViewModel.h"

@interface WBYBKOKBothTeamsTableViewCell()<UITextFieldDelegate>
@property(nonatomic, strong)UILabel *WBYBKOKRightTeamLabel;//右边队伍名称标识
@property(nonatomic, strong)UITextField *WBYBKOKRightTeamField;//右边队伍
@property(nonatomic, copy)NSString *WBYBKOKRightTeamName;//右边队伍名称
@property(nonatomic, strong)UILabel *WBYBKOKVSLabel;//VS标识
@property(nonatomic, strong)UILabel *WBYBKOKLeftTeamLabel;//左边队伍名称标识
@property(nonatomic, strong)UITextField *WBYBKOKLeftTeamField;//左边队伍
@property(nonatomic, copy)NSString *WBYBKOKLeftTeamName;//左边队伍名称
@end
@implementation WBYBKOKBothTeamsTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = [UIColor whiteColor];
        [self WBYBKOKSetContentView];
    }
    return self;
}
#pragma mark - action
- (void)setWBYBKOKModel:(WBYBKOKScorecardViewModel *)WBYBKOKModel{
    _WBYBKOKModel = WBYBKOKModel;
    self.WBYBKOKRightTeamField.text = _WBYBKOKModel.WBYBKOKTeamRightName;
    self.WBYBKOKLeftTeamField.text = _WBYBKOKModel.WBYBKOKTeamLeftName;
}
- (void)WBYBKOKSetContentView{
    [self.contentView addSubview:self.WBYBKOKRightTeamLabel];
    [self.contentView addSubview:self.WBYBKOKRightTeamField];
    [self.contentView addSubview:self.WBYBKOKVSLabel];
    [self.contentView addSubview:self.WBYBKOKLeftTeamLabel];
    [self.contentView addSubview:self.WBYBKOKLeftTeamField];
    
    [self.WBYBKOKRightTeamLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(32);
        make.top.equalTo(self.contentView).offset(30);
        make.width.mas_equalTo((WBYBKOKWIDTH - 200) * 0.5);
        make.height.mas_equalTo(50);
    }];
    [self.WBYBKOKRightTeamField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(32);
        make.top.equalTo(self.WBYBKOKRightTeamLabel.mas_bottom).offset(15);
        make.width.mas_equalTo((WBYBKOKWIDTH - 200) * 0.5);
        make.height.mas_equalTo(36);
        make.bottom.equalTo(self.contentView).offset(-15);
    }];
    [self.WBYBKOKVSLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.contentView);
        make.centerY.equalTo(self.WBYBKOKRightTeamField);
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(40);
    }];
    [self.WBYBKOKLeftTeamLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.equalTo(self.contentView).offset(-32);
        make.top.equalTo(self.contentView).offset(30);
        make.width.mas_equalTo((WBYBKOKWIDTH - 200) * 0.5);
        make.height.mas_equalTo(50);
    }];
    [self.WBYBKOKLeftTeamField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.equalTo(self.contentView).offset(-32);
        make.top.equalTo(self.WBYBKOKLeftTeamLabel.mas_bottom).offset(15);
        make.width.mas_equalTo((WBYBKOKWIDTH - 200) * 0.5);
        make.height.mas_equalTo(36);
    }];
}
#pragma mark - UITextFieldDelegate
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    if (textField.tag == 99) {
        self.WBYBKOKRightTeamName = textField.text;
    }else if (textField.tag == 100){
        self.WBYBKOKLeftTeamName = textField.text;
    }
    self.WBYBKOKModel.WBYBKOKTeamRightName = self.WBYBKOKRightTeamName;
    self.WBYBKOKModel.WBYBKOKTeamLeftName = self.WBYBKOKLeftTeamName;
    return YES;
}
- (BOOL)textFieldShouldEndEditing:(UITextField *)textField{
    if (textField.tag == 99) {
        self.WBYBKOKRightTeamName = textField.text;
    }else if (textField.tag == 100){
        self.WBYBKOKLeftTeamName = textField.text;
    }
    self.WBYBKOKModel.WBYBKOKTeamRightName = self.WBYBKOKRightTeamName;
    self.WBYBKOKModel.WBYBKOKTeamLeftName = self.WBYBKOKLeftTeamName;
    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField.tag == 99) {
        self.WBYBKOKRightTeamName = textField.text;
    }else if (textField.tag == 100){
        self.WBYBKOKLeftTeamName = textField.text;
    }
    self.WBYBKOKModel.WBYBKOKTeamRightName = self.WBYBKOKRightTeamName;
    self.WBYBKOKModel.WBYBKOKTeamLeftName = self.WBYBKOKLeftTeamName;
}
#pragma mark - 属性懒加载
- (UILabel *)WBYBKOKRightTeamLabel{
    if (!_WBYBKOKRightTeamLabel) {
        _WBYBKOKRightTeamLabel = [[UILabel alloc] init];
        _WBYBKOKRightTeamLabel.textColor = [UIColor redColor];
        _WBYBKOKRightTeamLabel.font = [UIFont systemFontOfSize:15];
        _WBYBKOKRightTeamLabel.textAlignment = NSTextAlignmentCenter;
        _WBYBKOKRightTeamLabel.text = NSLocalizedString(@"请输入队伍1名称", nil);
        _WBYBKOKRightTeamLabel.numberOfLines = 0;
    }
    return _WBYBKOKRightTeamLabel;
}
- (UITextField *)WBYBKOKRightTeamField{
    if (!_WBYBKOKRightTeamField) {
        _WBYBKOKRightTeamField = [[UITextField alloc] init];
        _WBYBKOKRightTeamField.tag = 99;
        _WBYBKOKRightTeamField.delegate = self;
        _WBYBKOKRightTeamField.textColor = [UIColor blackColor];
        _WBYBKOKRightTeamField.font = [UIFont systemFontOfSize:15];
        _WBYBKOKRightTeamField.layer.cornerRadius = 4.0f;
        _WBYBKOKRightTeamField.layer.masksToBounds = YES;
        _WBYBKOKRightTeamField.layer.borderColor = [UIColor systemPurpleColor].CGColor;
        _WBYBKOKRightTeamField.layer.borderWidth = 1.5f;
    }
    return _WBYBKOKRightTeamField;
}
- (UILabel *)WBYBKOKVSLabel{
    if (!_WBYBKOKVSLabel) {
        _WBYBKOKVSLabel = [[UILabel alloc] init];
        _WBYBKOKVSLabel.textColor = [UIColor systemRedColor];
        _WBYBKOKVSLabel.font = [UIFont boldSystemFontOfSize:30];
        _WBYBKOKVSLabel.textAlignment = NSTextAlignmentCenter;
        _WBYBKOKVSLabel.text = @"VS";
    }
    return _WBYBKOKVSLabel;
}
- (UILabel *)WBYBKOKLeftTeamLabel{
    if (!_WBYBKOKLeftTeamLabel) {
        _WBYBKOKLeftTeamLabel = [[UILabel alloc] init];
        _WBYBKOKLeftTeamLabel.textColor = [UIColor redColor];
        _WBYBKOKLeftTeamLabel.font = [UIFont systemFontOfSize:15];
        _WBYBKOKLeftTeamLabel.textAlignment = NSTextAlignmentCenter;
        _WBYBKOKLeftTeamLabel.text = NSLocalizedString(@"请输入队伍2名称", nil);
        _WBYBKOKLeftTeamLabel.numberOfLines = 0;
    }
    return _WBYBKOKLeftTeamLabel;
}
- (UITextField *)WBYBKOKLeftTeamField{
    if (!_WBYBKOKLeftTeamField) {
        _WBYBKOKLeftTeamField = [[UITextField alloc] init];
        _WBYBKOKLeftTeamField.tag = 100;
        _WBYBKOKLeftTeamField.delegate = self;
        _WBYBKOKLeftTeamField.textColor = [UIColor blackColor];
        _WBYBKOKLeftTeamField.font = [UIFont systemFontOfSize:15];
        _WBYBKOKLeftTeamField.layer.cornerRadius = 4.0f;
        _WBYBKOKLeftTeamField.layer.masksToBounds = YES;
        _WBYBKOKLeftTeamField.layer.borderColor = [UIColor systemPurpleColor].CGColor;
        _WBYBKOKLeftTeamField.layer.borderWidth = 1.5f;
    }
    return _WBYBKOKLeftTeamField;
}
@end
