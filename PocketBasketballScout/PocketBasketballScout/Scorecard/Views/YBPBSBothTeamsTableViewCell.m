//
//  YBPBSBothTeamsTableViewCell.m
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import "YBPBSBothTeamsTableViewCell.h"
#import "YBPBSScorecardViewModel.h"

@interface YBPBSBothTeamsTableViewCell()<UITextFieldDelegate>
@property(nonatomic, strong)UILabel *YBPBSRightTeamLabel;//右边队伍名称标识
@property(nonatomic, strong)UITextField *YBPBSRightTeamField;//右边队伍
@property(nonatomic, copy)NSString *YBPBSRightTeamName;//右边队伍名称
@property(nonatomic, strong)UILabel *YBPBSVSLabel;//VS标识
@property(nonatomic, strong)UILabel *YBPBSLeftTeamLabel;//左边队伍名称标识
@property(nonatomic, strong)UITextField *YBPBSLeftTeamField;//左边队伍
@property(nonatomic, copy)NSString *YBPBSLeftTeamName;//左边队伍名称
@end
@implementation YBPBSBothTeamsTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = [UIColor whiteColor];
        [self YBPBSSetContentView];
    }
    return self;
}
#pragma mark - action
- (void)setYBPBSModel:(YBPBSScorecardViewModel *)YBPBSModel{
    _YBPBSModel = YBPBSModel;
    self.YBPBSRightTeamField.text = _YBPBSModel.YBPBSTeamRightName;
    self.YBPBSLeftTeamField.text = _YBPBSModel.YBPBSTeamLeftName;
}
- (void)YBPBSSetContentView{
    [self.contentView addSubview:self.YBPBSRightTeamLabel];
    [self.contentView addSubview:self.YBPBSRightTeamField];
    [self.contentView addSubview:self.YBPBSVSLabel];
    [self.contentView addSubview:self.YBPBSLeftTeamLabel];
    [self.contentView addSubview:self.YBPBSLeftTeamField];
    
    [self.YBPBSRightTeamLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(32);
        make.top.equalTo(self.contentView).offset(30);
        make.width.mas_equalTo((YBPBSWIDTH - 200) * 0.5);
        make.height.mas_equalTo(50);
    }];
    [self.YBPBSRightTeamField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(32);
        make.top.equalTo(self.YBPBSRightTeamLabel.mas_bottom).offset(15);
        make.width.mas_equalTo((YBPBSWIDTH - 200) * 0.5);
        make.height.mas_equalTo(36);
        make.bottom.equalTo(self.contentView).offset(-15);
    }];
    [self.YBPBSVSLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.contentView);
        make.centerY.equalTo(self.YBPBSRightTeamField);
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(40);
    }];
    [self.YBPBSLeftTeamLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.equalTo(self.contentView).offset(-32);
        make.top.equalTo(self.contentView).offset(30);
        make.width.mas_equalTo((YBPBSWIDTH - 200) * 0.5);
        make.height.mas_equalTo(50);
    }];
    [self.YBPBSLeftTeamField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.equalTo(self.contentView).offset(-32);
        make.top.equalTo(self.YBPBSLeftTeamLabel.mas_bottom).offset(15);
        make.width.mas_equalTo((YBPBSWIDTH - 200) * 0.5);
        make.height.mas_equalTo(36);
    }];
}
#pragma mark - UITextFieldDelegate
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    if (textField.tag == 99) {
        self.YBPBSRightTeamName = textField.text;
    }else if (textField.tag == 100){
        self.YBPBSLeftTeamName = textField.text;
    }
    self.YBPBSModel.YBPBSTeamRightName = self.YBPBSRightTeamName;
    self.YBPBSModel.YBPBSTeamLeftName = self.YBPBSLeftTeamName;
    return YES;
}
- (BOOL)textFieldShouldEndEditing:(UITextField *)textField{
    if (textField.tag == 99) {
        self.YBPBSRightTeamName = textField.text;
    }else if (textField.tag == 100){
        self.YBPBSLeftTeamName = textField.text;
    }
    self.YBPBSModel.YBPBSTeamRightName = self.YBPBSRightTeamName;
    self.YBPBSModel.YBPBSTeamLeftName = self.YBPBSLeftTeamName;
    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField.tag == 99) {
        self.YBPBSRightTeamName = textField.text;
    }else if (textField.tag == 100){
        self.YBPBSLeftTeamName = textField.text;
    }
    self.YBPBSModel.YBPBSTeamRightName = self.YBPBSRightTeamName;
    self.YBPBSModel.YBPBSTeamLeftName = self.YBPBSLeftTeamName;
}
#pragma mark - 属性懒加载
- (UILabel *)YBPBSRightTeamLabel{
    if (!_YBPBSRightTeamLabel) {
        _YBPBSRightTeamLabel = [[UILabel alloc] init];
        _YBPBSRightTeamLabel.textColor = [UIColor redColor];
        _YBPBSRightTeamLabel.font = [UIFont systemFontOfSize:15];
        _YBPBSRightTeamLabel.textAlignment = NSTextAlignmentCenter;
        _YBPBSRightTeamLabel.text = NSLocalizedString(@"请输入队伍1名称", nil);
        _YBPBSRightTeamLabel.numberOfLines = 0;
    }
    return _YBPBSRightTeamLabel;
}
- (UITextField *)YBPBSRightTeamField{
    if (!_YBPBSRightTeamField) {
        _YBPBSRightTeamField = [[UITextField alloc] init];
        _YBPBSRightTeamField.tag = 99;
        _YBPBSRightTeamField.delegate = self;
        _YBPBSRightTeamField.textColor = [UIColor blackColor];
        _YBPBSRightTeamField.font = [UIFont systemFontOfSize:15];
        _YBPBSRightTeamField.layer.cornerRadius = 4.0f;
        _YBPBSRightTeamField.layer.masksToBounds = YES;
        _YBPBSRightTeamField.layer.borderColor = [UIColor systemPurpleColor].CGColor;
        _YBPBSRightTeamField.layer.borderWidth = 1.5f;
    }
    return _YBPBSRightTeamField;
}
- (UILabel *)YBPBSVSLabel{
    if (!_YBPBSVSLabel) {
        _YBPBSVSLabel = [[UILabel alloc] init];
        _YBPBSVSLabel.textColor = [UIColor systemRedColor];
        _YBPBSVSLabel.font = [UIFont boldSystemFontOfSize:30];
        _YBPBSVSLabel.textAlignment = NSTextAlignmentCenter;
        _YBPBSVSLabel.text = @"VS";
    }
    return _YBPBSVSLabel;
}
- (UILabel *)YBPBSLeftTeamLabel{
    if (!_YBPBSLeftTeamLabel) {
        _YBPBSLeftTeamLabel = [[UILabel alloc] init];
        _YBPBSLeftTeamLabel.textColor = [UIColor redColor];
        _YBPBSLeftTeamLabel.font = [UIFont systemFontOfSize:15];
        _YBPBSLeftTeamLabel.textAlignment = NSTextAlignmentCenter;
        _YBPBSLeftTeamLabel.text = NSLocalizedString(@"请输入队伍2名称", nil);
        _YBPBSLeftTeamLabel.numberOfLines = 0;
    }
    return _YBPBSLeftTeamLabel;
}
- (UITextField *)YBPBSLeftTeamField{
    if (!_YBPBSLeftTeamField) {
        _YBPBSLeftTeamField = [[UITextField alloc] init];
        _YBPBSLeftTeamField.tag = 100;
        _YBPBSLeftTeamField.delegate = self;
        _YBPBSLeftTeamField.textColor = [UIColor blackColor];
        _YBPBSLeftTeamField.font = [UIFont systemFontOfSize:15];
        _YBPBSLeftTeamField.layer.cornerRadius = 4.0f;
        _YBPBSLeftTeamField.layer.masksToBounds = YES;
        _YBPBSLeftTeamField.layer.borderColor = [UIColor systemPurpleColor].CGColor;
        _YBPBSLeftTeamField.layer.borderWidth = 1.5f;
    }
    return _YBPBSLeftTeamField;
}
@end
