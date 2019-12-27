//
//  CBSBothTeamsTableViewCell.m
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import "CBSBothTeamsTableViewCell.h"
#import "CBSScorecardViewModel.h"

@interface CBSBothTeamsTableViewCell()<UITextFieldDelegate>
@property(nonatomic, strong)UILabel *CBSRightTeamLabel;//右边队伍名称标识
@property(nonatomic, strong)UITextField *CBSRightTeamField;//右边队伍
@property(nonatomic, copy)NSString *CBSRightTeamName;//右边队伍名称
@property(nonatomic, strong)UILabel *CBSVSLabel;//VS标识
@property(nonatomic, strong)UILabel *CBSLeftTeamLabel;//左边队伍名称标识
@property(nonatomic, strong)UITextField *CBSLeftTeamField;//左边队伍
@property(nonatomic, copy)NSString *CBSLeftTeamName;//左边队伍名称
@end
@implementation CBSBothTeamsTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = [UIColor whiteColor];
        [self CBSSetContentView];
    }
    return self;
}
#pragma mark - action
- (void)setCBSModel:(CBSScorecardViewModel *)CBSModel{
    _CBSModel = CBSModel;
    self.CBSRightTeamField.text = _CBSModel.CBSTeamRightName;
    self.CBSLeftTeamField.text = _CBSModel.CBSTeamLeftName;
}
- (void)CBSSetContentView{
    [self.contentView addSubview:self.CBSRightTeamLabel];
    [self.contentView addSubview:self.CBSRightTeamField];
    [self.contentView addSubview:self.CBSVSLabel];
    [self.contentView addSubview:self.CBSLeftTeamLabel];
    [self.contentView addSubview:self.CBSLeftTeamField];
    
    [self.CBSRightTeamLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(32);
        make.top.equalTo(self.contentView).offset(30);
        make.width.mas_equalTo((CBSWIDTH - 200) * 0.5);
        make.height.mas_equalTo(50);
    }];
    [self.CBSRightTeamField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(32);
        make.top.equalTo(self.CBSRightTeamLabel.mas_bottom).offset(15);
        make.width.mas_equalTo((CBSWIDTH - 200) * 0.5);
        make.height.mas_equalTo(36);
        make.bottom.equalTo(self.contentView).offset(-15);
    }];
    [self.CBSVSLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.contentView);
        make.centerY.equalTo(self.CBSRightTeamField);
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(40);
    }];
    [self.CBSLeftTeamLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.equalTo(self.contentView).offset(-32);
        make.top.equalTo(self.contentView).offset(30);
        make.width.mas_equalTo((CBSWIDTH - 200) * 0.5);
        make.height.mas_equalTo(50);
    }];
    [self.CBSLeftTeamField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.equalTo(self.contentView).offset(-32);
        make.top.equalTo(self.CBSLeftTeamLabel.mas_bottom).offset(15);
        make.width.mas_equalTo((CBSWIDTH - 200) * 0.5);
        make.height.mas_equalTo(36);
    }];
}
#pragma mark - UITextFieldDelegate
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    if (textField.tag == 99) {
        self.CBSRightTeamName = textField.text;
    }else if (textField.tag == 100){
        self.CBSLeftTeamName = textField.text;
    }
    self.CBSModel.CBSTeamRightName = self.CBSRightTeamName;
    self.CBSModel.CBSTeamLeftName = self.CBSLeftTeamName;
    return YES;
}
- (BOOL)textFieldShouldEndEditing:(UITextField *)textField{
    if (textField.tag == 99) {
        self.CBSRightTeamName = textField.text;
    }else if (textField.tag == 100){
        self.CBSLeftTeamName = textField.text;
    }
    self.CBSModel.CBSTeamRightName = self.CBSRightTeamName;
    self.CBSModel.CBSTeamLeftName = self.CBSLeftTeamName;
    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField.tag == 99) {
        self.CBSRightTeamName = textField.text;
    }else if (textField.tag == 100){
        self.CBSLeftTeamName = textField.text;
    }
    self.CBSModel.CBSTeamRightName = self.CBSRightTeamName;
    self.CBSModel.CBSTeamLeftName = self.CBSLeftTeamName;
}
#pragma mark - 属性懒加载
- (UILabel *)CBSRightTeamLabel{
    if (!_CBSRightTeamLabel) {
        _CBSRightTeamLabel = [[UILabel alloc] init];
        _CBSRightTeamLabel.textColor = [UIColor redColor];
        _CBSRightTeamLabel.font = [UIFont systemFontOfSize:15];
        _CBSRightTeamLabel.textAlignment = NSTextAlignmentCenter;
        _CBSRightTeamLabel.text = NSLocalizedString(@"请输入队伍1名称", nil);
        _CBSRightTeamLabel.numberOfLines = 0;
    }
    return _CBSRightTeamLabel;
}
- (UITextField *)CBSRightTeamField{
    if (!_CBSRightTeamField) {
        _CBSRightTeamField = [[UITextField alloc] init];
        _CBSRightTeamField.tag = 99;
        _CBSRightTeamField.delegate = self;
        _CBSRightTeamField.textColor = [UIColor blackColor];
        _CBSRightTeamField.font = [UIFont systemFontOfSize:15];
        _CBSRightTeamField.layer.cornerRadius = 4.0f;
        _CBSRightTeamField.layer.masksToBounds = YES;
        _CBSRightTeamField.layer.borderColor = [UIColor systemPurpleColor].CGColor;
        _CBSRightTeamField.layer.borderWidth = 1.5f;
    }
    return _CBSRightTeamField;
}
- (UILabel *)CBSVSLabel{
    if (!_CBSVSLabel) {
        _CBSVSLabel = [[UILabel alloc] init];
        _CBSVSLabel.textColor = [UIColor systemRedColor];
        _CBSVSLabel.font = [UIFont boldSystemFontOfSize:30];
        _CBSVSLabel.textAlignment = NSTextAlignmentCenter;
        _CBSVSLabel.text = @"VS";
    }
    return _CBSVSLabel;
}
- (UILabel *)CBSLeftTeamLabel{
    if (!_CBSLeftTeamLabel) {
        _CBSLeftTeamLabel = [[UILabel alloc] init];
        _CBSLeftTeamLabel.textColor = [UIColor redColor];
        _CBSLeftTeamLabel.font = [UIFont systemFontOfSize:15];
        _CBSLeftTeamLabel.textAlignment = NSTextAlignmentCenter;
        _CBSLeftTeamLabel.text = NSLocalizedString(@"请输入队伍2名称", nil);
        _CBSLeftTeamLabel.numberOfLines = 0;
    }
    return _CBSLeftTeamLabel;
}
- (UITextField *)CBSLeftTeamField{
    if (!_CBSLeftTeamField) {
        _CBSLeftTeamField = [[UITextField alloc] init];
        _CBSLeftTeamField.tag = 100;
        _CBSLeftTeamField.delegate = self;
        _CBSLeftTeamField.textColor = [UIColor blackColor];
        _CBSLeftTeamField.font = [UIFont systemFontOfSize:15];
        _CBSLeftTeamField.layer.cornerRadius = 4.0f;
        _CBSLeftTeamField.layer.masksToBounds = YES;
        _CBSLeftTeamField.layer.borderColor = [UIColor systemPurpleColor].CGColor;
        _CBSLeftTeamField.layer.borderWidth = 1.5f;
    }
    return _CBSLeftTeamField;
}
@end
