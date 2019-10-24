//
//  PBScorecardTableViewCell.m
//  PocketBasketballScore
//
//  Created by bykj on 2019/10/23.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "PBScorecardTableViewCell.h"
#import "PBScorecardViewModel.h"

@interface PBScorecardTableViewCell()<UITextFieldDelegate>
@property(nonatomic, strong)UITextField *teamNameTextField;//队伍名称
@property(nonatomic, strong)UILabel *scoreColumnOneLbl;//分数第一列
@property(nonatomic, strong)UILabel *scoreColumnSecondLbl;//分数第二列
@property(nonatomic, strong)UILabel *scoreColumnThreeLbl;//分数第三列
@property(nonatomic, strong)UIButton *minusOnePointsButton;//减一分
@property(nonatomic, strong)UIButton *addAPointButton;//加一分
@property(nonatomic, strong)UIButton *addBinaryButton;//加二分
@property(nonatomic, strong)UIButton *addThreePointsButton;//加三分
@end
@implementation PBScorecardTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = [UIColor blueColor];
        [self.contentView addSubview:self.teamNameTextField];
        [self.contentView addSubview:self.scoreColumnOneLbl];
        [self.contentView addSubview:self.scoreColumnSecondLbl];
        [self.contentView addSubview:self.scoreColumnThreeLbl];
        [self.contentView addSubview:self.minusOnePointsButton];
        [self.contentView addSubview:self.addAPointButton];
        [self.contentView addSubview:self.addBinaryButton];
        [self.contentView addSubview:self.addThreePointsButton];
        
        [self.teamNameTextField mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(20);
            make.top.equalTo(self.contentView).offset(10);
            make.trailing.equalTo(self.contentView).offset(-20);
            make.height.mas_equalTo(25);
        }];
        [self.scoreColumnOneLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(32);
            make.top.equalTo(self.teamNameTextField.mas_bottom).offset(15);
            make.width.mas_equalTo((PBWIDTH - 144) / 3);
            make.height.mas_equalTo(120);
        }];
        [self.scoreColumnSecondLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.scoreColumnOneLbl.mas_trailing).offset(40);
            make.top.equalTo(self.teamNameTextField.mas_bottom).offset(15);
            make.width.mas_equalTo((PBWIDTH - 144) / 3);
            make.height.mas_equalTo(120);
        }];
        [self.scoreColumnThreeLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.scoreColumnSecondLbl.mas_trailing).offset(40);
            make.top.equalTo(self.teamNameTextField.mas_bottom).offset(15);
            make.width.mas_equalTo((PBWIDTH - 144) / 3);
            make.height.mas_equalTo(120);
        }];
        [self.minusOnePointsButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(40);
            make.top.equalTo(self.scoreColumnThreeLbl.mas_bottom).offset(15);
            make.width.mas_equalTo((PBWIDTH - 140) / 4);
            make.height.mas_equalTo(42);
        }];
        [self.addAPointButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.minusOnePointsButton.mas_trailing).offset(20);
            make.top.equalTo(self.scoreColumnThreeLbl.mas_bottom).offset(15);
            make.width.mas_equalTo((PBWIDTH - 140) / 4);
            make.height.mas_equalTo(42);
        }];
        [self.addBinaryButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.addAPointButton.mas_trailing).offset(20);
            make.top.equalTo(self.scoreColumnThreeLbl.mas_bottom).offset(15);
            make.width.mas_equalTo((PBWIDTH - 140) / 4);
            make.height.mas_equalTo(42);
        }];
        [self.addThreePointsButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.addBinaryButton.mas_trailing).offset(20);
            make.top.equalTo(self.scoreColumnThreeLbl.mas_bottom).offset(15);
            make.width.mas_equalTo((PBWIDTH - 140) / 4);
            make.height.mas_equalTo(42);
            make.bottom.equalTo(self.contentView).offset(-15);
        }];
    }
    return self;
}
- (void)setModel:(PBScorecardViewModel *)model{
    _model = model;
    self.teamNameTextField.text = _model.teamName;
}
#pragma mark - action
- (void)btnClick:(UIButton *)sender{
    if (sender.tag == 99) {
        NSLog(@"减一分~");
    }else if (sender.tag == 100){
        NSLog(@"加一分~");
    }else if (sender.tag == 101){
        NSLog(@"加二分~");
    }else if (sender.tag == 102){
        NSLog(@"加三分~");
    }
}
#pragma mark - 属性懒加载
- (UITextField *)teamNameTextField{
    if (!_teamNameTextField) {
        _teamNameTextField = [[UITextField alloc] init];
        _teamNameTextField.layer.cornerRadius = 4.0f;
        _teamNameTextField.layer.masksToBounds = YES;
        _teamNameTextField.delegate = self;
        _teamNameTextField.backgroundColor = [UIColor cyanColor];
        _teamNameTextField.textColor = [UIColor blackColor];
        _teamNameTextField.font = [UIFont systemFontOfSize:18];
    }
    return _teamNameTextField;
}
- (UILabel *)scoreColumnOneLbl{
    if (!_scoreColumnOneLbl) {
        _scoreColumnOneLbl = [[UILabel alloc] init];
        _scoreColumnOneLbl.backgroundColor = [UIColor blackColor];
        _scoreColumnOneLbl.layer.cornerRadius = 10.0f;
        _scoreColumnOneLbl.layer.masksToBounds = YES;
        _scoreColumnOneLbl.textColor = [UIColor whiteColor];
        _scoreColumnOneLbl.font = [UIFont boldSystemFontOfSize:100];
        _scoreColumnOneLbl.textAlignment = NSTextAlignmentCenter;
        _scoreColumnOneLbl.text = @"0";
    }
    return _scoreColumnOneLbl;
}
- (UILabel *)scoreColumnSecondLbl{
    if (!_scoreColumnSecondLbl) {
        _scoreColumnSecondLbl = [[UILabel alloc] init];
        _scoreColumnSecondLbl.backgroundColor = [UIColor blackColor];
        _scoreColumnSecondLbl.layer.cornerRadius = 10.0f;
        _scoreColumnSecondLbl.layer.masksToBounds = YES;
        _scoreColumnSecondLbl.textColor = [UIColor whiteColor];
        _scoreColumnSecondLbl.font = [UIFont boldSystemFontOfSize:100];
        _scoreColumnSecondLbl.textAlignment = NSTextAlignmentCenter;
        _scoreColumnSecondLbl.text = @"0";
    }
    return _scoreColumnSecondLbl;
}
- (UILabel *)scoreColumnThreeLbl{
    if (!_scoreColumnThreeLbl) {
        _scoreColumnThreeLbl = [[UILabel alloc] init];
        _scoreColumnThreeLbl.backgroundColor = [UIColor blackColor];
        _scoreColumnThreeLbl.layer.cornerRadius = 10.0f;
        _scoreColumnThreeLbl.layer.masksToBounds = YES;
        _scoreColumnThreeLbl.textColor = [UIColor whiteColor];
        _scoreColumnThreeLbl.font = [UIFont boldSystemFontOfSize:100];
        _scoreColumnThreeLbl.textAlignment = NSTextAlignmentCenter;
        _scoreColumnThreeLbl.text = @"0";
    }
    return _scoreColumnThreeLbl;
}
- (UIButton *)minusOnePointsButton{
    if (!_minusOnePointsButton) {
        _minusOnePointsButton = [[UIButton alloc] init];
        _minusOnePointsButton.tag = 99;
        [_minusOnePointsButton addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
        _minusOnePointsButton.backgroundColor = [UIColor orangeColor];
        _minusOnePointsButton.layer.cornerRadius = 20.5f;
        _minusOnePointsButton.layer.masksToBounds = YES;
        [_minusOnePointsButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_minusOnePointsButton.titleLabel setFont:[UIFont systemFontOfSize:20]];
        [_minusOnePointsButton setTitle:@"-1" forState:UIControlStateNormal];
    }
    return _minusOnePointsButton;
}
- (UIButton *)addAPointButton{
    if (!_addAPointButton) {
        _addAPointButton = [[UIButton alloc] init];
        _addAPointButton.tag = 100;
        [_addAPointButton addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
        _addAPointButton.backgroundColor = [UIColor orangeColor];
        _addAPointButton.layer.cornerRadius = 20.5f;
        _addAPointButton.layer.masksToBounds = YES;
        [_addAPointButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_addAPointButton.titleLabel setFont:[UIFont systemFontOfSize:20]];
        [_addAPointButton setTitle:@"+1" forState:UIControlStateNormal];
    }
    return _addAPointButton;
}
- (UIButton *)addBinaryButton{
    if (!_addBinaryButton) {
        _addBinaryButton = [[UIButton alloc] init];
        _addBinaryButton.tag = 101;
        [_addBinaryButton addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
        _addBinaryButton.backgroundColor = [UIColor orangeColor];
        _addBinaryButton.layer.cornerRadius = 20.5f;
        _addBinaryButton.layer.masksToBounds = YES;
        [_addBinaryButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_addBinaryButton.titleLabel setFont:[UIFont systemFontOfSize:20]];
        [_addBinaryButton setTitle:@"+2" forState:UIControlStateNormal];
    }
    return _addBinaryButton;
}
- (UIButton *)addThreePointsButton{
    if (!_addThreePointsButton) {
        _addThreePointsButton = [[UIButton alloc] init];
        _addThreePointsButton.tag = 102;
        [_addThreePointsButton addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
        _addThreePointsButton.backgroundColor = [UIColor orangeColor];
      _addThreePointsButton.layer.cornerRadius = 20.5f;
        _addThreePointsButton.layer.masksToBounds = YES;
        [_addThreePointsButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_addThreePointsButton.titleLabel setFont:[UIFont systemFontOfSize:20]];
        [_addThreePointsButton setTitle:@"+3" forState:UIControlStateNormal];
    }
    return _addThreePointsButton;
}
@end
