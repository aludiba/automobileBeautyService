//
//  ADBothTeamsTableViewCell.m
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import "ADBothTeamsTableViewCell.h"
#import "ADScorecardViewModel.h"

@interface ADBothTeamsTableViewCell()<UITextFieldDelegate>
@property(nonatomic, strong)UILabel *ADRightTeamLabel;//右边队伍名称标识
@property(nonatomic, strong)UITextField *ADRightTeamField;//右边队伍
@property(nonatomic, copy)NSString *ADRightTeamName;//右边队伍名称
@property(nonatomic, strong)UILabel *ADVSLabel;//VS标识
@property(nonatomic, strong)UILabel *ADLeftTeamLabel;//左边队伍名称标识
@property(nonatomic, strong)UITextField *ADLeftTeamField;//左边队伍
@property(nonatomic, copy)NSString *ADLeftTeamName;//左边队伍名称
@end
@implementation ADBothTeamsTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = [UIColor whiteColor];
        [self ADSetContentView];
    }
    return self;
}
#pragma mark - action
- (void)setADModel:(ADScorecardViewModel *)ADModel{
    _ADModel = ADModel;
    self.ADRightTeamField.text = _ADModel.ADTeamRightName;
    self.ADLeftTeamField.text = _ADModel.ADTeamLeftName;
}
- (void)ADSetContentView{
    [self.contentView addSubview:self.ADRightTeamLabel];
    [self.contentView addSubview:self.ADRightTeamField];
    [self.contentView addSubview:self.ADVSLabel];
    [self.contentView addSubview:self.ADLeftTeamLabel];
    [self.contentView addSubview:self.ADLeftTeamField];
    
    [self.ADRightTeamLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(16);
        make.top.equalTo(self.contentView).offset(30);
        make.width.mas_equalTo((ADWIDTH - 184) * 0.5);
        make.height.mas_equalTo(50);
    }];
    [self.ADRightTeamField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(32);
        make.top.equalTo(self.ADRightTeamLabel.mas_bottom).offset(15);
        make.width.mas_equalTo((ADWIDTH - 200) * 0.5);
        make.height.mas_equalTo(36);
        make.bottom.equalTo(self.contentView).offset(-15);
    }];
    [self.ADVSLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.contentView);
        make.centerY.equalTo(self.ADRightTeamField);
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(40);
    }];
    [self.ADLeftTeamLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.equalTo(self.contentView).offset(-16);
        make.top.equalTo(self.contentView).offset(30);
        make.width.mas_equalTo((ADWIDTH - 184) * 0.5);
        make.height.mas_equalTo(50);
    }];
    [self.ADLeftTeamField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.equalTo(self.contentView).offset(-32);
        make.top.equalTo(self.ADLeftTeamLabel.mas_bottom).offset(15);
        make.width.mas_equalTo((ADWIDTH - 200) * 0.5);
        make.height.mas_equalTo(36);
    }];
}
#pragma mark - UITextFieldDelegate
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    if (textField.tag == 99) {
        self.ADRightTeamName = textField.text;
    }else if (textField.tag == 100){
        self.ADLeftTeamName = textField.text;
    }
    self.ADModel.ADTeamRightName = self.ADRightTeamName;
    self.ADModel.ADTeamLeftName = self.ADLeftTeamName;
    return YES;
}
- (BOOL)textFieldShouldEndEditing:(UITextField *)textField{
    if (textField.tag == 99) {
        self.ADRightTeamName = textField.text;
    }else if (textField.tag == 100){
        self.ADLeftTeamName = textField.text;
    }
    self.ADModel.ADTeamRightName = self.ADRightTeamName;
    self.ADModel.ADTeamLeftName = self.ADLeftTeamName;
    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField.tag == 99) {
        self.ADRightTeamName = textField.text;
    }else if (textField.tag == 100){
        self.ADLeftTeamName = textField.text;
    }
    self.ADModel.ADTeamRightName = self.ADRightTeamName;
    self.ADModel.ADTeamLeftName = self.ADLeftTeamName;
}
#pragma mark - 属性懒加载
- (UILabel *)ADRightTeamLabel{
    if (!_ADRightTeamLabel) {
        _ADRightTeamLabel = [[UILabel alloc] init];
        _ADRightTeamLabel.textColor = [UIColor redColor];
        _ADRightTeamLabel.font = [UIFont systemFontOfSize:15];
        _ADRightTeamLabel.textAlignment = NSTextAlignmentCenter;
        _ADRightTeamLabel.text = @"Please enter team 1 name";
        _ADRightTeamLabel.numberOfLines = 0;
    }
    return _ADRightTeamLabel;
}
- (UITextField *)ADRightTeamField{
    if (!_ADRightTeamField) {
        _ADRightTeamField = [[UITextField alloc] init];
        _ADRightTeamField.tag = 99;
        _ADRightTeamField.delegate = self;
        _ADRightTeamField.textColor = [UIColor blackColor];
        _ADRightTeamField.font = [UIFont systemFontOfSize:15];
        _ADRightTeamField.layer.cornerRadius = 8.0f;
        _ADRightTeamField.layer.masksToBounds = YES;
        _ADRightTeamField.layer.borderColor = [UIColor systemPurpleColor].CGColor;
        _ADRightTeamField.layer.borderWidth = 1.5f;
    }
    return _ADRightTeamField;
}
- (UILabel *)ADVSLabel{
    if (!_ADVSLabel) {
        _ADVSLabel = [[UILabel alloc] init];
        _ADVSLabel.textColor = [UIColor systemRedColor];
        _ADVSLabel.font = [UIFont boldSystemFontOfSize:30];
        _ADVSLabel.textAlignment = NSTextAlignmentCenter;
        _ADVSLabel.text = @"VS";
    }
    return _ADVSLabel;
}
- (UILabel *)ADLeftTeamLabel{
    if (!_ADLeftTeamLabel) {
        _ADLeftTeamLabel = [[UILabel alloc] init];
        _ADLeftTeamLabel.textColor = [UIColor redColor];
        _ADLeftTeamLabel.font = [UIFont systemFontOfSize:15];
        _ADLeftTeamLabel.textAlignment = NSTextAlignmentCenter;
        _ADLeftTeamLabel.text = @"Please enter team 2 name";
        _ADLeftTeamLabel.numberOfLines = 0;
    }
    return _ADLeftTeamLabel;
}
- (UITextField *)ADLeftTeamField{
    if (!_ADLeftTeamField) {
        _ADLeftTeamField = [[UITextField alloc] init];
        _ADLeftTeamField.tag = 100;
        _ADLeftTeamField.delegate = self;
        _ADLeftTeamField.textColor = [UIColor blackColor];
        _ADLeftTeamField.font = [UIFont systemFontOfSize:15];
        _ADLeftTeamField.layer.cornerRadius = 8.0f;
        _ADLeftTeamField.layer.masksToBounds = YES;
        _ADLeftTeamField.layer.borderColor = [UIColor systemPurpleColor].CGColor;
        _ADLeftTeamField.layer.borderWidth = 1.5f;
    }
    return _ADLeftTeamField;
}
@end
