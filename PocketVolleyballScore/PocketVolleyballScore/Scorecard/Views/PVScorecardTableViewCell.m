//
//  PVScorecardTableViewCell.m
//  PocketFootballScore
//
//  Created by bykj on 2019/10/23.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "PVScorecardTableViewCell.h"
#import "PVScorecardViewModel.h"

@interface PVScorecardTableViewCell()<UITextFieldDelegate>
@property(nonatomic, strong)UITextField *PVteamNameTextField;//队伍名称
@property(nonatomic, strong)UILabel *PVscoreColumnOneLbl;//分数第一列
@property(nonatomic, strong)UILabel *PVscoreColumnSecondLbl;//分数第二列
@property(nonatomic, strong)UIButton *PVminusOnePointsButton;//减一分
@property(nonatomic, strong)UIButton *PVaddAPointButton;//加一分

@end
@implementation PVScorecardTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = [UIColor cyanColor];
        [self.contentView addSubview:self.PVteamNameTextField];
        [self.contentView addSubview:self.PVscoreColumnOneLbl];
        [self.contentView addSubview:self.PVscoreColumnSecondLbl];
        [self.contentView addSubview:self.PVminusOnePointsButton];
        [self.contentView addSubview:self.PVaddAPointButton];
        
        [self.PVteamNameTextField mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView);
            make.top.equalTo(self.contentView);
            make.trailing.equalTo(self.contentView);
            make.height.mas_equalTo(40);
        }];
        [self.PVscoreColumnOneLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(32);
            make.top.equalTo(self.PVteamNameTextField.mas_bottom).offset(15);
            make.width.mas_equalTo((PVWIDTH - 144) / 2);
            make.height.mas_equalTo(120);
        }];
        [self.PVscoreColumnSecondLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.PVscoreColumnOneLbl.mas_trailing).offset(80);
            make.top.equalTo(self.PVteamNameTextField.mas_bottom).offset(15);
            make.width.mas_equalTo((PVWIDTH - 144) / 2);
            make.height.mas_equalTo(120);
        }];
        [self.PVminusOnePointsButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(self.PVscoreColumnOneLbl);
            make.top.equalTo(self.PVscoreColumnSecondLbl.mas_bottom).offset(15);
            make.width.mas_equalTo(42);
            make.height.mas_equalTo(42);
        }];
        [self.PVaddAPointButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(self.PVscoreColumnSecondLbl);
            make.top.equalTo(self.PVscoreColumnSecondLbl.mas_bottom).offset(15);
            make.width.mas_equalTo(42);
            make.height.mas_equalTo(42);
            make.bottom.equalTo(self.contentView).offset(-15);
        }];
    }
    return self;
}
- (void)setModel:(PVScorecardViewModel *)model{
    _model = model;
    self.PVteamNameTextField.text = _model.PVteamName;
    NSUInteger singleDigits = 0;
    NSUInteger tenDigits = 0;
    if(self.model.score >= 10){
        singleDigits = self.model.score % 10;
        tenDigits = (self.model.score - singleDigits) / 10;
    }else{
        singleDigits = self.model.score;
    }
    self.PVscoreColumnSecondLbl.text = [NSString stringWithFormat:@"%ld",singleDigits];
    self.PVscoreColumnOneLbl.text = [NSString stringWithFormat:@"%ld",tenDigits];
}
#pragma mark - action
- (void)PVbtnClick:(UIButton *)sender{
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
        self.PVscoreColumnSecondLbl.text = [NSString stringWithFormat:@"%ld",singleDigits];
        self.PVscoreColumnSecondLbl.text = [NSString stringWithFormat:@"%ld",tenDigits];
        if (self.PVScorecardB) {
            self.PVScorecardB(self);
        }
}
#pragma mark - UITextFieldDelegate
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    self.model.PVteamName = textField.text;
    self.type = 0;
    if (self.PVScorecardEditB) {
        self.PVScorecardEditB(self);
    }
    return YES;
}
- (void)textFieldDidBeginEditing:(UITextField *)textField{
    self.model.PVteamName = textField.text;
}
- (BOOL)textFieldShouldEndEditing:(UITextField *)textField{
    self.model.PVteamName = textField.text;
    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    self.type = 1;
    if (self.PVScorecardEditB) {
        self.PVScorecardEditB(self);
    }
    self.model.PVteamName = textField.text;
}
#pragma mark - 属性懒加载
- (UITextField *)PVteamNameTextField{
    if (!_PVteamNameTextField) {
        _PVteamNameTextField = [[UITextField alloc] init];
        _PVteamNameTextField.layer.cornerRadius = 4.0f;
        _PVteamNameTextField.layer.masksToBounds = YES;
        _PVteamNameTextField.delegate = self;
        _PVteamNameTextField.backgroundColor = [UIColor cyanColor];
        _PVteamNameTextField.textColor = [UIColor blackColor];
        _PVteamNameTextField.textAlignment = NSTextAlignmentCenter;
        _PVteamNameTextField.font = [UIFont systemFontOfSize:25];
    }
    return _PVteamNameTextField;
}
- (UILabel *)PVscoreColumnOneLbl{
    if (!_PVscoreColumnOneLbl) {
        _PVscoreColumnOneLbl = [[UILabel alloc] init];
        _PVscoreColumnOneLbl.backgroundColor = [UIColor blackColor];
        _PVscoreColumnOneLbl.layer.cornerRadius = 30.0f;
        _PVscoreColumnOneLbl.layer.masksToBounds = YES;
        _PVscoreColumnOneLbl.textColor = [UIColor whiteColor];
        _PVscoreColumnOneLbl.font = [UIFont boldSystemFontOfSize:100];
        _PVscoreColumnOneLbl.textAlignment = NSTextAlignmentCenter;
        _PVscoreColumnOneLbl.text = @"0";
    }
    return _PVscoreColumnOneLbl;
}
- (UILabel *)PVscoreColumnSecondLbl{
    if (!_PVscoreColumnSecondLbl) {
        _PVscoreColumnSecondLbl = [[UILabel alloc] init];
        _PVscoreColumnSecondLbl.backgroundColor = [UIColor blackColor];
        _PVscoreColumnSecondLbl.layer.cornerRadius = 30.0f;
        _PVscoreColumnSecondLbl.layer.masksToBounds = YES;
        _PVscoreColumnSecondLbl.textColor = [UIColor whiteColor];
        _PVscoreColumnSecondLbl.font = [UIFont boldSystemFontOfSize:100];
        _PVscoreColumnSecondLbl.textAlignment = NSTextAlignmentCenter;
        _PVscoreColumnSecondLbl.text = @"0";
    }
    return _PVscoreColumnSecondLbl;
}
- (UIButton *)PVminusOnePointsButton{
    if (!_PVminusOnePointsButton) {
        _PVminusOnePointsButton = [[UIButton alloc] init];
        _PVminusOnePointsButton.tag = 99;
        [_PVminusOnePointsButton addTarget:self action:@selector(PVbtnClick:) forControlEvents:UIControlEventTouchUpInside];
        _PVminusOnePointsButton.backgroundColor = [UIColor systemRedColor];
        _PVminusOnePointsButton.layer.cornerRadius = 20.5f;
        _PVminusOnePointsButton.layer.masksToBounds = YES;
        [_PVminusOnePointsButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_PVminusOnePointsButton.titleLabel setFont:[UIFont systemFontOfSize:20]];
        [_PVminusOnePointsButton setTitle:@"-1" forState:UIControlStateNormal];
    }
    return _PVminusOnePointsButton;
}
- (UIButton *)PVaddAPointButton{
    if (!_PVaddAPointButton) {
        _PVaddAPointButton = [[UIButton alloc] init];
        _PVaddAPointButton.tag = 100;
        [_PVaddAPointButton addTarget:self action:@selector(PVbtnClick:) forControlEvents:UIControlEventTouchUpInside];
        _PVaddAPointButton.backgroundColor = [UIColor systemGreenColor];
        _PVaddAPointButton.layer.cornerRadius = 20.5f;
        _PVaddAPointButton.layer.masksToBounds = YES;
        [_PVaddAPointButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_PVaddAPointButton.titleLabel setFont:[UIFont systemFontOfSize:20]];
        [_PVaddAPointButton setTitle:@"+1" forState:UIControlStateNormal];
    }
    return _PVaddAPointButton;
}
@end
