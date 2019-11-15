//
//  GFScorecardTableViewCell.m
//  PocketFootballScore
//
//  Created by bykj on 2019/10/23.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "GFScorecardTableViewCell.h"
#import "GFScorecardViewModel.h"

@interface GFScorecardTableViewCell()<UITextFieldDelegate>
@property(nonatomic, strong)UITextField *GFteamNameTextField;//队伍名称
@property(nonatomic, strong)UILabel *GFscoreColumnOneLbl;//分数第一列
@property(nonatomic, strong)UILabel *GFscoreColumnSecondLbl;//分数第二列
@property(nonatomic, strong)UIButton *GFminusOnePointsButton;//减一分
@property(nonatomic, strong)UIButton *GFaddAPointButton;//加一分

@end
@implementation GFScorecardTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = [UIColor cyanColor];
        [self.contentView addSubview:self.GFteamNameTextField];
        [self.contentView addSubview:self.GFscoreColumnOneLbl];
        [self.contentView addSubview:self.GFscoreColumnSecondLbl];
        [self.contentView addSubview:self.GFminusOnePointsButton];
        [self.contentView addSubview:self.GFaddAPointButton];
        
        [self.GFteamNameTextField mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView);
            make.top.equalTo(self.contentView);
            make.trailing.equalTo(self.contentView);
            make.height.mas_equalTo(40);
        }];
        [self.GFscoreColumnOneLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(32);
            make.top.equalTo(self.GFteamNameTextField.mas_bottom).offset(15);
            make.width.mas_equalTo((GFWIDTH - 144) / 2);
            make.height.mas_equalTo(120);
        }];
        [self.GFscoreColumnSecondLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.GFscoreColumnOneLbl.mas_trailing).offset(80);
            make.top.equalTo(self.GFteamNameTextField.mas_bottom).offset(15);
            make.width.mas_equalTo((GFWIDTH - 144) / 2);
            make.height.mas_equalTo(120);
        }];
        [self.GFminusOnePointsButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(self.GFscoreColumnOneLbl);
            make.top.equalTo(self.GFscoreColumnSecondLbl.mas_bottom).offset(15);
            make.width.mas_equalTo(42);
            make.height.mas_equalTo(42);
        }];
        [self.GFaddAPointButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(self.GFscoreColumnSecondLbl);
            make.top.equalTo(self.GFscoreColumnSecondLbl.mas_bottom).offset(15);
            make.width.mas_equalTo(42);
            make.height.mas_equalTo(42);
            make.bottom.equalTo(self.contentView).offset(-15);
        }];
    }
    return self;
}
- (void)setModel:(GFScorecardViewModel *)model{
    _model = model;
    self.GFteamNameTextField.text = _model.GFteamName;
    NSUInteger singleDigits = 0;
    NSUInteger tenDigits = 0;
    if(self.model.score >= 10){
        singleDigits = self.model.score % 10;
        tenDigits = (self.model.score - singleDigits) / 10;
    }else{
        singleDigits = self.model.score;
    }
    self.GFscoreColumnSecondLbl.text = [NSString stringWithFormat:@"%ld",singleDigits];
    self.GFscoreColumnOneLbl.text = [NSString stringWithFormat:@"%ld",tenDigits];
}
#pragma mark - action
- (void)GFbtnClick:(UIButton *)sender{
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
        self.GFscoreColumnSecondLbl.text = [NSString stringWithFormat:@"%ld",singleDigits];
        self.GFscoreColumnSecondLbl.text = [NSString stringWithFormat:@"%ld",tenDigits];
        if (self.GFScorecardB) {
            self.GFScorecardB(self);
        }
}
#pragma mark - UITextFieldDelegate
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    self.model.GFteamName = textField.text;
    self.type = 0;
    if (self.GFScorecardEditB) {
        self.GFScorecardEditB(self);
    }
    return YES;
}
- (void)textFieldDidBeginEditing:(UITextField *)textField{
    self.model.GFteamName = textField.text;
}
- (BOOL)textFieldShouldEndEditing:(UITextField *)textField{
    self.model.GFteamName = textField.text;
    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    self.type = 1;
    if (self.GFScorecardEditB) {
        self.GFScorecardEditB(self);
    }
    self.model.GFteamName = textField.text;
}
#pragma mark - 属性懒加载
- (UITextField *)GFteamNameTextField{
    if (!_GFteamNameTextField) {
        _GFteamNameTextField = [[UITextField alloc] init];
        _GFteamNameTextField.layer.cornerRadius = 4.0f;
        _GFteamNameTextField.layer.masksToBounds = YES;
        _GFteamNameTextField.delegate = self;
        _GFteamNameTextField.backgroundColor = [UIColor cyanColor];
        _GFteamNameTextField.textColor = [UIColor blackColor];
        _GFteamNameTextField.textAlignment = NSTextAlignmentCenter;
        _GFteamNameTextField.font = [UIFont systemFontOfSize:25];
    }
    return _GFteamNameTextField;
}
- (UILabel *)GFscoreColumnOneLbl{
    if (!_GFscoreColumnOneLbl) {
        _GFscoreColumnOneLbl = [[UILabel alloc] init];
        _GFscoreColumnOneLbl.backgroundColor = [UIColor blackColor];
        _GFscoreColumnOneLbl.layer.cornerRadius = 30.0f;
        _GFscoreColumnOneLbl.layer.masksToBounds = YES;
        _GFscoreColumnOneLbl.textColor = [UIColor whiteColor];
        _GFscoreColumnOneLbl.font = [UIFont boldSystemFontOfSize:100];
        _GFscoreColumnOneLbl.textAlignment = NSTextAlignmentCenter;
        _GFscoreColumnOneLbl.text = @"0";
    }
    return _GFscoreColumnOneLbl;
}
- (UILabel *)GFscoreColumnSecondLbl{
    if (!_GFscoreColumnSecondLbl) {
        _GFscoreColumnSecondLbl = [[UILabel alloc] init];
        _GFscoreColumnSecondLbl.backgroundColor = [UIColor blackColor];
        _GFscoreColumnSecondLbl.layer.cornerRadius = 30.0f;
        _GFscoreColumnSecondLbl.layer.masksToBounds = YES;
        _GFscoreColumnSecondLbl.textColor = [UIColor whiteColor];
        _GFscoreColumnSecondLbl.font = [UIFont boldSystemFontOfSize:100];
        _GFscoreColumnSecondLbl.textAlignment = NSTextAlignmentCenter;
        _GFscoreColumnSecondLbl.text = @"0";
    }
    return _GFscoreColumnSecondLbl;
}
- (UIButton *)GFminusOnePointsButton{
    if (!_GFminusOnePointsButton) {
        _GFminusOnePointsButton = [[UIButton alloc] init];
        _GFminusOnePointsButton.tag = 99;
        [_GFminusOnePointsButton addTarget:self action:@selector(GFbtnClick:) forControlEvents:UIControlEventTouchUpInside];
        _GFminusOnePointsButton.backgroundColor = [UIColor systemRedColor];
        _GFminusOnePointsButton.layer.cornerRadius = 20.5f;
        _GFminusOnePointsButton.layer.masksToBounds = YES;
        [_GFminusOnePointsButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_GFminusOnePointsButton.titleLabel setFont:[UIFont systemFontOfSize:20]];
        [_GFminusOnePointsButton setTitle:@"-1" forState:UIControlStateNormal];
    }
    return _GFminusOnePointsButton;
}
- (UIButton *)GFaddAPointButton{
    if (!_GFaddAPointButton) {
        _GFaddAPointButton = [[UIButton alloc] init];
        _GFaddAPointButton.tag = 100;
        [_GFaddAPointButton addTarget:self action:@selector(GFbtnClick:) forControlEvents:UIControlEventTouchUpInside];
        _GFaddAPointButton.backgroundColor = [UIColor systemGreenColor];
        _GFaddAPointButton.layer.cornerRadius = 20.5f;
        _GFaddAPointButton.layer.masksToBounds = YES;
        [_GFaddAPointButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_GFaddAPointButton.titleLabel setFont:[UIFont systemFontOfSize:20]];
        [_GFaddAPointButton setTitle:@"+1" forState:UIControlStateNormal];
    }
    return _GFaddAPointButton;
}
@end
