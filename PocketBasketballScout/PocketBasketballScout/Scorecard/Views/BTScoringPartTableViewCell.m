//
//  BTScoringPartTableViewCell.m
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import "BTScoringPartTableViewCell.h"
#import "BTScorecardViewModel.h"

@interface BTScoringPartTableViewCell()
@property(nonatomic, strong)UILabel *BTRightScoreLabel;//右边得分
@property(nonatomic, strong)UIButton *BTRightScoreAddButton;//右边得1分按钮
@property(nonatomic, strong)UIButton *BTRightScoreAddTwoButton;//右边得2分按钮
@property(nonatomic, strong)UIButton *BTRightScoreAddThreeButton;//右边得3分按钮

@property(nonatomic, strong)UILabel *BTVSLabel;//VS标识

@property(nonatomic, strong)UILabel *BTLeftScoreLabel;//左边得分
@property(nonatomic, strong)UIButton *BTLeftScoreAddButton;//左边得1分按钮
@property(nonatomic, strong)UIButton *BTLeftScoreAddTwoButton;//左边得2分按钮
@property(nonatomic, strong)UIButton *BTLeftScoreAddThreeButton;//左边得3分按钮
@end
@implementation BTScoringPartTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = [UIColor whiteColor];
        [self BTSetContentView];
    }
    return self;
}
#pragma mark - action
- (void)BTSetContentView{
    [self.contentView addSubview:self.BTRightScoreLabel];
    [self.contentView addSubview:self.BTRightScoreAddButton];
    [self.contentView addSubview:self.BTRightScoreAddTwoButton];
    [self.contentView addSubview:self.BTRightScoreAddThreeButton];
    
    [self.contentView addSubview:self.BTVSLabel];
    
    [self.contentView addSubview:self.BTLeftScoreLabel];
    [self.contentView addSubview:self.BTLeftScoreAddButton];
    [self.contentView addSubview:self.BTLeftScoreAddTwoButton];
    [self.contentView addSubview:self.BTLeftScoreAddThreeButton];

    
    [self.BTRightScoreLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(32);
        make.top.equalTo(self.contentView).offset(30);
        make.width.mas_equalTo((BTWIDTH - 224) * 0.5);
        make.height.mas_equalTo(60);
    }];
    [self.BTRightScoreAddButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.BTRightScoreLabel);
        make.top.equalTo(self.BTRightScoreLabel.mas_bottom).offset(20);
        make.width.mas_equalTo((BTWIDTH - 224) * 0.5);
        make.height.mas_equalTo(30);
    }];
    [self.BTRightScoreAddTwoButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.BTRightScoreLabel);
        make.top.equalTo(self.BTRightScoreAddButton.mas_bottom).offset(20);
        make.width.mas_equalTo((BTWIDTH - 224) * 0.5);
        make.height.mas_equalTo(30);
    }];
    [self.BTRightScoreAddThreeButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.BTRightScoreLabel);
        make.top.equalTo(self.BTRightScoreAddTwoButton.mas_bottom).offset(20);
        make.width.mas_equalTo((BTWIDTH - 224) * 0.5);
        make.height.mas_equalTo(30);
        make.bottom.equalTo(self.contentView).offset(-15);
    }];
    [self.BTVSLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.contentView);
    make.centerY.equalTo(self.BTRightScoreLabel);
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(40);
    }];
    [self.BTLeftScoreLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.equalTo(self.contentView).offset(-32);
        make.top.equalTo(self.contentView).offset(30);
        make.width.mas_equalTo((BTWIDTH - 224) * 0.5);
        make.height.mas_equalTo(60);
    }];
    [self.BTLeftScoreAddButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.BTLeftScoreLabel);
        make.top.equalTo(self.BTLeftScoreLabel.mas_bottom).offset(20);
        make.width.mas_equalTo((BTWIDTH - 224) * 0.5);
        make.height.mas_equalTo(30);
    }];
    [self.BTLeftScoreAddTwoButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.BTLeftScoreLabel);
        make.top.equalTo(self.BTLeftScoreAddButton.mas_bottom).offset(20);
        make.width.mas_equalTo((BTWIDTH - 224) * 0.5);
        make.height.mas_equalTo(30);
    }];
    [self.BTLeftScoreAddThreeButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.BTLeftScoreLabel);
        make.top.equalTo(self.BTLeftScoreAddTwoButton.mas_bottom).offset(20);
        make.width.mas_equalTo((BTWIDTH - 224) * 0.5);
        make.height.mas_equalTo(30);
    }];
}
#pragma mark - actions
- (void)BTScorerRefresh:(UIButton *)sender{
    if (sender.tag == 99) {
        self.BTModel.BTRightscore = self.BTModel.BTRightscore + 1;
        self.BTRightScoreLabel.text = [NSString stringWithFormat:@"%ld",_BTModel.BTRightscore];
    }else if (sender.tag == 100){
        self.BTModel.BTRightscore = self.BTModel.BTRightscore + 2;
        self.BTRightScoreLabel.text = [NSString stringWithFormat:@"%ld",_BTModel.BTRightscore];
    }else if (sender.tag == 101){
        self.BTModel.BTRightscore = self.BTModel.BTRightscore + 3;
        self.BTRightScoreLabel.text = [NSString stringWithFormat:@"%ld",_BTModel.BTRightscore];
    }else if (sender.tag == 102){
        self.BTModel.BTLeftscore = self.BTModel.BTLeftscore + 1;
        self.BTLeftScoreLabel.text = [NSString stringWithFormat:@"%ld",_BTModel.BTLeftscore];
    }else if (sender.tag == 103){
        self.BTModel.BTLeftscore = self.BTModel.BTLeftscore + 2;
        self.BTLeftScoreLabel.text = [NSString stringWithFormat:@"%ld",_BTModel.BTLeftscore];
    }else if (sender.tag == 104){
        self.BTModel.BTLeftscore = self.BTModel.BTLeftscore + 3;
        self.BTLeftScoreLabel.text = [NSString stringWithFormat:@"%ld",_BTModel.BTLeftscore];
    }
}
- (void)setBTModel:(BTScorecardViewModel *)BTModel{
    _BTModel = BTModel;
    self.BTRightScoreLabel.text = [NSString stringWithFormat:@"%ld",_BTModel.BTRightscore];
    self.BTLeftScoreLabel.text = [NSString stringWithFormat:@"%ld",_BTModel.BTLeftscore];
}
#pragma mark - 属性懒加载
- (UILabel *)BTRightScoreLabel{
    if (!_BTRightScoreLabel) {
        _BTRightScoreLabel = [[UILabel alloc] init];
        _BTRightScoreLabel.backgroundColor = BTH_Color(0, 204, 131, 1);
        _BTRightScoreLabel.textColor = [UIColor whiteColor];
        _BTRightScoreLabel.font = [UIFont boldSystemFontOfSize:30];
        _BTRightScoreLabel.textAlignment = NSTextAlignmentCenter;
        _BTRightScoreLabel.layer.cornerRadius = 8.0f;
        _BTRightScoreLabel.layer.masksToBounds = YES;
    }
    return _BTRightScoreLabel;
}
- (UIButton *)BTRightScoreAddButton{
    if (!_BTRightScoreAddButton) {
        _BTRightScoreAddButton = [[UIButton alloc] init];
        _BTRightScoreAddButton.titleLabel.font = [UIFont boldSystemFontOfSize:22];
        _BTRightScoreAddButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_BTRightScoreAddButton setTitle:@"+1" forState:UIControlStateNormal];
        [_BTRightScoreAddButton setTitleColor:[UIColor systemGreenColor] forState:UIControlStateNormal];
        _BTRightScoreAddButton.layer.cornerRadius = 6.0f;
        _BTRightScoreAddButton.layer.masksToBounds = YES;
        _BTRightScoreAddButton.layer.borderColor = [UIColor systemRedColor].CGColor;
        _BTRightScoreAddButton.layer.borderWidth = 2.0f;
        _BTRightScoreAddButton.tag = 99;
        [_BTRightScoreAddButton addTarget:self action:@selector(BTScorerRefresh:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _BTRightScoreAddButton;
}
- (UIButton *)BTRightScoreAddTwoButton{
    if (!_BTRightScoreAddTwoButton) {
        _BTRightScoreAddTwoButton = [[UIButton alloc] init];
        [_BTRightScoreAddTwoButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        _BTRightScoreAddTwoButton.titleLabel.font = [UIFont boldSystemFontOfSize:22];
        _BTRightScoreAddTwoButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_BTRightScoreAddTwoButton setTitle:@"+2" forState:UIControlStateNormal];
        _BTRightScoreAddTwoButton.layer.cornerRadius = 6.0f;
        _BTRightScoreAddTwoButton.layer.masksToBounds = YES;
        _BTRightScoreAddTwoButton.layer.borderColor = [UIColor systemRedColor].CGColor;
        _BTRightScoreAddTwoButton.layer.borderWidth = 2.0f;
        _BTRightScoreAddTwoButton.tag = 100;
        [_BTRightScoreAddTwoButton addTarget:self action:@selector(BTScorerRefresh:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _BTRightScoreAddTwoButton;
}
- (UIButton *)BTRightScoreAddThreeButton{
    if (!_BTRightScoreAddThreeButton) {
        _BTRightScoreAddThreeButton = [[UIButton alloc] init];
        [_BTRightScoreAddThreeButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        _BTRightScoreAddThreeButton.titleLabel.font = [UIFont boldSystemFontOfSize:22];
        _BTRightScoreAddThreeButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_BTRightScoreAddThreeButton setTitle:@"+3" forState:UIControlStateNormal];
        _BTRightScoreAddThreeButton.layer.cornerRadius = 6.0f;
        _BTRightScoreAddThreeButton.layer.masksToBounds = YES;
        _BTRightScoreAddThreeButton.layer.borderColor = [UIColor systemRedColor].CGColor;
        _BTRightScoreAddThreeButton.layer.borderWidth = 2.0f;
        _BTRightScoreAddThreeButton.tag = 101;
        [_BTRightScoreAddThreeButton addTarget:self action:@selector(BTScorerRefresh:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _BTRightScoreAddThreeButton;
}
- (UILabel *)BTVSLabel{
    if (!_BTVSLabel) {
        _BTVSLabel = [[UILabel alloc] init];
        _BTVSLabel.textColor = [UIColor systemRedColor];
        _BTVSLabel.font = [UIFont boldSystemFontOfSize:38];
        _BTVSLabel.textAlignment = NSTextAlignmentCenter;
        _BTVSLabel.text = @":";
    }
    return _BTVSLabel;
}
- (UILabel *)BTLeftScoreLabel{
    if (!_BTLeftScoreLabel) {
        _BTLeftScoreLabel = [[UILabel alloc] init];
        _BTLeftScoreLabel.backgroundColor = BTH_Color(0, 204, 131, 1);
        _BTLeftScoreLabel.textColor = [UIColor whiteColor];
        _BTLeftScoreLabel.font = [UIFont boldSystemFontOfSize:30];
        _BTLeftScoreLabel.textAlignment = NSTextAlignmentCenter;
        _BTLeftScoreLabel.layer.cornerRadius = 8.0f;
        _BTLeftScoreLabel.layer.masksToBounds = YES;
    }
    return _BTLeftScoreLabel;
}
- (UIButton *)BTLeftScoreAddButton{
    if (!_BTLeftScoreAddButton) {
        _BTLeftScoreAddButton = [[UIButton alloc] init];
        [_BTLeftScoreAddButton setTitleColor:[UIColor systemGreenColor] forState:UIControlStateNormal];
        _BTLeftScoreAddButton.titleLabel.font = [UIFont boldSystemFontOfSize:22];
        _BTLeftScoreAddButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_BTLeftScoreAddButton setTitle:@"+1" forState:UIControlStateNormal];
        _BTLeftScoreAddButton.layer.cornerRadius = 6.0f;
        _BTLeftScoreAddButton.layer.masksToBounds = YES;
        _BTLeftScoreAddButton.layer.borderColor = [UIColor systemRedColor].CGColor;
        _BTLeftScoreAddButton.layer.borderWidth = 2.0f;
        _BTLeftScoreAddButton.tag = 102;
        [_BTLeftScoreAddButton addTarget:self action:@selector(BTScorerRefresh:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _BTLeftScoreAddButton;
}
- (UIButton *)BTLeftScoreAddTwoButton{
    if (!_BTLeftScoreAddTwoButton) {
        _BTLeftScoreAddTwoButton = [[UIButton alloc] init];
        [_BTLeftScoreAddTwoButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
      _BTLeftScoreAddTwoButton.titleLabel.font = [UIFont boldSystemFontOfSize:22];
        _BTLeftScoreAddTwoButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_BTLeftScoreAddTwoButton setTitle:@"+2" forState:UIControlStateNormal];
        _BTLeftScoreAddTwoButton.layer.cornerRadius = 6.0f;
        _BTLeftScoreAddTwoButton.layer.masksToBounds = YES;
        _BTLeftScoreAddTwoButton.layer.borderColor = [UIColor systemRedColor].CGColor;
        _BTLeftScoreAddTwoButton.layer.borderWidth = 2.0f;
        _BTLeftScoreAddTwoButton.tag = 103;
        [_BTLeftScoreAddTwoButton addTarget:self action:@selector(BTScorerRefresh:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _BTLeftScoreAddTwoButton;
}
- (UIButton *)BTLeftScoreAddThreeButton{
    if (!_BTLeftScoreAddThreeButton) {
        _BTLeftScoreAddThreeButton = [[UIButton alloc] init];
        [_BTLeftScoreAddThreeButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        _BTLeftScoreAddThreeButton.titleLabel.font = [UIFont boldSystemFontOfSize:22];
        _BTLeftScoreAddThreeButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_BTLeftScoreAddThreeButton setTitle:@"+3" forState:UIControlStateNormal];
        _BTLeftScoreAddThreeButton.layer.cornerRadius = 6.0f;
        _BTLeftScoreAddThreeButton.layer.masksToBounds = YES;
        _BTLeftScoreAddThreeButton.layer.borderColor = [UIColor systemRedColor].CGColor;
        _BTLeftScoreAddThreeButton.layer.borderWidth = 2.0f;
        _BTLeftScoreAddThreeButton.tag = 104;
        [_BTLeftScoreAddThreeButton addTarget:self action:@selector(BTScorerRefresh:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _BTLeftScoreAddThreeButton;
}
@end
