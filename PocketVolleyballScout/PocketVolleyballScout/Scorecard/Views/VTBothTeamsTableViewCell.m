//
//  VTBothTeamsTableViewCell.m
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import "VTBothTeamsTableViewCell.h"
#import "VTScorecardViewModel.h"

@interface VTBothTeamsTableViewCell()<UITextFieldDelegate>
@property(nonatomic, strong)UILabel *VTRightTeamLabel;//右边队伍名称标识
@property(nonatomic, strong)UITextField *VTRightTeamField;//右边队伍
@property(nonatomic, copy)NSString *VTRightTeamName;//右边队伍名称
@property(nonatomic, strong)UILabel *VTWhichGameLabel;//哪一局比赛
@property(nonatomic, strong)UILabel *VTVSLabel;//VS标识
@property(nonatomic, strong)UILabel *VTLeftTeamLabel;//左边队伍名称标识
@property(nonatomic, strong)UITextField *VTLeftTeamField;//左边队伍
@property(nonatomic, copy)NSString *VTLeftTeamName;//左边队伍名称
@end
@implementation VTBothTeamsTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = [UIColor cyanColor];
        [self VTSetContentView];
    }
    return self;
}
#pragma mark - action
- (void)setVTModel:(VTScorecardViewModel *)VTModel{
    _VTModel = VTModel;
    self.VTRightTeamField.text = _VTModel.VTTeamRightName;
    self.VTLeftTeamField.text = _VTModel.VTTeamLeftName;
}
- (void)VTSetContentView{
    [self.contentView addSubview:self.VTRightTeamLabel];
    [self.contentView addSubview:self.VTRightTeamField];
    [self.contentView addSubview:self.VTWhichGameLabel];
    [self.contentView addSubview:self.VTVSLabel];
    [self.contentView addSubview:self.VTLeftTeamLabel];
    [self.contentView addSubview:self.VTLeftTeamField];
    
    [self.VTRightTeamLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(32);
        make.top.equalTo(self.contentView).offset(30);
        make.width.mas_equalTo((VTWIDTH - 200) * 0.5);
        make.height.mas_equalTo(50);
    }];
    [self.VTRightTeamField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(32);
        make.top.equalTo(self.VTRightTeamLabel.mas_bottom).offset(15);
        make.width.mas_equalTo((VTWIDTH - 200) * 0.5);
        make.height.mas_equalTo(36);
        make.bottom.equalTo(self.contentView).offset(-15);
    }];
    [self.VTWhichGameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.contentView);
        make.top.equalTo(self.VTRightTeamLabel).offset(2);
        make.width.mas_equalTo(60);
        make.height.mas_equalTo(30);
    }];
    [self.VTVSLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.contentView);
        make.centerY.equalTo(self.VTRightTeamField);
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(40);
    }];
    [self.VTLeftTeamLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.equalTo(self.contentView).offset(-32);
        make.top.equalTo(self.contentView).offset(30);
        make.width.mas_equalTo((VTWIDTH - 200) * 0.5);
        make.height.mas_equalTo(50);
    }];
    [self.VTLeftTeamField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.equalTo(self.contentView).offset(-32);
        make.top.equalTo(self.VTLeftTeamLabel.mas_bottom).offset(15);
        make.width.mas_equalTo((VTWIDTH - 200) * 0.5);
        make.height.mas_equalTo(36);
    }];
}
#pragma mark - UITextFieldDelegate
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    if (textField.tag == 99) {
        self.VTRightTeamName = textField.text;
    }else if (textField.tag == 100){
        self.VTLeftTeamName = textField.text;
    }
    self.VTModel.VTTeamRightName = self.VTRightTeamName;
    self.VTModel.VTTeamLeftName = self.VTLeftTeamName;
    return YES;
}
- (BOOL)textFieldShouldEndEditing:(UITextField *)textField{
    if (textField.tag == 99) {
        self.VTRightTeamName = textField.text;
    }else if (textField.tag == 100){
        self.VTLeftTeamName = textField.text;
    }
    self.VTModel.VTTeamRightName = self.VTRightTeamName;
    self.VTModel.VTTeamLeftName = self.VTLeftTeamName;
    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField.tag == 99) {
        self.VTRightTeamName = textField.text;
    }else if (textField.tag == 100){
        self.VTLeftTeamName = textField.text;
    }
    self.VTModel.VTTeamRightName = self.VTRightTeamName;
    self.VTModel.VTTeamLeftName = self.VTLeftTeamName;
}
#pragma mark - 属性懒加载
- (UILabel *)VTRightTeamLabel{
    if (!_VTRightTeamLabel) {
        _VTRightTeamLabel = [[UILabel alloc] init];
        _VTRightTeamLabel.textColor = [UIColor redColor];
        _VTRightTeamLabel.font = [UIFont systemFontOfSize:20];
        _VTRightTeamLabel.textAlignment = NSTextAlignmentCenter;
        _VTRightTeamLabel.text = NSLocalizedString(@"请输入队伍1名称", nil);
        _VTRightTeamLabel.numberOfLines = 0;
    }
    return _VTRightTeamLabel;
}
- (UITextField *)VTRightTeamField{
    if (!_VTRightTeamField) {
        _VTRightTeamField = [[UITextField alloc] init];
        _VTRightTeamField.tag = 99;
        _VTRightTeamField.delegate = self;
        _VTRightTeamField.textColor = [UIColor blackColor];
        _VTRightTeamField.font = [UIFont systemFontOfSize:15];
        _VTRightTeamField.layer.cornerRadius = 6.0f;
        _VTRightTeamField.layer.masksToBounds = YES;
        _VTRightTeamField.layer.borderColor = [UIColor blueColor].CGColor;
        _VTRightTeamField.layer.borderWidth = 2.0f;
    }
    return _VTRightTeamField;
}
- (UILabel *)VTWhichGameLabel{
    if (!_VTWhichGameLabel) {
        _VTWhichGameLabel = [[UILabel alloc] init];
        _VTWhichGameLabel.textColor = [UIColor systemPurpleColor];
        _VTWhichGameLabel.font = [UIFont boldSystemFontOfSize:22];
        _VTWhichGameLabel.textAlignment = NSTextAlignmentCenter;
        _VTWhichGameLabel.text = @"No.1";
        _VTWhichGameLabel.numberOfLines = 0;
    }
    return _VTWhichGameLabel;
}
- (UILabel *)VTVSLabel{
    if (!_VTVSLabel) {
        _VTVSLabel = [[UILabel alloc] init];
        _VTVSLabel.textColor = [UIColor systemRedColor];
        _VTVSLabel.font = [UIFont boldSystemFontOfSize:30];
        _VTVSLabel.textAlignment = NSTextAlignmentCenter;
        _VTVSLabel.text = @"VS";
    }
    return _VTVSLabel;
}
- (UILabel *)VTLeftTeamLabel{
    if (!_VTLeftTeamLabel) {
        _VTLeftTeamLabel = [[UILabel alloc] init];
        _VTLeftTeamLabel.textColor = [UIColor redColor];
        _VTLeftTeamLabel.font = [UIFont systemFontOfSize:20];
        _VTLeftTeamLabel.textAlignment = NSTextAlignmentCenter;
        _VTLeftTeamLabel.text = NSLocalizedString(@"请输入队伍2名称", nil);
        _VTLeftTeamLabel.numberOfLines = 0;
    }
    return _VTLeftTeamLabel;
}
- (UITextField *)VTLeftTeamField{
    if (!_VTLeftTeamField) {
        _VTLeftTeamField = [[UITextField alloc] init];
        _VTLeftTeamField.tag = 100;
        _VTLeftTeamField.delegate = self;
        _VTLeftTeamField.textColor = [UIColor blackColor];
        _VTLeftTeamField.font = [UIFont systemFontOfSize:15];
        _VTLeftTeamField.layer.cornerRadius = 6.0f;
        _VTLeftTeamField.layer.masksToBounds = YES;
        _VTLeftTeamField.layer.borderColor = [UIColor blueColor].CGColor;
        _VTLeftTeamField.layer.borderWidth = 2.0f;
    }
    return _VTLeftTeamField;
}
@end
