//
//  PFScorecardTableViewCell.m
//  PocketFootballScore
//
//  Created by bykj on 2019/10/23.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "PFScorecardTableViewCell.h"
#import "PFScorecardViewModel.h"

@interface PFScorecardTableViewCell()<UITextFieldDelegate>
@property(nonatomic, strong)UITextField *PFteamNameTextField;//队伍名称
@property(nonatomic, strong)UILabel *PFscoreColumnOneLbl;//分数第一列
@property(nonatomic, strong)UILabel *PFscoreColumnSecondLbl;//分数第二列
@property(nonatomic, strong)UIButton *PFminusOnePointsButton;//减一分
@property(nonatomic, strong)UIButton *PFaddAPointButton;//加一分

@end
@implementation PFScorecardTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = [UIColor systemBlueColor];
        [self.contentView addSubview:self.PFteamNameTextField];
        [self.contentView addSubview:self.PFscoreColumnOneLbl];
        [self.contentView addSubview:self.PFscoreColumnSecondLbl];
        [self.contentView addSubview:self.PFminusOnePointsButton];
        [self.contentView addSubview:self.PFaddAPointButton];
        
        [self.PFteamNameTextField mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView);
            make.top.equalTo(self.contentView);
            make.trailing.equalTo(self.contentView);
            make.height.mas_equalTo(40);
        }];
        [self.PFscoreColumnOneLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(32);
            make.top.equalTo(self.PFteamNameTextField.mas_bottom).offset(15);
            make.width.mas_equalTo((PFWIDTH - 144) / 2);
            make.height.mas_equalTo(120);
        }];
        [self.PFscoreColumnSecondLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.PFscoreColumnOneLbl.mas_trailing).offset(80);
            make.top.equalTo(self.PFteamNameTextField.mas_bottom).offset(15);
            make.width.mas_equalTo((PFWIDTH - 144) / 2);
            make.height.mas_equalTo(120);
        }];
        [self.PFminusOnePointsButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(self.PFscoreColumnOneLbl);
            make.top.equalTo(self.PFscoreColumnSecondLbl.mas_bottom).offset(15);
            make.width.mas_equalTo((PFWIDTH - 140) / 4);
            make.height.mas_equalTo(42);
        }];
        [self.PFaddAPointButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(self.PFscoreColumnSecondLbl);
            make.top.equalTo(self.PFscoreColumnSecondLbl.mas_bottom).offset(15);
            make.width.mas_equalTo((PFWIDTH - 140) / 4);
            make.height.mas_equalTo(42);
            make.bottom.equalTo(self.contentView).offset(-15);
        }];
    }
    return self;
}
- (void)setModel:(PFScorecardViewModel *)model{
    _model = model;
    self.PFteamNameTextField.text = _model.PFteamName;
    NSUInteger singleDigits = 0;
    NSUInteger tenDigits = 0;
    if(self.model.score >= 10){
        singleDigits = self.model.score % 10;
        tenDigits = (self.model.score - singleDigits) / 10;
    }else{
        singleDigits = self.model.score;
    }
    self.PFscoreColumnSecondLbl.text = [NSString stringWithFormat:@"%ld",singleDigits];
    self.PFscoreColumnOneLbl.text = [NSString stringWithFormat:@"%ld",tenDigits];
}
#pragma mark - action
- (void)PFbtnClick:(UIButton *)sender{
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
        self.PFscoreColumnSecondLbl.text = [NSString stringWithFormat:@"%ld",singleDigits];
        self.PFscoreColumnSecondLbl.text = [NSString stringWithFormat:@"%ld",tenDigits];
        if (self.PFScorecardB) {
            self.PFScorecardB(self);
        }
}
#pragma mark - UITextFieldDelegate
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    self.model.PFteamName = textField.text;
    self.type = 0;
    if (self.PFScorecardEditB) {
        self.PFScorecardEditB(self);
    }
    return YES;
}
- (void)textFieldDidBeginEditing:(UITextField *)textField{
    self.model.PFteamName = textField.text;
}
- (BOOL)textFieldShouldEndEditing:(UITextField *)textField{
    self.model.PFteamName = textField.text;
    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    self.type = 1;
    if (self.PFScorecardEditB) {
        self.PFScorecardEditB(self);
    }
    self.model.PFteamName = textField.text;
}
#pragma mark - 属性懒加载
- (UITextField *)PFteamNameTextField{
    if (!_PFteamNameTextField) {
        _PFteamNameTextField = [[UITextField alloc] init];
        _PFteamNameTextField.layer.cornerRadius = 4.0f;
        _PFteamNameTextField.layer.masksToBounds = YES;
        _PFteamNameTextField.delegate = self;
        _PFteamNameTextField.backgroundColor = [UIColor systemPurpleColor];
        _PFteamNameTextField.textColor = [UIColor blackColor];
        _PFteamNameTextField.textAlignment = NSTextAlignmentCenter;
        _PFteamNameTextField.font = [UIFont systemFontOfSize:25];
    }
    return _PFteamNameTextField;
}
- (UILabel *)PFscoreColumnOneLbl{
    if (!_PFscoreColumnOneLbl) {
        _PFscoreColumnOneLbl = [[UILabel alloc] init];
        _PFscoreColumnOneLbl.backgroundColor = [UIColor blackColor];
        _PFscoreColumnOneLbl.layer.cornerRadius = 10.0f;
        _PFscoreColumnOneLbl.layer.masksToBounds = YES;
        _PFscoreColumnOneLbl.textColor = [UIColor whiteColor];
        _PFscoreColumnOneLbl.font = [UIFont boldSystemFontOfSize:100];
        _PFscoreColumnOneLbl.textAlignment = NSTextAlignmentCenter;
        _PFscoreColumnOneLbl.text = @"0";
    }
    return _PFscoreColumnOneLbl;
}
- (UILabel *)PFscoreColumnSecondLbl{
    if (!_PFscoreColumnSecondLbl) {
        _PFscoreColumnSecondLbl = [[UILabel alloc] init];
        _PFscoreColumnSecondLbl.backgroundColor = [UIColor blackColor];
        _PFscoreColumnSecondLbl.layer.cornerRadius = 10.0f;
        _PFscoreColumnSecondLbl.layer.masksToBounds = YES;
        _PFscoreColumnSecondLbl.textColor = [UIColor whiteColor];
        _PFscoreColumnSecondLbl.font = [UIFont boldSystemFontOfSize:100];
        _PFscoreColumnSecondLbl.textAlignment = NSTextAlignmentCenter;
        _PFscoreColumnSecondLbl.text = @"0";
    }
    return _PFscoreColumnSecondLbl;
}
- (UIButton *)PFminusOnePointsButton{
    if (!_PFminusOnePointsButton) {
        _PFminusOnePointsButton = [[UIButton alloc] init];
        _PFminusOnePointsButton.tag = 99;
        [_PFminusOnePointsButton addTarget:self action:@selector(PFbtnClick:) forControlEvents:UIControlEventTouchUpInside];
        _PFminusOnePointsButton.backgroundColor = [UIColor systemRedColor];
        _PFminusOnePointsButton.layer.cornerRadius = 20.5f;
        _PFminusOnePointsButton.layer.masksToBounds = YES;
        [_PFminusOnePointsButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_PFminusOnePointsButton.titleLabel setFont:[UIFont systemFontOfSize:20]];
        [_PFminusOnePointsButton setTitle:@"-1" forState:UIControlStateNormal];
    }
    return _PFminusOnePointsButton;
}
- (UIButton *)PFaddAPointButton{
    if (!_PFaddAPointButton) {
        _PFaddAPointButton = [[UIButton alloc] init];
        _PFaddAPointButton.tag = 100;
        [_PFaddAPointButton addTarget:self action:@selector(PFbtnClick:) forControlEvents:UIControlEventTouchUpInside];
        _PFaddAPointButton.backgroundColor = [UIColor systemGreenColor];
        _PFaddAPointButton.layer.cornerRadius = 20.5f;
        _PFaddAPointButton.layer.masksToBounds = YES;
        [_PFaddAPointButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_PFaddAPointButton.titleLabel setFont:[UIFont systemFontOfSize:20]];
        [_PFaddAPointButton setTitle:@"+1" forState:UIControlStateNormal];
    }
    return _PFaddAPointButton;
}
@end
