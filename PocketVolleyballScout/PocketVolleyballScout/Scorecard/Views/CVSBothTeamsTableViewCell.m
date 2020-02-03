//
//  CVSBothTeamsTableViewCell.m
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import "CVSBothTeamsTableViewCell.h"
#import "CVSScorecardModel.h"
#import "CVSScorecardViewModel.h"

@interface CVSBothTeamsTableViewCell()<UITextFieldDelegate>
@property(nonatomic, strong)UILabel *CVSRightTeamLabel;//右边队伍名称标识
@property(nonatomic, strong)UITextField *CVSRightTeamField;//右边队伍
@property(nonatomic, copy)NSString *CVSRightTeamName;//右边队伍名称
@property(nonatomic, strong)UILabel *CVSWhichGameLabel;//哪一局比赛
@property(nonatomic, strong)UILabel *CVSVSLabel;//VS标识
@property(nonatomic, strong)UILabel *CVSLeftTeamLabel;//左边队伍名称标识
@property(nonatomic, strong)UITextField *CVSLeftTeamField;//左边队伍
@property(nonatomic, copy)NSString *CVSLeftTeamName;//左边队伍名称
@end
@implementation CVSBothTeamsTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = [UIColor cyanColor];
        [self CVSSetContentView];
    }
    return self;
}
#pragma mark - action
- (void)setCVSModel:(CVSScorecardViewModel *)CVSModel{
    _CVSModel = CVSModel;
    self.CVSWhichGameLabel.text = _CVSModel.CVSbureauString;
    self.CVSRightTeamField.text = [NSString stringWithFormat:@"   %@",_CVSModel.CVSTeamRightName];
    self.CVSLeftTeamField.text = [NSString stringWithFormat:@"   %@",_CVSModel.CVSTeamLeftName];
}
- (void)CVSSetContentView{
    [self.contentView addSubview:self.CVSRightTeamLabel];
    [self.contentView addSubview:self.CVSRightTeamField];
    [self.contentView addSubview:self.CVSWhichGameLabel];
    [self.contentView addSubview:self.CVSVSLabel];
    [self.contentView addSubview:self.CVSLeftTeamLabel];
    [self.contentView addSubview:self.CVSLeftTeamField];
    
    [self.CVSRightTeamLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(32);
        make.top.equalTo(self.contentView).offset(30);
        make.width.mas_equalTo((CVSWIDTH - 200) * 0.5);
        make.height.mas_equalTo(50);
    }];
    [self.CVSRightTeamField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(32);
        make.top.equalTo(self.CVSRightTeamLabel.mas_bottom).offset(15);
        make.width.mas_equalTo((CVSWIDTH - 200) * 0.5);
        make.height.mas_equalTo(36);
        make.bottom.equalTo(self.contentView).offset(-5);
    }];
    [self.CVSWhichGameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.contentView);
        make.top.equalTo(self.CVSRightTeamLabel).offset(2);
        make.width.mas_equalTo(60);
        make.height.mas_equalTo(30);
    }];
    [self.CVSVSLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.contentView);
        make.centerY.equalTo(self.CVSRightTeamField);
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(40);
    }];
    [self.CVSLeftTeamLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.equalTo(self.contentView).offset(-32);
        make.top.equalTo(self.contentView).offset(30);
        make.width.mas_equalTo((CVSWIDTH - 200) * 0.5);
        make.height.mas_equalTo(50);
    }];
    [self.CVSLeftTeamField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.equalTo(self.contentView).offset(-32);
        make.top.equalTo(self.CVSLeftTeamLabel.mas_bottom).offset(15);
        make.width.mas_equalTo((CVSWIDTH - 200) * 0.5);
        make.height.mas_equalTo(36);
    }];
}
#pragma mark - UITextFieldDelegate
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    if (textField.tag == 99) {
        self.CVSRightTeamName = textField.text;
    }else if (textField.tag == 100){
        self.CVSLeftTeamName = textField.text;
    }
    self.CVSModel.CVSTeamRightName = self.CVSRightTeamName;
    self.CVSModel.CVSTeamLeftName = self.CVSLeftTeamName;
    self.CVSScoreModel.CVSTeamRightName = self.CVSRightTeamName;
    self.CVSScoreModel.CVSTeamLeftName = self.CVSLeftTeamName;
    return YES;
}
- (BOOL)textFieldShouldEndEditing:(UITextField *)textField{
    if (textField.tag == 99) {
        self.CVSRightTeamName = textField.text;
    }else if (textField.tag == 100){
        self.CVSLeftTeamName = textField.text;
    }
    self.CVSModel.CVSTeamRightName = self.CVSRightTeamName;
    self.CVSModel.CVSTeamLeftName = self.CVSLeftTeamName;
    self.CVSScoreModel.CVSTeamRightName = self.CVSRightTeamName;
    self.CVSScoreModel.CVSTeamLeftName = self.CVSLeftTeamName;
    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField.tag == 99) {
        self.CVSRightTeamName = textField.text;
    }else if (textField.tag == 100){
        self.CVSLeftTeamName = textField.text;
    }
    self.CVSModel.CVSTeamRightName = self.CVSRightTeamName;
    self.CVSModel.CVSTeamLeftName = self.CVSLeftTeamName;
    self.CVSScoreModel.CVSTeamRightName = self.CVSRightTeamName;
    self.CVSScoreModel.CVSTeamLeftName = self.CVSLeftTeamName;
}
#pragma mark - 属性懒加载
- (UILabel *)CVSRightTeamLabel{
    if (!_CVSRightTeamLabel) {
        _CVSRightTeamLabel = [[UILabel alloc] init];
        _CVSRightTeamLabel.textColor = [UIColor redColor];
        _CVSRightTeamLabel.font = [UIFont systemFontOfSize:20];
        _CVSRightTeamLabel.textAlignment = NSTextAlignmentCenter;
        _CVSRightTeamLabel.text = NSLocalizedString(@"请输入队伍1名称", nil);
        _CVSRightTeamLabel.numberOfLines = 0;
    }
    return _CVSRightTeamLabel;
}
- (UITextField *)CVSRightTeamField{
    if (!_CVSRightTeamField) {
        _CVSRightTeamField = [[UITextField alloc] init];
        _CVSRightTeamField.tag = 99;
        _CVSRightTeamField.delegate = self;
        _CVSRightTeamField.textColor = [UIColor blackColor];
        _CVSRightTeamField.font = [UIFont systemFontOfSize:15];
        _CVSRightTeamField.layer.cornerRadius = 6.0f;
        _CVSRightTeamField.layer.masksToBounds = YES;
        _CVSRightTeamField.layer.borderColor = [UIColor blueColor].CGColor;
        _CVSRightTeamField.layer.borderWidth = 2.0f;
    }
    return _CVSRightTeamField;
}
- (UILabel *)CVSWhichGameLabel{
    if (!_CVSWhichGameLabel) {
        _CVSWhichGameLabel = [[UILabel alloc] init];
        _CVSWhichGameLabel.textColor = [UIColor systemPurpleColor];
        _CVSWhichGameLabel.font = [UIFont boldSystemFontOfSize:22];
        _CVSWhichGameLabel.textAlignment = NSTextAlignmentCenter;
        _CVSWhichGameLabel.numberOfLines = 0;
    }
    return _CVSWhichGameLabel;
}
- (UILabel *)CVSVSLabel{
    if (!_CVSVSLabel) {
        _CVSVSLabel = [[UILabel alloc] init];
        _CVSVSLabel.textColor = [UIColor systemRedColor];
        _CVSVSLabel.font = [UIFont boldSystemFontOfSize:30];
        _CVSVSLabel.textAlignment = NSTextAlignmentCenter;
        _CVSVSLabel.text = @"VS";
    }
    return _CVSVSLabel;
}
- (UILabel *)CVSLeftTeamLabel{
    if (!_CVSLeftTeamLabel) {
        _CVSLeftTeamLabel = [[UILabel alloc] init];
        _CVSLeftTeamLabel.textColor = [UIColor redColor];
        _CVSLeftTeamLabel.font = [UIFont systemFontOfSize:20];
        _CVSLeftTeamLabel.textAlignment = NSTextAlignmentCenter;
        _CVSLeftTeamLabel.text = NSLocalizedString(@"请输入队伍2名称", nil);
        _CVSLeftTeamLabel.numberOfLines = 0;
    }
    return _CVSLeftTeamLabel;
}
- (UITextField *)CVSLeftTeamField{
    if (!_CVSLeftTeamField) {
        _CVSLeftTeamField = [[UITextField alloc] init];
        _CVSLeftTeamField.tag = 100;
        _CVSLeftTeamField.delegate = self;
        _CVSLeftTeamField.textColor = [UIColor blackColor];
        _CVSLeftTeamField.font = [UIFont systemFontOfSize:15];
        _CVSLeftTeamField.layer.cornerRadius = 6.0f;
        _CVSLeftTeamField.layer.masksToBounds = YES;
        _CVSLeftTeamField.layer.borderColor = [UIColor blueColor].CGColor;
        _CVSLeftTeamField.layer.borderWidth = 2.0f;
    }
    return _CVSLeftTeamField;
}
@end
