//
//  KTBothTeamsTableViewCell.m
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import "KTBothTeamsTableViewCell.h"
#import "KTScorecardViewModel.h"

@interface KTBothTeamsTableViewCell()<UITextFieldDelegate>
@property(nonatomic, strong)UILabel *KTRightTeamLabel;//右边队伍名称标识
@property(nonatomic, strong)UITextField *KTRightTeamField;//右边队伍
@property(nonatomic, copy)NSString *KTRightTeamName;//右边队伍名称
@property(nonatomic, strong)UILabel *KTVSLabel;//VS标识
@property(nonatomic, strong)UILabel *KTLeftTeamLabel;//左边队伍名称标识
@property(nonatomic, strong)UITextField *KTLeftTeamField;//左边队伍
@property(nonatomic, copy)NSString *KTLeftTeamName;//左边队伍名称
@end
@implementation KTBothTeamsTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self KTSetContentView];
    }
    return self;
}
#pragma mark - action
- (void)setKTModel:(KTScorecardViewModel *)KTModel{
    _KTModel = KTModel;
    self.KTRightTeamField.text = _KTModel.KTTeamRightName;
    self.KTLeftTeamField.text = _KTModel.KTTeamLeftName;
}
- (void)KTSetContentView{
    [self.contentView addSubview:self.KTRightTeamLabel];
    [self.contentView addSubview:self.KTRightTeamField];
    [self.contentView addSubview:self.KTVSLabel];
    [self.contentView addSubview:self.KTLeftTeamLabel];
    [self.contentView addSubview:self.KTLeftTeamField];
    
    [self.KTRightTeamLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(32);
        make.top.equalTo(self.contentView).offset(30);
        make.width.mas_equalTo((KTWIDTH - 200) * 0.5);
        make.height.mas_equalTo(50);
    }];
    [self.KTRightTeamField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(32);
        make.top.equalTo(self.KTRightTeamLabel.mas_bottom).offset(15);
        make.width.mas_equalTo((KTWIDTH - 200) * 0.5);
        make.height.mas_equalTo(36);
        make.bottom.equalTo(self.contentView).offset(-30);
    }];
    [self.KTVSLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.contentView);
        make.centerY.equalTo(self.KTRightTeamField);
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(40);
    }];
    [self.KTLeftTeamLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.equalTo(self.contentView).offset(-32);
        make.top.equalTo(self.contentView).offset(30);
        make.width.mas_equalTo((KTWIDTH - 200) * 0.5);
        make.height.mas_equalTo(50);
    }];
    [self.KTLeftTeamField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.equalTo(self.contentView).offset(-32);
        make.top.equalTo(self.KTLeftTeamLabel.mas_bottom).offset(15);
        make.width.mas_equalTo((KTWIDTH - 200) * 0.5);
        make.height.mas_equalTo(36);
    }];
}
#pragma mark - UITextFieldDelegate
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    if (textField.tag == 99) {
        self.KTRightTeamName = textField.text;
    }else if (textField.tag == 100){
        self.KTLeftTeamName = textField.text;
    }
    self.KTModel.KTTeamRightName = self.KTRightTeamName;
    self.KTModel.KTTeamLeftName = self.KTLeftTeamName;
    return YES;
}
- (BOOL)textFieldShouldEndEditing:(UITextField *)textField{
    if (textField.tag == 99) {
        self.KTRightTeamName = textField.text;
    }else if (textField.tag == 100){
        self.KTLeftTeamName = textField.text;
    }
    self.KTModel.KTTeamRightName = self.KTRightTeamName;
    self.KTModel.KTTeamLeftName = self.KTLeftTeamName;
    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField.tag == 99) {
        self.KTRightTeamName = textField.text;
    }else if (textField.tag == 100){
        self.KTLeftTeamName = textField.text;
    }
    self.KTModel.KTTeamRightName = self.KTRightTeamName;
    self.KTModel.KTTeamLeftName = self.KTLeftTeamName;
}
#pragma mark - 属性懒加载
- (UILabel *)KTRightTeamLabel{
    if (!_KTRightTeamLabel) {
        _KTRightTeamLabel = [[UILabel alloc] init];
        _KTRightTeamLabel.textColor = [UIColor redColor];
        _KTRightTeamLabel.font = [UIFont systemFontOfSize:20];
        _KTRightTeamLabel.textAlignment = NSTextAlignmentCenter;
        _KTRightTeamLabel.text = NSLocalizedString(@"请输入队伍1名称", nil);
        _KTRightTeamLabel.numberOfLines = 0;
    }
    return _KTRightTeamLabel;
}
- (UITextField *)KTRightTeamField{
    if (!_KTRightTeamField) {
        _KTRightTeamField = [[UITextField alloc] init];
        _KTRightTeamField.tag = 99;
        _KTRightTeamField.delegate = self;
        _KTRightTeamField.textColor = [UIColor blackColor];
        _KTRightTeamField.font = [UIFont systemFontOfSize:15];
        _KTRightTeamField.layer.cornerRadius = 8.0f;
        _KTRightTeamField.layer.masksToBounds = YES;
        _KTRightTeamField.layer.borderColor = [UIColor systemGrayColor].CGColor;
        _KTRightTeamField.layer.borderWidth = 1.5f;
    }
    return _KTRightTeamField;
}
- (UILabel *)KTVSLabel{
    if (!_KTVSLabel) {
        _KTVSLabel = [[UILabel alloc] init];
        _KTVSLabel.textColor = KTH_Color(0, 204, 131, 1);
        _KTVSLabel.font = [UIFont boldSystemFontOfSize:30];
        _KTVSLabel.textAlignment = NSTextAlignmentCenter;
        _KTVSLabel.text = @"VS";
    }
    return _KTVSLabel;
}
- (UILabel *)KTLeftTeamLabel{
    if (!_KTLeftTeamLabel) {
        _KTLeftTeamLabel = [[UILabel alloc] init];
        _KTLeftTeamLabel.textColor = [UIColor redColor];
        _KTLeftTeamLabel.font = [UIFont systemFontOfSize:20];
        _KTLeftTeamLabel.textAlignment = NSTextAlignmentCenter;
        _KTLeftTeamLabel.text = NSLocalizedString(@"请输入队伍2名称", nil);
        _KTLeftTeamLabel.numberOfLines = 0;
    }
    return _KTLeftTeamLabel;
}
- (UITextField *)KTLeftTeamField{
    if (!_KTLeftTeamField) {
        _KTLeftTeamField = [[UITextField alloc] init];
        _KTLeftTeamField.tag = 100;
        _KTLeftTeamField.delegate = self;
        _KTLeftTeamField.textColor = [UIColor blackColor];
        _KTLeftTeamField.font = [UIFont systemFontOfSize:15];
        _KTLeftTeamField.layer.cornerRadius = 8.0f;
        _KTLeftTeamField.layer.masksToBounds = YES;
        _KTLeftTeamField.layer.borderColor = [UIColor systemGrayColor].CGColor;
        _KTLeftTeamField.layer.borderWidth = 1.5f;
    }
    return _KTLeftTeamField;
}
@end
