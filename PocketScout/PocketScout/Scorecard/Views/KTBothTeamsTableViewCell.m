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
@property(nonatomic, strong)UITextField *KTRightTeamField;//右边队伍
@property(nonatomic, copy)NSString *KTRightTeamName;//右边队伍名称
@property(nonatomic, strong)UILabel *KTVSLabel;//VS标识
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
    
}
- (void)KTSetContentView{
    [self.contentView addSubview:self.KTRightTeamField];
    [self.contentView addSubview:self.KTVSLabel];
    [self.contentView addSubview:self.KTLeftTeamField];
    
    [self.KTRightTeamField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(16);
        make.top.equalTo(self.contentView).offset(10);
        make.width.mas_equalTo((KTWIDTH - 112) * 0.5);
        make.height.mas_equalTo(30);
        make.bottom.equalTo(self.contentView).offset(-10);
    }];
    [self.KTVSLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.KTRightTeamField.mas_trailing).offset(20);
        make.centerY.equalTo(self.contentView);
        make.width.mas_equalTo(40);
        make.height.mas_equalTo(40);
    }];
    [self.KTLeftTeamField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.equalTo(self.contentView).offset(-16);
        make.top.equalTo(self.contentView).offset(10);
        make.width.mas_equalTo((KTWIDTH - 112) * 0.5);
        make.height.mas_equalTo(30);
    }];
}
#pragma mark - UITextFieldDelegate
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    if (textField.tag == 99) {
        self.KTRightTeamName = textField.text;
    }else if (textField.tag == 100){
        self.KTLeftTeamName = textField.text;
    }
    return YES;
}
- (BOOL)textFieldShouldEndEditing:(UITextField *)textField{
    if (textField.tag == 99) {
        self.KTRightTeamName = textField.text;
    }else if (textField.tag == 100){
        self.KTLeftTeamName = textField.text;
    }
    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField.tag == 99) {
        self.KTRightTeamName = textField.text;
    }else if (textField.tag == 100){
        self.KTLeftTeamName = textField.text;
    }
}
#pragma mark - 属性懒加载
- (UITextField *)KTRightTeamField{
    if (!_KTRightTeamField) {
        _KTRightTeamField = [[UITextField alloc] init];
        _KTRightTeamField.tag = 99;
        _KTRightTeamField.delegate = self;
        _KTRightTeamField.textColor = [UIColor systemRedColor];
        _KTRightTeamField.font = [UIFont systemFontOfSize:20];
        _KTRightTeamField.textAlignment = NSTextAlignmentCenter;
        _KTRightTeamField.layer.cornerRadius = 4.0f;
        _KTRightTeamField.layer.masksToBounds = YES;
        _KTRightTeamField.layer.borderColor = [UIColor systemGrayColor].CGColor;
        _KTRightTeamField.layer.borderWidth = 1.5f;
    }
    return _KTRightTeamField;
}
- (UILabel *)KTVSLabel{
    if (!_KTVSLabel) {
        _KTVSLabel = [[UILabel alloc] init];
        _KTVSLabel.textColor = [UIColor systemGreenColor];
        _KTVSLabel.font = [UIFont boldSystemFontOfSize:30];
        _KTVSLabel.textAlignment = NSTextAlignmentCenter;
        _KTVSLabel.text = @"VC";
    }
    return _KTVSLabel;
}
- (UITextField *)KTLeftTeamField{
    if (!_KTLeftTeamField) {
        _KTLeftTeamField = [[UITextField alloc] init];
        _KTLeftTeamField.tag = 100;
        _KTLeftTeamField.delegate = self;
        _KTLeftTeamField.textColor = [UIColor systemRedColor];
        _KTLeftTeamField.font = [UIFont systemFontOfSize:20];
        _KTLeftTeamField.textAlignment = NSTextAlignmentCenter;
        _KTLeftTeamField.layer.cornerRadius = 4.0f;
        _KTLeftTeamField.layer.masksToBounds = YES;
        _KTLeftTeamField.layer.borderColor = [UIColor systemGrayColor].CGColor;
        _KTLeftTeamField.layer.borderWidth = 1.5f;
    }
    return _KTLeftTeamField;
}
@end
