//
//  ABBothTeamsTableViewCell.m
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import "ABBothTeamsTableViewCell.h"
#import "ABScorecardModel.h"
#import "ABScorecardViewModel.h"

@interface ABBothTeamsTableViewCell()<UITextFieldDelegate>
@property(nonatomic, strong)UILabel *ABRightTeamLabel;//右边队伍名称标识
@property(nonatomic, strong)UITextField *ABRightTeamField;//右边队伍
@property(nonatomic, copy)NSString *ABRightTeamName;//右边队伍名称
@property(nonatomic, strong)UILabel *ABWhichGameLabel;//哪一局比赛
@property(nonatomic, strong)UILabel *ABVSLabel;//VS标识
@property(nonatomic, strong)UILabel *ABLeftTeamLabel;//左边队伍名称标识
@property(nonatomic, strong)UITextField *ABLeftTeamField;//左边队伍
@property(nonatomic, copy)NSString *ABLeftTeamName;//左边队伍名称
@end
@implementation ABBothTeamsTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = [UIColor cyanColor];
        [self ABSetContentView];
    }
    return self;
}
#pragma mark - action
- (void)setABModel:(ABScorecardViewModel *)ABModel{
    _ABModel = ABModel;
    self.ABWhichGameLabel.text = _ABModel.ABbureauString;
    self.ABRightTeamField.text = [NSString stringWithFormat:@"   %@",_ABModel.ABTeamRightName];
    self.ABLeftTeamField.text = [NSString stringWithFormat:@"   %@",_ABModel.ABTeamLeftName];
}
- (void)ABSetContentView{
    [self.contentView addSubview:self.ABRightTeamLabel];
    [self.contentView addSubview:self.ABRightTeamField];
    [self.contentView addSubview:self.ABWhichGameLabel];
    [self.contentView addSubview:self.ABVSLabel];
    [self.contentView addSubview:self.ABLeftTeamLabel];
    [self.contentView addSubview:self.ABLeftTeamField];
    
    [self.ABRightTeamLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(10);
        make.top.equalTo(self.contentView).offset(30);
        make.width.mas_equalTo((ABWIDTH - 178) * 0.5);
        make.height.mas_equalTo(75);
    }];
    [self.ABRightTeamField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(32);
        make.top.equalTo(self.ABRightTeamLabel.mas_bottom).offset(15);
        make.width.mas_equalTo((ABWIDTH - 200) * 0.5);
        make.height.mas_equalTo(36);
        make.bottom.equalTo(self.contentView).offset(-5);
    }];
    [self.ABWhichGameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.contentView);
        make.top.equalTo(self.ABRightTeamLabel).offset(2);
        make.width.mas_equalTo(60);
        make.height.mas_equalTo(30);
    }];
    [self.ABVSLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.contentView);
        make.centerY.equalTo(self.ABRightTeamField);
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(40);
    }];
    [self.ABLeftTeamLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.equalTo(self.contentView).offset(-10);
        make.top.equalTo(self.contentView).offset(30);
        make.width.mas_equalTo((ABWIDTH - 178) * 0.5);
        make.height.mas_equalTo(75);
    }];
    [self.ABLeftTeamField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.equalTo(self.contentView).offset(-32);
        make.top.equalTo(self.ABLeftTeamLabel.mas_bottom).offset(15);
        make.width.mas_equalTo((ABWIDTH - 200) * 0.5);
        make.height.mas_equalTo(36);
    }];
}
#pragma mark - UITextFieldDelegate
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    if (textField.tag == 99) {
        self.ABRightTeamName = textField.text;
    }else if (textField.tag == 100){
        self.ABLeftTeamName = textField.text;
    }
    self.ABModel.ABTeamRightName = self.ABRightTeamName;
    self.ABModel.ABTeamLeftName = self.ABLeftTeamName;
    self.ABScoreModel.ABTeamRightName = self.ABRightTeamName;
    self.ABScoreModel.ABTeamLeftName = self.ABLeftTeamName;
    return YES;
}
- (BOOL)textFieldShouldEndEditing:(UITextField *)textField{
    if (textField.tag == 99) {
        self.ABRightTeamName = textField.text;
    }else if (textField.tag == 100){
        self.ABLeftTeamName = textField.text;
    }
    self.ABModel.ABTeamRightName = self.ABRightTeamName;
    self.ABModel.ABTeamLeftName = self.ABLeftTeamName;
    self.ABScoreModel.ABTeamRightName = self.ABRightTeamName;
    self.ABScoreModel.ABTeamLeftName = self.ABLeftTeamName;
    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField.tag == 99) {
        self.ABRightTeamName = textField.text;
    }else if (textField.tag == 100){
        self.ABLeftTeamName = textField.text;
    }
    self.ABModel.ABTeamRightName = self.ABRightTeamName;
    self.ABModel.ABTeamLeftName = self.ABLeftTeamName;
    self.ABScoreModel.ABTeamRightName = self.ABRightTeamName;
    self.ABScoreModel.ABTeamLeftName = self.ABLeftTeamName;
}
#pragma mark - 属性懒加载
- (UILabel *)ABRightTeamLabel{
    if (!_ABRightTeamLabel) {
        _ABRightTeamLabel = [[UILabel alloc] init];
        _ABRightTeamLabel.textColor = [UIColor redColor];
        _ABRightTeamLabel.font = [UIFont systemFontOfSize:20];
        _ABRightTeamLabel.textAlignment = NSTextAlignmentCenter;
        _ABRightTeamLabel.text = NSLocalizedString(@"请输入队伍1名称", nil);
        _ABRightTeamLabel.numberOfLines = 0;
    }
    return _ABRightTeamLabel;
}
- (UITextField *)ABRightTeamField{
    if (!_ABRightTeamField) {
        _ABRightTeamField = [[UITextField alloc] init];
        _ABRightTeamField.tag = 99;
        _ABRightTeamField.delegate = self;
        _ABRightTeamField.textColor = [UIColor blackColor];
        _ABRightTeamField.font = [UIFont systemFontOfSize:15];
        _ABRightTeamField.layer.cornerRadius = 6.0f;
        _ABRightTeamField.layer.masksToBounds = YES;
        _ABRightTeamField.layer.borderColor = [UIColor blueColor].CGColor;
        _ABRightTeamField.layer.borderWidth = 2.0f;
    }
    return _ABRightTeamField;
}
- (UILabel *)ABWhichGameLabel{
    if (!_ABWhichGameLabel) {
        _ABWhichGameLabel = [[UILabel alloc] init];
        _ABWhichGameLabel.textColor = [UIColor systemPurpleColor];
        _ABWhichGameLabel.font = [UIFont boldSystemFontOfSize:22];
        _ABWhichGameLabel.textAlignment = NSTextAlignmentCenter;
        _ABWhichGameLabel.numberOfLines = 0;
    }
    return _ABWhichGameLabel;
}
- (UILabel *)ABVSLabel{
    if (!_ABVSLabel) {
        _ABVSLabel = [[UILabel alloc] init];
        _ABVSLabel.textColor = [UIColor systemRedColor];
        _ABVSLabel.font = [UIFont boldSystemFontOfSize:30];
        _ABVSLabel.textAlignment = NSTextAlignmentCenter;
        _ABVSLabel.text = @"VS";
    }
    return _ABVSLabel;
}
- (UILabel *)ABLeftTeamLabel{
    if (!_ABLeftTeamLabel) {
        _ABLeftTeamLabel = [[UILabel alloc] init];
        _ABLeftTeamLabel.textColor = [UIColor redColor];
        _ABLeftTeamLabel.font = [UIFont systemFontOfSize:20];
        _ABLeftTeamLabel.textAlignment = NSTextAlignmentCenter;
        _ABLeftTeamLabel.text = NSLocalizedString(@"请输入队伍2名称", nil);
        _ABLeftTeamLabel.numberOfLines = 0;
    }
    return _ABLeftTeamLabel;
}
- (UITextField *)ABLeftTeamField{
    if (!_ABLeftTeamField) {
        _ABLeftTeamField = [[UITextField alloc] init];
        _ABLeftTeamField.tag = 100;
        _ABLeftTeamField.delegate = self;
        _ABLeftTeamField.textColor = [UIColor blackColor];
        _ABLeftTeamField.font = [UIFont systemFontOfSize:15];
        _ABLeftTeamField.layer.cornerRadius = 6.0f;
        _ABLeftTeamField.layer.masksToBounds = YES;
        _ABLeftTeamField.layer.borderColor = [UIColor blueColor].CGColor;
        _ABLeftTeamField.layer.borderWidth = 2.0f;
    }
    return _ABLeftTeamField;
}
@end
