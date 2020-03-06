//
//  CABothTeamsTableViewCell.m
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import "CABothTeamsTableViewCell.h"
#import "CAScorecardModel.h"
#import "CAScorecardViewModel.h"

@interface CABothTeamsTableViewCell()<UITextFieldDelegate>
@property(nonatomic, strong)UILabel *CARightTeamLabel;//右边队伍名称标识
@property(nonatomic, strong)UITextField *CARightTeamField;//右边队伍
@property(nonatomic, copy)NSString *CARightTeamName;//右边队伍名称
@property(nonatomic, strong)UILabel *CAWhichGameLabel;//哪一局比赛
@property(nonatomic, strong)UILabel *CAVSLabel;//VS标识
@property(nonatomic, strong)UILabel *CALeftTeamLabel;//左边队伍名称标识
@property(nonatomic, strong)UITextField *CALeftTeamField;//左边队伍
@property(nonatomic, copy)NSString *CALeftTeamName;//左边队伍名称
@end
@implementation CABothTeamsTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = [UIColor systemGreenColor];
        [self CASetContentView];
    }
    return self;
}
#pragma mark - action
- (void)setCAModel:(CAScorecardViewModel *)CAModel{
    _CAModel = CAModel;
    self.CAWhichGameLabel.text = _CAModel.CAbureauString;
    self.CARightTeamField.text = [NSString stringWithFormat:@"   %@",_CAModel.CATeamRightName];
    self.CALeftTeamField.text = [NSString stringWithFormat:@"   %@",_CAModel.CATeamLeftName];
}
- (void)CASetContentView{
    [self.contentView addSubview:self.CARightTeamLabel];
    [self.contentView addSubview:self.CARightTeamField];
    [self.contentView addSubview:self.CAWhichGameLabel];
    [self.contentView addSubview:self.CAVSLabel];
    [self.contentView addSubview:self.CALeftTeamLabel];
    [self.contentView addSubview:self.CALeftTeamField];
    
    [self.CARightTeamLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(10);
        make.top.equalTo(self.contentView).offset(30);
        make.width.mas_equalTo((CAWIDTH - 178) * 0.5);
        make.height.mas_equalTo(75);
    }];
    [self.CARightTeamField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(32);
        make.top.equalTo(self.CARightTeamLabel.mas_bottom).offset(15);
        make.width.mas_equalTo((CAWIDTH - 200) * 0.5);
        make.height.mas_equalTo(36);
        make.bottom.equalTo(self.contentView).offset(-5);
    }];
    [self.CAWhichGameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.contentView);
        make.top.equalTo(self.CARightTeamLabel).offset(2);
        make.width.mas_equalTo(60);
        make.height.mas_equalTo(30);
    }];
    [self.CAVSLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.contentView);
        make.centerY.equalTo(self.CARightTeamField);
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(40);
    }];
    [self.CALeftTeamLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.equalTo(self.contentView).offset(-10);
        make.top.equalTo(self.contentView).offset(30);
        make.width.mas_equalTo((CAWIDTH - 178) * 0.5);
        make.height.mas_equalTo(75);
    }];
    [self.CALeftTeamField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.equalTo(self.contentView).offset(-32);
        make.top.equalTo(self.CALeftTeamLabel.mas_bottom).offset(15);
        make.width.mas_equalTo((CAWIDTH - 200) * 0.5);
        make.height.mas_equalTo(36);
    }];
}
#pragma mark - UITextFieldDelegate
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    if (textField.tag == 99) {
        self.CARightTeamName = textField.text;
    }else if (textField.tag == 100){
        self.CALeftTeamName = textField.text;
    }
    self.CAModel.CATeamRightName = self.CARightTeamName;
    self.CAModel.CATeamLeftName = self.CALeftTeamName;
    self.CAScoreModel.CATeamRightName = self.CARightTeamName;
    self.CAScoreModel.CATeamLeftName = self.CALeftTeamName;
    return YES;
}
- (BOOL)textFieldShouldEndEditing:(UITextField *)textField{
    if (textField.tag == 99) {
        self.CARightTeamName = textField.text;
    }else if (textField.tag == 100){
        self.CALeftTeamName = textField.text;
    }
    self.CAModel.CATeamRightName = self.CARightTeamName;
    self.CAModel.CATeamLeftName = self.CALeftTeamName;
    self.CAScoreModel.CATeamRightName = self.CARightTeamName;
    self.CAScoreModel.CATeamLeftName = self.CALeftTeamName;
    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField.tag == 99) {
        self.CARightTeamName = textField.text;
    }else if (textField.tag == 100){
        self.CALeftTeamName = textField.text;
    }
    self.CAModel.CATeamRightName = self.CARightTeamName;
    self.CAModel.CATeamLeftName = self.CALeftTeamName;
    self.CAScoreModel.CATeamRightName = self.CARightTeamName;
    self.CAScoreModel.CATeamLeftName = self.CALeftTeamName;
}
#pragma mark - 属性懒加载
- (UILabel *)CARightTeamLabel{
    if (!_CARightTeamLabel) {
        _CARightTeamLabel = [[UILabel alloc] init];
        _CARightTeamLabel.textColor = [UIColor systemRedColor];
        _CARightTeamLabel.font = [UIFont systemFontOfSize:20];
        _CARightTeamLabel.textAlignment = NSTextAlignmentCenter;
        _CARightTeamLabel.text = NSLocalizedString(@"请输入队伍1名称", nil);
        _CARightTeamLabel.numberOfLines = 0;
    }
    return _CARightTeamLabel;
}
- (UITextField *)CARightTeamField{
    if (!_CARightTeamField) {
        _CARightTeamField = [[UITextField alloc] init];
        _CARightTeamField.tag = 99;
        _CARightTeamField.delegate = self;
        _CARightTeamField.textColor = [UIColor blackColor];
        _CARightTeamField.font = [UIFont systemFontOfSize:15];
        _CARightTeamField.layer.cornerRadius = 6.0f;
        _CARightTeamField.layer.masksToBounds = YES;
        _CARightTeamField.layer.borderColor = [UIColor purpleColor].CGColor;
        _CARightTeamField.layer.borderWidth = 4.0f;
    }
    return _CARightTeamField;
}
- (UILabel *)CAWhichGameLabel{
    if (!_CAWhichGameLabel) {
        _CAWhichGameLabel = [[UILabel alloc] init];
        _CAWhichGameLabel.textColor = [UIColor systemPurpleColor];
        _CAWhichGameLabel.font = [UIFont boldSystemFontOfSize:22];
        _CAWhichGameLabel.textAlignment = NSTextAlignmentCenter;
        _CAWhichGameLabel.numberOfLines = 0;
    }
    return _CAWhichGameLabel;
}
- (UILabel *)CAVSLabel{
    if (!_CAVSLabel) {
        _CAVSLabel = [[UILabel alloc] init];
        _CAVSLabel.textColor = [UIColor redColor];
        _CAVSLabel.font = [UIFont boldSystemFontOfSize:30];
        _CAVSLabel.textAlignment = NSTextAlignmentCenter;
        _CAVSLabel.text = @"VS";
    }
    return _CAVSLabel;
}
- (UILabel *)CALeftTeamLabel{
    if (!_CALeftTeamLabel) {
        _CALeftTeamLabel = [[UILabel alloc] init];
        _CALeftTeamLabel.textColor = [UIColor systemRedColor];
        _CALeftTeamLabel.font = [UIFont systemFontOfSize:20];
        _CALeftTeamLabel.textAlignment = NSTextAlignmentCenter;
        _CALeftTeamLabel.text = NSLocalizedString(@"请输入队伍2名称", nil);
        _CALeftTeamLabel.numberOfLines = 0;
    }
    return _CALeftTeamLabel;
}
- (UITextField *)CALeftTeamField{
    if (!_CALeftTeamField) {
        _CALeftTeamField = [[UITextField alloc] init];
        _CALeftTeamField.tag = 100;
        _CALeftTeamField.delegate = self;
        _CALeftTeamField.textColor = [UIColor blackColor];
        _CALeftTeamField.font = [UIFont systemFontOfSize:15];
        _CALeftTeamField.layer.cornerRadius = 6.0f;
        _CALeftTeamField.layer.masksToBounds = YES;
        _CALeftTeamField.layer.borderColor = [UIColor purpleColor].CGColor;
        _CALeftTeamField.layer.borderWidth = 4.0f;
    }
    return _CALeftTeamField;
}
@end
