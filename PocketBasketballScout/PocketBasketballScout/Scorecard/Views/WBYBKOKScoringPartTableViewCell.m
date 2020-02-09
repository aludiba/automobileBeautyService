//
//  WBYBKOKScoringPartTableViewCell.m
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import "WBYBKOKScoringPartTableViewCell.h"
#import "WBYBKOKScorecardViewModel.h"

@interface WBYBKOKScoringPartTableViewCell()
@property(nonatomic, strong)UILabel *WBYBKOKRightScoreLabel;//右边得分
@property(nonatomic, strong)UIButton *WBYBKOKRightScoreAddButton;//右边得1分按钮
@property(nonatomic, strong)UIButton *WBYBKOKRightScoreAddTwoButton;//右边得2分按钮
@property(nonatomic, strong)UIButton *WBYBKOKRightScoreAddThreeButton;//右边得3分按钮

@property(nonatomic, strong)UILabel *WBYBKOKVSLabel;//VS标识

@property(nonatomic, strong)UILabel *WBYBKOKLeftScoreLabel;//左边得分
@property(nonatomic, strong)UIButton *WBYBKOKLeftScoreAddButton;//左边得1分按钮
@property(nonatomic, strong)UIButton *WBYBKOKLeftScoreAddTwoButton;//左边得2分按钮
@property(nonatomic, strong)UIButton *WBYBKOKLeftScoreAddThreeButton;//左边得3分按钮
@end
@implementation WBYBKOKScoringPartTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = [UIColor whiteColor];
        [self WBYBKOKSetContentView];
    }
    return self;
}
#pragma mark - action
- (void)WBYBKOKSetContentView{
    [self.contentView addSubview:self.WBYBKOKRightScoreLabel];
    [self.contentView addSubview:self.WBYBKOKRightScoreAddButton];
    [self.contentView addSubview:self.WBYBKOKRightScoreAddTwoButton];
    [self.contentView addSubview:self.WBYBKOKRightScoreAddThreeButton];
    
    [self.contentView addSubview:self.WBYBKOKVSLabel];
    
    [self.contentView addSubview:self.WBYBKOKLeftScoreLabel];
    [self.contentView addSubview:self.WBYBKOKLeftScoreAddButton];
    [self.contentView addSubview:self.WBYBKOKLeftScoreAddTwoButton];
    [self.contentView addSubview:self.WBYBKOKLeftScoreAddThreeButton];

    
    [self.WBYBKOKRightScoreLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(32);
        make.top.equalTo(self.contentView).offset(30);
        make.width.mas_equalTo((WBYBKOKWIDTH - 224) * 0.5);
        make.height.mas_equalTo(60);
    }];
    [self.WBYBKOKRightScoreAddButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.WBYBKOKRightScoreLabel);
        make.top.equalTo(self.WBYBKOKRightScoreLabel.mas_bottom).offset(20);
        make.width.mas_equalTo((WBYBKOKWIDTH - 224) * 0.5);
        make.height.mas_equalTo(30);
    }];
    [self.WBYBKOKRightScoreAddTwoButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.WBYBKOKRightScoreLabel);
        make.top.equalTo(self.WBYBKOKRightScoreAddButton.mas_bottom).offset(20);
        make.width.mas_equalTo((WBYBKOKWIDTH - 224) * 0.5);
        make.height.mas_equalTo(30);
    }];
    [self.WBYBKOKRightScoreAddThreeButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.WBYBKOKRightScoreLabel);
        make.top.equalTo(self.WBYBKOKRightScoreAddTwoButton.mas_bottom).offset(20);
        make.width.mas_equalTo((WBYBKOKWIDTH - 224) * 0.5);
        make.height.mas_equalTo(30);
        make.bottom.equalTo(self.contentView).offset(-15);
    }];
    [self.WBYBKOKVSLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.contentView);
    make.centerY.equalTo(self.WBYBKOKRightScoreLabel);
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(40);
    }];
    [self.WBYBKOKLeftScoreLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.equalTo(self.contentView).offset(-32);
        make.top.equalTo(self.contentView).offset(30);
        make.width.mas_equalTo((WBYBKOKWIDTH - 224) * 0.5);
        make.height.mas_equalTo(60);
    }];
    [self.WBYBKOKLeftScoreAddButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.WBYBKOKLeftScoreLabel);
        make.top.equalTo(self.WBYBKOKLeftScoreLabel.mas_bottom).offset(20);
        make.width.mas_equalTo((WBYBKOKWIDTH - 224) * 0.5);
        make.height.mas_equalTo(30);
    }];
    [self.WBYBKOKLeftScoreAddTwoButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.WBYBKOKLeftScoreLabel);
        make.top.equalTo(self.WBYBKOKLeftScoreAddButton.mas_bottom).offset(20);
        make.width.mas_equalTo((WBYBKOKWIDTH - 224) * 0.5);
        make.height.mas_equalTo(30);
    }];
    [self.WBYBKOKLeftScoreAddThreeButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.WBYBKOKLeftScoreLabel);
        make.top.equalTo(self.WBYBKOKLeftScoreAddTwoButton.mas_bottom).offset(20);
        make.width.mas_equalTo((WBYBKOKWIDTH - 224) * 0.5);
        make.height.mas_equalTo(30);
    }];
}
#pragma mark - actions
- (void)WBYBKOKScorerRefresh:(UIButton *)sender{
    if (sender.tag == 99) {
        self.WBYBKOKModel.WBYBKOKRightscore = self.WBYBKOKModel.WBYBKOKRightscore + 1;
        self.WBYBKOKRightScoreLabel.text = [NSString stringWithFormat:@"%ld",_WBYBKOKModel.WBYBKOKRightscore];
    }else if (sender.tag == 100){
        self.WBYBKOKModel.WBYBKOKRightscore = self.WBYBKOKModel.WBYBKOKRightscore + 2;
        self.WBYBKOKRightScoreLabel.text = [NSString stringWithFormat:@"%ld",_WBYBKOKModel.WBYBKOKRightscore];
    }else if (sender.tag == 101){
        self.WBYBKOKModel.WBYBKOKRightscore = self.WBYBKOKModel.WBYBKOKRightscore + 3;
        self.WBYBKOKRightScoreLabel.text = [NSString stringWithFormat:@"%ld",_WBYBKOKModel.WBYBKOKRightscore];
    }else if (sender.tag == 102){
        self.WBYBKOKModel.WBYBKOKLeftscore = self.WBYBKOKModel.WBYBKOKLeftscore + 1;
        self.WBYBKOKLeftScoreLabel.text = [NSString stringWithFormat:@"%ld",_WBYBKOKModel.WBYBKOKLeftscore];
    }else if (sender.tag == 103){
        self.WBYBKOKModel.WBYBKOKLeftscore = self.WBYBKOKModel.WBYBKOKLeftscore + 2;
        self.WBYBKOKLeftScoreLabel.text = [NSString stringWithFormat:@"%ld",_WBYBKOKModel.WBYBKOKLeftscore];
    }else if (sender.tag == 104){
        self.WBYBKOKModel.WBYBKOKLeftscore = self.WBYBKOKModel.WBYBKOKLeftscore + 3;
        self.WBYBKOKLeftScoreLabel.text = [NSString stringWithFormat:@"%ld",_WBYBKOKModel.WBYBKOKLeftscore];
    }
}
- (void)setWBYBKOKModel:(WBYBKOKScorecardViewModel *)WBYBKOKModel{
    _WBYBKOKModel = WBYBKOKModel;
    self.WBYBKOKRightScoreLabel.text = [NSString stringWithFormat:@"%ld",_WBYBKOKModel.WBYBKOKRightscore];
    self.WBYBKOKLeftScoreLabel.text = [NSString stringWithFormat:@"%ld",_WBYBKOKModel.WBYBKOKLeftscore];
}
#pragma mark - 属性懒加载
- (UILabel *)WBYBKOKRightScoreLabel{
    if (!_WBYBKOKRightScoreLabel) {
        _WBYBKOKRightScoreLabel = [[UILabel alloc] init];
        _WBYBKOKRightScoreLabel.backgroundColor = WBYBKOKH_Color(0, 204, 131, 1);
        _WBYBKOKRightScoreLabel.textColor = [UIColor whiteColor];
        _WBYBKOKRightScoreLabel.font = [UIFont boldSystemFontOfSize:30];
        _WBYBKOKRightScoreLabel.textAlignment = NSTextAlignmentCenter;
        _WBYBKOKRightScoreLabel.layer.cornerRadius = 8.0f;
        _WBYBKOKRightScoreLabel.layer.masksToBounds = YES;
    }
    return _WBYBKOKRightScoreLabel;
}
- (UIButton *)WBYBKOKRightScoreAddButton{
    if (!_WBYBKOKRightScoreAddButton) {
        _WBYBKOKRightScoreAddButton = [[UIButton alloc] init];
        _WBYBKOKRightScoreAddButton.titleLabel.font = [UIFont boldSystemFontOfSize:22];
        _WBYBKOKRightScoreAddButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_WBYBKOKRightScoreAddButton setTitle:@"+1" forState:UIControlStateNormal];
        [_WBYBKOKRightScoreAddButton setTitleColor:[UIColor systemGreenColor] forState:UIControlStateNormal];
        _WBYBKOKRightScoreAddButton.layer.cornerRadius = 6.0f;
        _WBYBKOKRightScoreAddButton.layer.masksToBounds = YES;
        _WBYBKOKRightScoreAddButton.layer.borderColor = [UIColor systemRedColor].CGColor;
        _WBYBKOKRightScoreAddButton.layer.borderWidth = 2.0f;
        _WBYBKOKRightScoreAddButton.tag = 99;
        [_WBYBKOKRightScoreAddButton addTarget:self action:@selector(WBYBKOKScorerRefresh:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _WBYBKOKRightScoreAddButton;
}
- (UIButton *)WBYBKOKRightScoreAddTwoButton{
    if (!_WBYBKOKRightScoreAddTwoButton) {
        _WBYBKOKRightScoreAddTwoButton = [[UIButton alloc] init];
        [_WBYBKOKRightScoreAddTwoButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        _WBYBKOKRightScoreAddTwoButton.titleLabel.font = [UIFont boldSystemFontOfSize:22];
        _WBYBKOKRightScoreAddTwoButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_WBYBKOKRightScoreAddTwoButton setTitle:@"+2" forState:UIControlStateNormal];
        _WBYBKOKRightScoreAddTwoButton.layer.cornerRadius = 6.0f;
        _WBYBKOKRightScoreAddTwoButton.layer.masksToBounds = YES;
        _WBYBKOKRightScoreAddTwoButton.layer.borderColor = [UIColor systemRedColor].CGColor;
        _WBYBKOKRightScoreAddTwoButton.layer.borderWidth = 2.0f;
        _WBYBKOKRightScoreAddTwoButton.tag = 100;
        [_WBYBKOKRightScoreAddTwoButton addTarget:self action:@selector(WBYBKOKScorerRefresh:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _WBYBKOKRightScoreAddTwoButton;
}
- (UIButton *)WBYBKOKRightScoreAddThreeButton{
    if (!_WBYBKOKRightScoreAddThreeButton) {
        _WBYBKOKRightScoreAddThreeButton = [[UIButton alloc] init];
        [_WBYBKOKRightScoreAddThreeButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        _WBYBKOKRightScoreAddThreeButton.titleLabel.font = [UIFont boldSystemFontOfSize:22];
        _WBYBKOKRightScoreAddThreeButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_WBYBKOKRightScoreAddThreeButton setTitle:@"+3" forState:UIControlStateNormal];
        _WBYBKOKRightScoreAddThreeButton.layer.cornerRadius = 6.0f;
        _WBYBKOKRightScoreAddThreeButton.layer.masksToBounds = YES;
        _WBYBKOKRightScoreAddThreeButton.layer.borderColor = [UIColor systemRedColor].CGColor;
        _WBYBKOKRightScoreAddThreeButton.layer.borderWidth = 2.0f;
        _WBYBKOKRightScoreAddThreeButton.tag = 101;
        [_WBYBKOKRightScoreAddThreeButton addTarget:self action:@selector(WBYBKOKScorerRefresh:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _WBYBKOKRightScoreAddThreeButton;
}
- (UILabel *)WBYBKOKVSLabel{
    if (!_WBYBKOKVSLabel) {
        _WBYBKOKVSLabel = [[UILabel alloc] init];
        _WBYBKOKVSLabel.textColor = [UIColor systemRedColor];
        _WBYBKOKVSLabel.font = [UIFont boldSystemFontOfSize:38];
        _WBYBKOKVSLabel.textAlignment = NSTextAlignmentCenter;
        _WBYBKOKVSLabel.text = @":";
    }
    return _WBYBKOKVSLabel;
}
- (UILabel *)WBYBKOKLeftScoreLabel{
    if (!_WBYBKOKLeftScoreLabel) {
        _WBYBKOKLeftScoreLabel = [[UILabel alloc] init];
        _WBYBKOKLeftScoreLabel.backgroundColor = WBYBKOKH_Color(0, 204, 131, 1);
        _WBYBKOKLeftScoreLabel.textColor = [UIColor whiteColor];
        _WBYBKOKLeftScoreLabel.font = [UIFont boldSystemFontOfSize:30];
        _WBYBKOKLeftScoreLabel.textAlignment = NSTextAlignmentCenter;
        _WBYBKOKLeftScoreLabel.layer.cornerRadius = 8.0f;
        _WBYBKOKLeftScoreLabel.layer.masksToBounds = YES;
    }
    return _WBYBKOKLeftScoreLabel;
}
- (UIButton *)WBYBKOKLeftScoreAddButton{
    if (!_WBYBKOKLeftScoreAddButton) {
        _WBYBKOKLeftScoreAddButton = [[UIButton alloc] init];
        [_WBYBKOKLeftScoreAddButton setTitleColor:[UIColor systemGreenColor] forState:UIControlStateNormal];
        _WBYBKOKLeftScoreAddButton.titleLabel.font = [UIFont boldSystemFontOfSize:22];
        _WBYBKOKLeftScoreAddButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_WBYBKOKLeftScoreAddButton setTitle:@"+1" forState:UIControlStateNormal];
        _WBYBKOKLeftScoreAddButton.layer.cornerRadius = 6.0f;
        _WBYBKOKLeftScoreAddButton.layer.masksToBounds = YES;
        _WBYBKOKLeftScoreAddButton.layer.borderColor = [UIColor systemRedColor].CGColor;
        _WBYBKOKLeftScoreAddButton.layer.borderWidth = 2.0f;
        _WBYBKOKLeftScoreAddButton.tag = 102;
        [_WBYBKOKLeftScoreAddButton addTarget:self action:@selector(WBYBKOKScorerRefresh:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _WBYBKOKLeftScoreAddButton;
}
- (UIButton *)WBYBKOKLeftScoreAddTwoButton{
    if (!_WBYBKOKLeftScoreAddTwoButton) {
        _WBYBKOKLeftScoreAddTwoButton = [[UIButton alloc] init];
        [_WBYBKOKLeftScoreAddTwoButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
      _WBYBKOKLeftScoreAddTwoButton.titleLabel.font = [UIFont boldSystemFontOfSize:22];
        _WBYBKOKLeftScoreAddTwoButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_WBYBKOKLeftScoreAddTwoButton setTitle:@"+2" forState:UIControlStateNormal];
        _WBYBKOKLeftScoreAddTwoButton.layer.cornerRadius = 6.0f;
        _WBYBKOKLeftScoreAddTwoButton.layer.masksToBounds = YES;
        _WBYBKOKLeftScoreAddTwoButton.layer.borderColor = [UIColor systemRedColor].CGColor;
        _WBYBKOKLeftScoreAddTwoButton.layer.borderWidth = 2.0f;
        _WBYBKOKLeftScoreAddTwoButton.tag = 103;
        [_WBYBKOKLeftScoreAddTwoButton addTarget:self action:@selector(WBYBKOKScorerRefresh:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _WBYBKOKLeftScoreAddTwoButton;
}
- (UIButton *)WBYBKOKLeftScoreAddThreeButton{
    if (!_WBYBKOKLeftScoreAddThreeButton) {
        _WBYBKOKLeftScoreAddThreeButton = [[UIButton alloc] init];
        [_WBYBKOKLeftScoreAddThreeButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        _WBYBKOKLeftScoreAddThreeButton.titleLabel.font = [UIFont boldSystemFontOfSize:22];
        _WBYBKOKLeftScoreAddThreeButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_WBYBKOKLeftScoreAddThreeButton setTitle:@"+3" forState:UIControlStateNormal];
        _WBYBKOKLeftScoreAddThreeButton.layer.cornerRadius = 6.0f;
        _WBYBKOKLeftScoreAddThreeButton.layer.masksToBounds = YES;
        _WBYBKOKLeftScoreAddThreeButton.layer.borderColor = [UIColor systemRedColor].CGColor;
        _WBYBKOKLeftScoreAddThreeButton.layer.borderWidth = 2.0f;
        _WBYBKOKLeftScoreAddThreeButton.tag = 104;
        [_WBYBKOKLeftScoreAddThreeButton addTarget:self action:@selector(WBYBKOKScorerRefresh:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _WBYBKOKLeftScoreAddThreeButton;
}
@end
