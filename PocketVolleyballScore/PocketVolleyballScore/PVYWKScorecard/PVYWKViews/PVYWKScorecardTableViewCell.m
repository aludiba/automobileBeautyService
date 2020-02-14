//
//  PVYWKScorecardTableViewCell.m
//  PocketFootballScore
//
//  Created by bykj on 2019/10/23.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "PVYWKScorecardTableViewCell.h"
#import "PVYWKScorecardViewModel.h"

@interface PVYWKScorecardTableViewCell()<UITextFieldDelegate>
@property(nonatomic, strong)UITextField *PVYWKteamNameTextField;//队伍名称
@property(nonatomic, strong)UILabel *PVYWKscoreColumnOneLbl;//分数第一列
@property(nonatomic, strong)UILabel *PVYWKscoreColumnSecondLbl;//分数第二列
@property(nonatomic, strong)UIButton *PVYWKminusOnePointsButton;//减一分
@property(nonatomic, strong)UIButton *PVYWKaddAPointButton;//加一分

@end
@implementation PVYWKScorecardTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = [UIColor cyanColor];
        [self.contentView addSubview:self.PVYWKteamNameTextField];
        [self.contentView addSubview:self.PVYWKscoreColumnOneLbl];
        [self.contentView addSubview:self.PVYWKscoreColumnSecondLbl];
        [self.contentView addSubview:self.PVYWKminusOnePointsButton];
        [self.contentView addSubview:self.PVYWKaddAPointButton];
        
        [self.PVYWKteamNameTextField mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView);
            make.top.equalTo(self.contentView);
            make.trailing.equalTo(self.contentView);
            make.height.mas_equalTo(25);
        }];
        [self.PVYWKscoreColumnOneLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(64);
            make.top.equalTo(self.PVYWKteamNameTextField.mas_bottom).offset(10);
            make.width.mas_equalTo((PVYWKWIDTH - 208) / 2);
            make.height.mas_equalTo(60);
        }];
        [self.PVYWKscoreColumnSecondLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.PVYWKscoreColumnOneLbl.mas_trailing).offset(80);
            make.top.equalTo(self.PVYWKteamNameTextField.mas_bottom).offset(10);
            make.width.mas_equalTo((PVYWKWIDTH - 208) / 2);
            make.height.mas_equalTo(60);
        }];
        [self.PVYWKminusOnePointsButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(self.PVYWKscoreColumnOneLbl);
            make.top.equalTo(self.PVYWKscoreColumnSecondLbl.mas_bottom).offset(10);
            make.width.mas_equalTo(42);
            make.height.mas_equalTo(42);
        }];
        [self.PVYWKaddAPointButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(self.PVYWKscoreColumnSecondLbl);
            make.top.equalTo(self.PVYWKscoreColumnSecondLbl.mas_bottom).offset(15);
            make.width.mas_equalTo(42);
            make.height.mas_equalTo(42);
            make.bottom.equalTo(self.contentView).offset(-10);
        }];
    }
    return self;
}
- (void)setModel:(PVYWKScorecardViewModel *)model{
    _model = model;
    self.PVYWKteamNameTextField.text = _model.PVYWKteamName;
    NSUInteger singleDigits = 0;
    NSUInteger tenDigits = 0;
    if(self.model.score >= 10){
        singleDigits = self.model.score % 10;
        tenDigits = (self.model.score - singleDigits) / 10;
    }else{
        singleDigits = self.model.score;
    }
    self.PVYWKscoreColumnSecondLbl.text = [NSString stringWithFormat:@"%ld",singleDigits];
    self.PVYWKscoreColumnOneLbl.text = [NSString stringWithFormat:@"%ld",tenDigits];
}
#pragma mark - action
- (void)PVYWKbtnClick:(UIButton *)sender{
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
        self.PVYWKscoreColumnSecondLbl.text = [NSString stringWithFormat:@"%ld",singleDigits];
        self.PVYWKscoreColumnSecondLbl.text = [NSString stringWithFormat:@"%ld",tenDigits];
        if (self.PVYWKScorecardB) {
            self.PVYWKScorecardB(self);
        }
}
#pragma mark - UITextFieldDelegate
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    self.model.PVYWKteamName = textField.text;
    self.type = 0;
    if (self.PVYWKScorecardEditB) {
        self.PVYWKScorecardEditB(self);
    }
    return YES;
}
- (void)textFieldDidBeginEditing:(UITextField *)textField{
    self.model.PVYWKteamName = textField.text;
}
- (BOOL)textFieldShouldEndEditing:(UITextField *)textField{
    self.model.PVYWKteamName = textField.text;
    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    self.type = 1;
    if (self.PVYWKScorecardEditB) {
        self.PVYWKScorecardEditB(self);
    }
    self.model.PVYWKteamName = textField.text;
}
#pragma mark - 属性懒加载
- (UITextField *)PVYWKteamNameTextField{
    if (!_PVYWKteamNameTextField) {
        _PVYWKteamNameTextField = [[UITextField alloc] init];
        _PVYWKteamNameTextField.layer.cornerRadius = 4.0f;
        _PVYWKteamNameTextField.layer.masksToBounds = YES;
        _PVYWKteamNameTextField.delegate = self;
        _PVYWKteamNameTextField.backgroundColor = [UIColor cyanColor];
        _PVYWKteamNameTextField.textColor = [UIColor blackColor];
        _PVYWKteamNameTextField.textAlignment = NSTextAlignmentCenter;
        _PVYWKteamNameTextField.font = [UIFont boldSystemFontOfSize:20];
    }
    return _PVYWKteamNameTextField;
}
- (UILabel *)PVYWKscoreColumnOneLbl{
    if (!_PVYWKscoreColumnOneLbl) {
        _PVYWKscoreColumnOneLbl = [[UILabel alloc] init];
        _PVYWKscoreColumnOneLbl.backgroundColor = [UIColor blackColor];
        _PVYWKscoreColumnOneLbl.layer.cornerRadius = 15.0f;
        _PVYWKscoreColumnOneLbl.layer.masksToBounds = YES;
        _PVYWKscoreColumnOneLbl.textColor = [UIColor whiteColor];
        _PVYWKscoreColumnOneLbl.font = [UIFont boldSystemFontOfSize:50];
        _PVYWKscoreColumnOneLbl.textAlignment = NSTextAlignmentCenter;
        _PVYWKscoreColumnOneLbl.text = @"0";
    }
    return _PVYWKscoreColumnOneLbl;
}
- (UILabel *)PVYWKscoreColumnSecondLbl{
    if (!_PVYWKscoreColumnSecondLbl) {
        _PVYWKscoreColumnSecondLbl = [[UILabel alloc] init];
        _PVYWKscoreColumnSecondLbl.backgroundColor = [UIColor blackColor];
        _PVYWKscoreColumnSecondLbl.layer.cornerRadius = 15.0f;
        _PVYWKscoreColumnSecondLbl.layer.masksToBounds = YES;
        _PVYWKscoreColumnSecondLbl.textColor = [UIColor whiteColor];
        _PVYWKscoreColumnSecondLbl.font = [UIFont boldSystemFontOfSize:50];
        _PVYWKscoreColumnSecondLbl.textAlignment = NSTextAlignmentCenter;
        _PVYWKscoreColumnSecondLbl.text = @"0";
    }
    return _PVYWKscoreColumnSecondLbl;
}
- (UIButton *)PVYWKminusOnePointsButton{
    if (!_PVYWKminusOnePointsButton) {
        _PVYWKminusOnePointsButton = [[UIButton alloc] init];
        _PVYWKminusOnePointsButton.tag = 99;
        [_PVYWKminusOnePointsButton addTarget:self action:@selector(PVYWKbtnClick:) forControlEvents:UIControlEventTouchUpInside];
        _PVYWKminusOnePointsButton.backgroundColor = [UIColor systemRedColor];
        _PVYWKminusOnePointsButton.layer.cornerRadius = 20.5f;
        _PVYWKminusOnePointsButton.layer.masksToBounds = YES;
        [_PVYWKminusOnePointsButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_PVYWKminusOnePointsButton.titleLabel setFont:[UIFont systemFontOfSize:20]];
        [_PVYWKminusOnePointsButton setTitle:@"-1" forState:UIControlStateNormal];
    }
    return _PVYWKminusOnePointsButton;
}
- (UIButton *)PVYWKaddAPointButton{
    if (!_PVYWKaddAPointButton) {
        _PVYWKaddAPointButton = [[UIButton alloc] init];
        _PVYWKaddAPointButton.tag = 100;
        [_PVYWKaddAPointButton addTarget:self action:@selector(PVYWKbtnClick:) forControlEvents:UIControlEventTouchUpInside];
        _PVYWKaddAPointButton.backgroundColor = [UIColor systemGreenColor];
        _PVYWKaddAPointButton.layer.cornerRadius = 20.5f;
        _PVYWKaddAPointButton.layer.masksToBounds = YES;
        [_PVYWKaddAPointButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_PVYWKaddAPointButton.titleLabel setFont:[UIFont systemFontOfSize:20]];
        [_PVYWKaddAPointButton setTitle:@"+1" forState:UIControlStateNormal];
    }
    return _PVYWKaddAPointButton;
}
@end
