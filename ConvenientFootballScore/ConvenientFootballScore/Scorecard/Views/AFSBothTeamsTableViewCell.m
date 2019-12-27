//
//  AFSBothTeamsTableViewCell.m
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import "AFSBothTeamsTableViewCell.h"
#import "AFSScorecardViewModel.h"

@interface AFSBothTeamsTableViewCell()<UITextFieldDelegate>
@property(nonatomic, strong)UILabel *AFSRightTeamLabel;//右边队伍名称标识
@property(nonatomic, strong)UITextField *AFSRightTeamField;//右边队伍
@property(nonatomic, copy)NSString *AFSRightTeamName;//右边队伍名称
@property(nonatomic, strong)UILabel *AFSVSLabel;//VS标识
@property(nonatomic, strong)UILabel *AFSLeftTeamLabel;//左边队伍名称标识
@property(nonatomic, strong)UITextField *AFSLeftTeamField;//左边队伍
@property(nonatomic, copy)NSString *AFSLeftTeamName;//左边队伍名称
@end
@implementation AFSBothTeamsTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self AFSSetContentView];
    }
    return self;
}
#pragma mark - action
- (void)setAFSModel:(AFSScorecardViewModel *)AFSModel{
    _AFSModel = AFSModel;
    self.AFSRightTeamField.text = _AFSModel.AFSTeamRightName;
    self.AFSLeftTeamField.text = _AFSModel.AFSTeamLeftName;
}
- (void)AFSSetContentView{
    [self.contentView addSubview:self.AFSRightTeamLabel];
    [self.contentView addSubview:self.AFSRightTeamField];
    [self.contentView addSubview:self.AFSVSLabel];
    [self.contentView addSubview:self.AFSLeftTeamLabel];
    [self.contentView addSubview:self.AFSLeftTeamField];
    
    [self.AFSRightTeamLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(32);
        make.top.equalTo(self.contentView).offset(30);
        make.width.mas_equalTo((AFSWIDTH - 200) * 0.5);
        make.height.mas_equalTo(50);
    }];
    [self.AFSRightTeamField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(32);
        make.top.equalTo(self.AFSRightTeamLabel.mas_bottom).offset(15);
        make.width.mas_equalTo((AFSWIDTH - 200) * 0.5);
        make.height.mas_equalTo(36);
        make.bottom.equalTo(self.contentView).offset(-30);
    }];
    [self.AFSVSLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.contentView);
        make.centerY.equalTo(self.AFSRightTeamField);
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(40);
    }];
    [self.AFSLeftTeamLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.equalTo(self.contentView).offset(-32);
        make.top.equalTo(self.contentView).offset(30);
        make.width.mas_equalTo((AFSWIDTH - 200) * 0.5);
        make.height.mas_equalTo(50);
    }];
    [self.AFSLeftTeamField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.equalTo(self.contentView).offset(-32);
        make.top.equalTo(self.AFSLeftTeamLabel.mas_bottom).offset(15);
        make.width.mas_equalTo((AFSWIDTH - 200) * 0.5);
        make.height.mas_equalTo(36);
    }];
}
#pragma mark - UITextFieldDelegate
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    if (textField.tag == 99) {
        self.AFSRightTeamName = textField.text;
    }else if (textField.tag == 100){
        self.AFSLeftTeamName = textField.text;
    }
    self.AFSModel.AFSTeamRightName = self.AFSRightTeamName;
    self.AFSModel.AFSTeamLeftName = self.AFSLeftTeamName;
    return YES;
}
- (BOOL)textFieldShouldEndEditing:(UITextField *)textField{
    if (textField.tag == 99) {
        self.AFSRightTeamName = textField.text;
    }else if (textField.tag == 100){
        self.AFSLeftTeamName = textField.text;
    }
    self.AFSModel.AFSTeamRightName = self.AFSRightTeamName;
    self.AFSModel.AFSTeamLeftName = self.AFSLeftTeamName;
    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField.tag == 99) {
        self.AFSRightTeamName = textField.text;
    }else if (textField.tag == 100){
        self.AFSLeftTeamName = textField.text;
    }
    self.AFSModel.AFSTeamRightName = self.AFSRightTeamName;
    self.AFSModel.AFSTeamLeftName = self.AFSLeftTeamName;
}
#pragma mark - 属性懒加载
- (UILabel *)AFSRightTeamLabel{
    if (!_AFSRightTeamLabel) {
        _AFSRightTeamLabel = [[UILabel alloc] init];
        _AFSRightTeamLabel.textColor = [UIColor systemGreenColor];
        _AFSRightTeamLabel.font = [UIFont systemFontOfSize:15];
        _AFSRightTeamLabel.textAlignment = NSTextAlignmentCenter;
        _AFSRightTeamLabel.text = NSLocalizedString(@"请输入队伍1名称", nil);
        _AFSRightTeamLabel.numberOfLines = 0;
    }
    return _AFSRightTeamLabel;
}
- (UITextField *)AFSRightTeamField{
    if (!_AFSRightTeamField) {
        _AFSRightTeamField = [[UITextField alloc] init];
        _AFSRightTeamField.tag = 99;
        _AFSRightTeamField.delegate = self;
        _AFSRightTeamField.textColor = [UIColor blackColor];
        _AFSRightTeamField.font = [UIFont systemFontOfSize:22];
        _AFSRightTeamField.layer.cornerRadius = 4.0f;
        _AFSRightTeamField.layer.masksToBounds = YES;
        _AFSRightTeamField.layer.borderColor = [UIColor systemGreenColor].CGColor;
        _AFSRightTeamField.layer.borderWidth = 2.0f;
    }
    return _AFSRightTeamField;
}
- (UILabel *)AFSVSLabel{
    if (!_AFSVSLabel) {
        _AFSVSLabel = [[UILabel alloc] init];
        _AFSVSLabel.textColor = [UIColor systemGreenColor];
        _AFSVSLabel.font = [UIFont boldSystemFontOfSize:30];
        _AFSVSLabel.textAlignment = NSTextAlignmentCenter;
        _AFSVSLabel.text = @"VS";
    }
    return _AFSVSLabel;
}
- (UILabel *)AFSLeftTeamLabel{
    if (!_AFSLeftTeamLabel) {
        _AFSLeftTeamLabel = [[UILabel alloc] init];
        _AFSLeftTeamLabel.textColor = [UIColor systemGreenColor];
        _AFSLeftTeamLabel.font = [UIFont systemFontOfSize:15];
        _AFSLeftTeamLabel.textAlignment = NSTextAlignmentCenter;
        _AFSLeftTeamLabel.text = NSLocalizedString(@"请输入队伍2名称", nil);
        _AFSLeftTeamLabel.numberOfLines = 0;
    }
    return _AFSLeftTeamLabel;
}
- (UITextField *)AFSLeftTeamField{
    if (!_AFSLeftTeamField) {
        _AFSLeftTeamField = [[UITextField alloc] init];
        _AFSLeftTeamField.tag = 100;
        _AFSLeftTeamField.delegate = self;
        _AFSLeftTeamField.textColor = [UIColor blackColor];
        _AFSLeftTeamField.font = [UIFont systemFontOfSize:22];
        _AFSLeftTeamField.layer.cornerRadius = 4.0f;
        _AFSLeftTeamField.layer.masksToBounds = YES;
        _AFSLeftTeamField.layer.borderColor = [UIColor systemGreenColor].CGColor;
        _AFSLeftTeamField.layer.borderWidth = 2.0f;
    }
    return _AFSLeftTeamField;
}
@end
