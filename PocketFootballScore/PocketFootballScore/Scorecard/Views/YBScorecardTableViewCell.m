//
//  YBScorecardTableViewCell.m
//  PocketFootballScore
//
//  Created by bykj on 2019/10/23.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "YBScorecardTableViewCell.h"
#import "YBScorecardViewModel.h"

@interface YBScorecardTableViewCell()<UITextFieldDelegate>
@property(nonatomic, strong)UITextField *YBteamNameTextField;//队伍名称
@property(nonatomic, strong)UILabel *YBscoreColumnOneLbl;//分数第一列
@property(nonatomic, strong)UILabel *YBscoreColumnSecondLbl;//分数第二列
@property(nonatomic, strong)UIButton *YBminusOnePointsButton;//减一分
@property(nonatomic, strong)UIButton *YBaddAPointButton;//加一分

@end
@implementation YBScorecardTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = [UIColor cyanColor];
        [self.contentView addSubview:self.YBteamNameTextField];
        [self.contentView addSubview:self.YBscoreColumnOneLbl];
        [self.contentView addSubview:self.YBscoreColumnSecondLbl];
        [self.contentView addSubview:self.YBminusOnePointsButton];
        [self.contentView addSubview:self.YBaddAPointButton];
        
        [self.YBteamNameTextField mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView);
            make.top.equalTo(self.contentView);
            make.trailing.equalTo(self.contentView);
            make.height.mas_equalTo(40);
        }];
        [self.YBscoreColumnOneLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(32);
            make.top.equalTo(self.YBteamNameTextField.mas_bottom).offset(15);
            make.width.mas_equalTo((YBWIDTH - 144) / 2);
            make.height.mas_equalTo(120);
        }];
        [self.YBscoreColumnSecondLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.YBscoreColumnOneLbl.mas_trailing).offset(80);
            make.top.equalTo(self.YBteamNameTextField.mas_bottom).offset(15);
            make.width.mas_equalTo((YBWIDTH - 144) / 2);
            make.height.mas_equalTo(120);
        }];
        [self.YBminusOnePointsButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(self.YBscoreColumnOneLbl);
            make.top.equalTo(self.YBscoreColumnSecondLbl.mas_bottom).offset(15);
            make.width.mas_equalTo(42);
            make.height.mas_equalTo(42);
        }];
        [self.YBaddAPointButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(self.YBscoreColumnSecondLbl);
            make.top.equalTo(self.YBscoreColumnSecondLbl.mas_bottom).offset(15);
            make.width.mas_equalTo(42);
            make.height.mas_equalTo(42);
            make.bottom.equalTo(self.contentView).offset(-15);
        }];
    }
    return self;
}
- (void)setModel:(YBScorecardViewModel *)model{
    _model = model;
    self.YBteamNameTextField.text = _model.YBteamName;
    NSUInteger singleDigits = 0;
    NSUInteger tenDigits = 0;
    if(self.model.score >= 10){
        singleDigits = self.model.score % 10;
        tenDigits = (self.model.score - singleDigits) / 10;
    }else{
        singleDigits = self.model.score;
    }
    self.YBscoreColumnSecondLbl.text = [NSString stringWithFormat:@"%ld",singleDigits];
    self.YBscoreColumnOneLbl.text = [NSString stringWithFormat:@"%ld",tenDigits];
}
#pragma mark - action
- (void)YBbtnClick:(UIButton *)sender{
    NSUInteger singleDigits = 0;
    NSUInteger tenDigits = 0;
    if (sender.tag == 99) {
        if (self.model.score > 0) {
            self.model.score -= 1;
        }
    }else if (sender.tag == 100){
        self.model.score += 1;
    }
        if (self.model.score >= 10){
            singleDigits = self.model.score % 10;
            tenDigits = (self.model.score - singleDigits) / 10;
        }else{
            singleDigits = self.model.score;
        }
        self.YBscoreColumnSecondLbl.text = [NSString stringWithFormat:@"%ld",singleDigits];
        self.YBscoreColumnSecondLbl.text = [NSString stringWithFormat:@"%ld",tenDigits];
        if (self.YBScorecardB) {
            self.YBScorecardB(self);
        }
}
#pragma mark - UITextFieldDelegate
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    self.model.YBteamName = textField.text;
    self.type = 0;
    if (self.YBScorecardEditB) {
        self.YBScorecardEditB(self);
    }
    return YES;
}
- (void)textFieldDidBeginEditing:(UITextField *)textField{
    self.model.YBteamName = textField.text;
}
- (BOOL)textFieldShouldEndEditing:(UITextField *)textField{
    self.model.YBteamName = textField.text;
    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    self.type = 1;
    if (self.YBScorecardEditB) {
        self.YBScorecardEditB(self);
    }
    self.model.YBteamName = textField.text;
}
#pragma mark - 属性懒加载
- (UITextField *)YBteamNameTextField{
    if (!_YBteamNameTextField) {
        _YBteamNameTextField = [[UITextField alloc] init];
        _YBteamNameTextField.layer.cornerRadius = 4.0f;
        _YBteamNameTextField.layer.masksToBounds = YES;
        _YBteamNameTextField.delegate = self;
        _YBteamNameTextField.backgroundColor = [UIColor cyanColor];
        _YBteamNameTextField.textColor = [UIColor blackColor];
        _YBteamNameTextField.textAlignment = NSTextAlignmentCenter;
        _YBteamNameTextField.font = [UIFont systemFontOfSize:25];
    }
    return _YBteamNameTextField;
}
- (UILabel *)YBscoreColumnOneLbl{
    if (!_YBscoreColumnOneLbl) {
        _YBscoreColumnOneLbl = [[UILabel alloc] init];
        _YBscoreColumnOneLbl.backgroundColor = [UIColor blackColor];
        _YBscoreColumnOneLbl.layer.cornerRadius = 30.0f;
        _YBscoreColumnOneLbl.layer.masksToBounds = YES;
        _YBscoreColumnOneLbl.textColor = [UIColor whiteColor];
        _YBscoreColumnOneLbl.font = [UIFont boldSystemFontOfSize:100];
        _YBscoreColumnOneLbl.textAlignment = NSTextAlignmentCenter;
        _YBscoreColumnOneLbl.text = @"0";
    }
    return _YBscoreColumnOneLbl;
}
- (UILabel *)YBscoreColumnSecondLbl{
    if (!_YBscoreColumnSecondLbl) {
        _YBscoreColumnSecondLbl = [[UILabel alloc] init];
        _YBscoreColumnSecondLbl.backgroundColor = [UIColor blackColor];
        _YBscoreColumnSecondLbl.layer.cornerRadius = 30.0f;
        _YBscoreColumnSecondLbl.layer.masksToBounds = YES;
        _YBscoreColumnSecondLbl.textColor = [UIColor whiteColor];
        _YBscoreColumnSecondLbl.font = [UIFont boldSystemFontOfSize:100];
        _YBscoreColumnSecondLbl.textAlignment = NSTextAlignmentCenter;
        _YBscoreColumnSecondLbl.text = @"0";
    }
    return _YBscoreColumnSecondLbl;
}
- (UIButton *)YBminusOnePointsButton{
    if (!_YBminusOnePointsButton) {
        _YBminusOnePointsButton = [[UIButton alloc] init];
        _YBminusOnePointsButton.tag = 99;
        [_YBminusOnePointsButton addTarget:self action:@selector(YBbtnClick:) forControlEvents:UIControlEventTouchUpInside];
        _YBminusOnePointsButton.backgroundColor = [UIColor systemRedColor];
        _YBminusOnePointsButton.layer.cornerRadius = 20.5f;
        _YBminusOnePointsButton.layer.masksToBounds = YES;
        [_YBminusOnePointsButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_YBminusOnePointsButton.titleLabel setFont:[UIFont systemFontOfSize:20]];
        [_YBminusOnePointsButton setTitle:@"-1" forState:UIControlStateNormal];
    }
    return _YBminusOnePointsButton;
}
- (UIButton *)YBaddAPointButton{
    if (!_YBaddAPointButton) {
        _YBaddAPointButton = [[UIButton alloc] init];
        _YBaddAPointButton.tag = 100;
        [_YBaddAPointButton addTarget:self action:@selector(YBbtnClick:) forControlEvents:UIControlEventTouchUpInside];
        _YBaddAPointButton.backgroundColor = [UIColor systemGreenColor];
        _YBaddAPointButton.layer.cornerRadius = 20.5f;
        _YBaddAPointButton.layer.masksToBounds = YES;
        [_YBaddAPointButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_YBaddAPointButton.titleLabel setFont:[UIFont systemFontOfSize:20]];
        [_YBaddAPointButton setTitle:@"+1" forState:UIControlStateNormal];
    }
    return _YBaddAPointButton;
}
@end
