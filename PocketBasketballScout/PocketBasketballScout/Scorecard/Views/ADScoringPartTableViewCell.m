//
//  ADScoringPartTableViewCell.m
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import "ADScoringPartTableViewCell.h"
#import "ADScorecardViewModel.h"

@interface ADScoringPartTableViewCell()
@property(nonatomic, strong)UILabel *ADRightScoreLabel;//右边得分
@property(nonatomic, strong)UIButton *ADRightScoreAddButton;//右边得1分按钮
@property(nonatomic, strong)UIButton *ADRightScoreAddTwoButton;//右边得2分按钮
@property(nonatomic, strong)UIButton *ADRightScoreAddThreeButton;//右边得3分按钮

@property(nonatomic, strong)UILabel *ADVSLabel;//VS标识

@property(nonatomic, strong)UILabel *ADLeftScoreLabel;//左边得分
@property(nonatomic, strong)UIButton *ADLeftScoreAddButton;//左边得1分按钮
@property(nonatomic, strong)UIButton *ADLeftScoreAddTwoButton;//左边得2分按钮
@property(nonatomic, strong)UIButton *ADLeftScoreAddThreeButton;//左边得3分按钮
@end
@implementation ADScoringPartTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = [UIColor whiteColor];
        [self ADSetContentView];
    }
    return self;
}
#pragma mark - action
- (void)ADSetContentView{
    [self.contentView addSubview:self.ADRightScoreLabel];
    [self.contentView addSubview:self.ADRightScoreAddButton];
    [self.contentView addSubview:self.ADRightScoreAddTwoButton];
    [self.contentView addSubview:self.ADRightScoreAddThreeButton];
    
    [self.contentView addSubview:self.ADVSLabel];
    
    [self.contentView addSubview:self.ADLeftScoreLabel];
    [self.contentView addSubview:self.ADLeftScoreAddButton];
    [self.contentView addSubview:self.ADLeftScoreAddTwoButton];
    [self.contentView addSubview:self.ADLeftScoreAddThreeButton];

    
    [self.ADRightScoreLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(32);
        make.top.equalTo(self.contentView).offset(30);
        make.width.mas_equalTo((ADWIDTH - 224) * 0.5);
        make.height.mas_equalTo(60);
    }];
    [self.ADRightScoreAddButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.ADRightScoreLabel);
        make.top.equalTo(self.ADRightScoreLabel.mas_bottom).offset(20);
        make.width.mas_equalTo((ADWIDTH - 224) * 0.5);
        make.height.mas_equalTo(30);
    }];
    [self.ADRightScoreAddTwoButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.ADRightScoreLabel);
        make.top.equalTo(self.ADRightScoreAddButton.mas_bottom).offset(20);
        make.width.mas_equalTo((ADWIDTH - 224) * 0.5);
        make.height.mas_equalTo(30);
    }];
    [self.ADRightScoreAddThreeButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.ADRightScoreLabel);
        make.top.equalTo(self.ADRightScoreAddTwoButton.mas_bottom).offset(20);
        make.width.mas_equalTo((ADWIDTH - 224) * 0.5);
        make.height.mas_equalTo(30);
        make.bottom.equalTo(self.contentView).offset(-15);
    }];
    [self.ADVSLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.contentView);
    make.centerY.equalTo(self.ADRightScoreLabel);
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(40);
    }];
    [self.ADLeftScoreLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.equalTo(self.contentView).offset(-32);
        make.top.equalTo(self.contentView).offset(30);
        make.width.mas_equalTo((ADWIDTH - 224) * 0.5);
        make.height.mas_equalTo(60);
    }];
    [self.ADLeftScoreAddButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.ADLeftScoreLabel);
        make.top.equalTo(self.ADLeftScoreLabel.mas_bottom).offset(20);
        make.width.mas_equalTo((ADWIDTH - 224) * 0.5);
        make.height.mas_equalTo(30);
    }];
    [self.ADLeftScoreAddTwoButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.ADLeftScoreLabel);
        make.top.equalTo(self.ADLeftScoreAddButton.mas_bottom).offset(20);
        make.width.mas_equalTo((ADWIDTH - 224) * 0.5);
        make.height.mas_equalTo(30);
    }];
    [self.ADLeftScoreAddThreeButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.ADLeftScoreLabel);
        make.top.equalTo(self.ADLeftScoreAddTwoButton.mas_bottom).offset(20);
        make.width.mas_equalTo((ADWIDTH - 224) * 0.5);
        make.height.mas_equalTo(30);
    }];
}
#pragma mark - actions
- (void)ADScorerRefresh:(UIButton *)sender{
    if (sender.tag == 99) {
        self.ADModel.ADRightscore = self.ADModel.ADRightscore + 1;
        self.ADRightScoreLabel.text = [NSString stringWithFormat:@"%ld",_ADModel.ADRightscore];
    }else if (sender.tag == 100){
        self.ADModel.ADRightscore = self.ADModel.ADRightscore + 2;
        self.ADRightScoreLabel.text = [NSString stringWithFormat:@"%ld",_ADModel.ADRightscore];
    }else if (sender.tag == 101){
        self.ADModel.ADRightscore = self.ADModel.ADRightscore + 3;
        self.ADRightScoreLabel.text = [NSString stringWithFormat:@"%ld",_ADModel.ADRightscore];
    }else if (sender.tag == 102){
        self.ADModel.ADLeftscore = self.ADModel.ADLeftscore + 1;
        self.ADLeftScoreLabel.text = [NSString stringWithFormat:@"%ld",_ADModel.ADLeftscore];
    }else if (sender.tag == 103){
        self.ADModel.ADLeftscore = self.ADModel.ADLeftscore + 2;
        self.ADLeftScoreLabel.text = [NSString stringWithFormat:@"%ld",_ADModel.ADLeftscore];
    }else if (sender.tag == 104){
        self.ADModel.ADLeftscore = self.ADModel.ADLeftscore + 3;
        self.ADLeftScoreLabel.text = [NSString stringWithFormat:@"%ld",_ADModel.ADLeftscore];
    }
}
- (void)setADModel:(ADScorecardViewModel *)ADModel{
    _ADModel = ADModel;
    self.ADRightScoreLabel.text = [NSString stringWithFormat:@"%ld",_ADModel.ADRightscore];
    self.ADLeftScoreLabel.text = [NSString stringWithFormat:@"%ld",_ADModel.ADLeftscore];
}
#pragma mark - 属性懒加载
- (UILabel *)ADRightScoreLabel{
    if (!_ADRightScoreLabel) {
        _ADRightScoreLabel = [[UILabel alloc] init];
        _ADRightScoreLabel.backgroundColor = ADH_Color(0, 204, 131, 1);
        _ADRightScoreLabel.textColor = [UIColor whiteColor];
        _ADRightScoreLabel.font = [UIFont boldSystemFontOfSize:30];
        _ADRightScoreLabel.textAlignment = NSTextAlignmentCenter;
        _ADRightScoreLabel.layer.cornerRadius = 24.0f;
        _ADRightScoreLabel.layer.masksToBounds = YES;
    }
    return _ADRightScoreLabel;
}
- (UIButton *)ADRightScoreAddButton{
    if (!_ADRightScoreAddButton) {
        _ADRightScoreAddButton = [[UIButton alloc] init];
        _ADRightScoreAddButton.titleLabel.font = [UIFont boldSystemFontOfSize:22];
        _ADRightScoreAddButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_ADRightScoreAddButton setTitle:@"+1" forState:UIControlStateNormal];
        [_ADRightScoreAddButton setTitleColor:[UIColor systemGreenColor] forState:UIControlStateNormal];
        _ADRightScoreAddButton.layer.cornerRadius = 2.0f;
        _ADRightScoreAddButton.layer.masksToBounds = YES;
        _ADRightScoreAddButton.layer.borderColor = [UIColor systemRedColor].CGColor;
        _ADRightScoreAddButton.layer.borderWidth = 2.0f;
        _ADRightScoreAddButton.tag = 99;
        [_ADRightScoreAddButton addTarget:self action:@selector(ADScorerRefresh:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _ADRightScoreAddButton;
}
- (UIButton *)ADRightScoreAddTwoButton{
    if (!_ADRightScoreAddTwoButton) {
        _ADRightScoreAddTwoButton = [[UIButton alloc] init];
        [_ADRightScoreAddTwoButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        _ADRightScoreAddTwoButton.titleLabel.font = [UIFont boldSystemFontOfSize:22];
        _ADRightScoreAddTwoButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_ADRightScoreAddTwoButton setTitle:@"+2" forState:UIControlStateNormal];
        _ADRightScoreAddTwoButton.layer.cornerRadius = 2.0f;
        _ADRightScoreAddTwoButton.layer.masksToBounds = YES;
        _ADRightScoreAddTwoButton.layer.borderColor = [UIColor systemRedColor].CGColor;
        _ADRightScoreAddTwoButton.layer.borderWidth = 2.0f;
        _ADRightScoreAddTwoButton.tag = 100;
        [_ADRightScoreAddTwoButton addTarget:self action:@selector(ADScorerRefresh:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _ADRightScoreAddTwoButton;
}
- (UIButton *)ADRightScoreAddThreeButton{
    if (!_ADRightScoreAddThreeButton) {
        _ADRightScoreAddThreeButton = [[UIButton alloc] init];
        [_ADRightScoreAddThreeButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        _ADRightScoreAddThreeButton.titleLabel.font = [UIFont boldSystemFontOfSize:22];
        _ADRightScoreAddThreeButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_ADRightScoreAddThreeButton setTitle:@"+3" forState:UIControlStateNormal];
        _ADRightScoreAddThreeButton.layer.cornerRadius = 2.0f;
        _ADRightScoreAddThreeButton.layer.masksToBounds = YES;
        _ADRightScoreAddThreeButton.layer.borderColor = [UIColor systemRedColor].CGColor;
        _ADRightScoreAddThreeButton.layer.borderWidth = 2.0f;
        _ADRightScoreAddThreeButton.tag = 101;
        [_ADRightScoreAddThreeButton addTarget:self action:@selector(ADScorerRefresh:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _ADRightScoreAddThreeButton;
}
- (UILabel *)ADVSLabel{
    if (!_ADVSLabel) {
        _ADVSLabel = [[UILabel alloc] init];
        _ADVSLabel.textColor = [UIColor systemRedColor];
        _ADVSLabel.font = [UIFont boldSystemFontOfSize:38];
        _ADVSLabel.textAlignment = NSTextAlignmentCenter;
        _ADVSLabel.text = @":";
    }
    return _ADVSLabel;
}
- (UILabel *)ADLeftScoreLabel{
    if (!_ADLeftScoreLabel) {
        _ADLeftScoreLabel = [[UILabel alloc] init];
        _ADLeftScoreLabel.backgroundColor = ADH_Color(0, 204, 131, 1);
        _ADLeftScoreLabel.textColor = [UIColor whiteColor];
        _ADLeftScoreLabel.font = [UIFont boldSystemFontOfSize:30];
        _ADLeftScoreLabel.textAlignment = NSTextAlignmentCenter;
        _ADLeftScoreLabel.layer.cornerRadius = 24.0f;
        _ADLeftScoreLabel.layer.masksToBounds = YES;
    }
    return _ADLeftScoreLabel;
}
- (UIButton *)ADLeftScoreAddButton{
    if (!_ADLeftScoreAddButton) {
        _ADLeftScoreAddButton = [[UIButton alloc] init];
        [_ADLeftScoreAddButton setTitleColor:[UIColor systemGreenColor] forState:UIControlStateNormal];
        _ADLeftScoreAddButton.titleLabel.font = [UIFont boldSystemFontOfSize:22];
        _ADLeftScoreAddButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_ADLeftScoreAddButton setTitle:@"+1" forState:UIControlStateNormal];
        _ADLeftScoreAddButton.layer.cornerRadius = 2.0f;
        _ADLeftScoreAddButton.layer.masksToBounds = YES;
        _ADLeftScoreAddButton.layer.borderColor = [UIColor systemRedColor].CGColor;
        _ADLeftScoreAddButton.layer.borderWidth = 2.0f;
        _ADLeftScoreAddButton.tag = 102;
        [_ADLeftScoreAddButton addTarget:self action:@selector(ADScorerRefresh:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _ADLeftScoreAddButton;
}
- (UIButton *)ADLeftScoreAddTwoButton{
    if (!_ADLeftScoreAddTwoButton) {
        _ADLeftScoreAddTwoButton = [[UIButton alloc] init];
        [_ADLeftScoreAddTwoButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
      _ADLeftScoreAddTwoButton.titleLabel.font = [UIFont boldSystemFontOfSize:22];
        _ADLeftScoreAddTwoButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_ADLeftScoreAddTwoButton setTitle:@"+2" forState:UIControlStateNormal];
        _ADLeftScoreAddTwoButton.layer.cornerRadius = 2.0f;
        _ADLeftScoreAddTwoButton.layer.masksToBounds = YES;
        _ADLeftScoreAddTwoButton.layer.borderColor = [UIColor systemRedColor].CGColor;
        _ADLeftScoreAddTwoButton.layer.borderWidth = 2.0f;
        _ADLeftScoreAddTwoButton.tag = 103;
        [_ADLeftScoreAddTwoButton addTarget:self action:@selector(ADScorerRefresh:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _ADLeftScoreAddTwoButton;
}
- (UIButton *)ADLeftScoreAddThreeButton{
    if (!_ADLeftScoreAddThreeButton) {
        _ADLeftScoreAddThreeButton = [[UIButton alloc] init];
        [_ADLeftScoreAddThreeButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        _ADLeftScoreAddThreeButton.titleLabel.font = [UIFont boldSystemFontOfSize:22];
        _ADLeftScoreAddThreeButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_ADLeftScoreAddThreeButton setTitle:@"+3" forState:UIControlStateNormal];
        _ADLeftScoreAddThreeButton.layer.cornerRadius = 2.0f;
        _ADLeftScoreAddThreeButton.layer.masksToBounds = YES;
        _ADLeftScoreAddThreeButton.layer.borderColor = [UIColor systemRedColor].CGColor;
        _ADLeftScoreAddThreeButton.layer.borderWidth = 2.0f;
        _ADLeftScoreAddThreeButton.tag = 104;
        [_ADLeftScoreAddThreeButton addTarget:self action:@selector(ADScorerRefresh:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _ADLeftScoreAddThreeButton;
}
@end
