//
//  GABothTeamsTableViewCell.m
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import "GABothTeamsTableViewCell.h"
#import "GAScorecardViewModel.h"

@interface GABothTeamsTableViewCell()<UITextFieldDelegate>
@property(nonatomic, strong)UILabel *GARightTeamLabel;//右边队伍名称标识
@property(nonatomic, strong)UITextField *GARightTeamField;//右边队伍
@property(nonatomic, copy)NSString *GARightTeamName;//右边队伍名称
@property(nonatomic, strong)UILabel *GAVSLabel;//VS标识
@property(nonatomic, strong)UILabel *GALeftTeamLabel;//左边队伍名称标识
@property(nonatomic, strong)UITextField *GALeftTeamField;//左边队伍
@property(nonatomic, copy)NSString *GALeftTeamName;//左边队伍名称
@end
@implementation GABothTeamsTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self GASetContentView];
    }
    return self;
}
#pragma mark - action
- (void)setGAModel:(GAScorecardViewModel *)GAModel{
    _GAModel = GAModel;
    self.GARightTeamField.text = _GAModel.GATeamRightName;
    self.GALeftTeamField.text = _GAModel.GATeamLeftName;
}
- (void)GASetContentView{
    self.contentView.backgroundColor = [UIColor greenColor];
    [self.contentView addSubview:self.GARightTeamLabel];
    [self.contentView addSubview:self.GARightTeamField];
    [self.contentView addSubview:self.GAVSLabel];
    [self.contentView addSubview:self.GALeftTeamLabel];
    [self.contentView addSubview:self.GALeftTeamField];
    
    [self.GARightTeamLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(32);
        make.top.equalTo(self.contentView).offset(30);
        make.width.mas_equalTo((GAWIDTH - 180) * 0.5);
        make.height.mas_equalTo(50);
    }];
    [self.GARightTeamField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(32);
        make.top.equalTo(self.GARightTeamLabel.mas_bottom).offset(15);
        make.width.mas_equalTo((GAWIDTH - 180) * 0.5);
        make.height.mas_equalTo(36);
        make.bottom.equalTo(self.contentView).offset(-30);
    }];
    [self.GAVSLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.contentView);
        make.centerY.equalTo(self.GARightTeamField);
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(40);
    }];
    [self.GALeftTeamLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.equalTo(self.contentView).offset(-32);
        make.top.equalTo(self.contentView).offset(30);
        make.width.mas_equalTo((GAWIDTH - 180) * 0.5);
        make.height.mas_equalTo(50);
    }];
    [self.GALeftTeamField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.equalTo(self.contentView).offset(-32);
        make.top.equalTo(self.GALeftTeamLabel.mas_bottom).offset(15);
        make.width.mas_equalTo((GAWIDTH - 180) * 0.5);
        make.height.mas_equalTo(36);
    }];
}
#pragma mark - UITextFieldDelegate
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    if (textField.tag == 99) {
        self.GARightTeamName = textField.text;
    }else if (textField.tag == 100){
        self.GALeftTeamName = textField.text;
    }
    self.GAModel.GATeamRightName = self.GARightTeamName;
    self.GAModel.GATeamLeftName = self.GALeftTeamName;
    return YES;
}
- (BOOL)textFieldShouldEndEditing:(UITextField *)textField{
    if (textField.tag == 99) {
        self.GARightTeamName = textField.text;
    }else if (textField.tag == 100){
        self.GALeftTeamName = textField.text;
    }
    self.GAModel.GATeamRightName = self.GARightTeamName;
    self.GAModel.GATeamLeftName = self.GALeftTeamName;
    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField.tag == 99) {
        self.GARightTeamName = textField.text;
    }else if (textField.tag == 100){
        self.GALeftTeamName = textField.text;
    }
    self.GAModel.GATeamRightName = self.GARightTeamName;
    self.GAModel.GATeamLeftName = self.GALeftTeamName;
}
#pragma mark - 属性懒加载
- (UILabel *)GARightTeamLabel{
    if (!_GARightTeamLabel) {
        _GARightTeamLabel = [[UILabel alloc] init];
        _GARightTeamLabel.textColor = [UIColor redColor];
        _GARightTeamLabel.font = [UIFont systemFontOfSize:15];
        _GARightTeamLabel.textAlignment = NSTextAlignmentCenter;
        _GARightTeamLabel.text = NSLocalizedString(@"请输入队伍1名称", nil);
        _GARightTeamLabel.numberOfLines = 0;
    }
    return _GARightTeamLabel;
}
- (UITextField *)GARightTeamField{
    if (!_GARightTeamField) {
        _GARightTeamField = [[UITextField alloc] init];
        _GARightTeamField.tag = 99;
        _GARightTeamField.delegate = self;
        _GARightTeamField.textColor = [UIColor blackColor];
        _GARightTeamField.font = [UIFont systemFontOfSize:22];
        _GARightTeamField.layer.cornerRadius = 4.0f;
        _GARightTeamField.layer.masksToBounds = YES;
        _GARightTeamField.layer.borderColor = [UIColor redColor].CGColor;
        _GARightTeamField.layer.borderWidth = 2.0f;
    }
    return _GARightTeamField;
}
- (UILabel *)GAVSLabel{
    if (!_GAVSLabel) {
        _GAVSLabel = [[UILabel alloc] init];
        _GAVSLabel.textColor = [UIColor redColor];
        _GAVSLabel.font = [UIFont boldSystemFontOfSize:30];
        _GAVSLabel.textAlignment = NSTextAlignmentCenter;
        _GAVSLabel.text = @"VS";
    }
    return _GAVSLabel;
}
- (UILabel *)GALeftTeamLabel{
    if (!_GALeftTeamLabel) {
        _GALeftTeamLabel = [[UILabel alloc] init];
        _GALeftTeamLabel.textColor = [UIColor redColor];
        _GALeftTeamLabel.font = [UIFont systemFontOfSize:15];
        _GALeftTeamLabel.textAlignment = NSTextAlignmentCenter;
        _GALeftTeamLabel.text = NSLocalizedString(@"请输入队伍2名称", nil);
        _GALeftTeamLabel.numberOfLines = 0;
    }
    return _GALeftTeamLabel;
}
- (UITextField *)GALeftTeamField{
    if (!_GALeftTeamField) {
        _GALeftTeamField = [[UITextField alloc] init];
        _GALeftTeamField.tag = 100;
        _GALeftTeamField.delegate = self;
        _GALeftTeamField.textColor = [UIColor blackColor];
        _GALeftTeamField.font = [UIFont systemFontOfSize:22];
        _GALeftTeamField.layer.cornerRadius = 4.0f;
        _GALeftTeamField.layer.masksToBounds = YES;
        _GALeftTeamField.layer.borderColor = [UIColor redColor].CGColor;
        _GALeftTeamField.layer.borderWidth = 2.0f;
    }
    return _GALeftTeamField;
}
@end
