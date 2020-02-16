//
//  ZLScoringPartTableViewCell.m
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import "ZLScoringPartTableViewCell.h"
#import "ZLScorecardViewModel.h"

@interface ZLScoringPartTableViewCell()
@property(nonatomic, strong)UILabel *ZLRightScoreLabel;//右边得分
@property(nonatomic, strong)UIButton *ZLRightScoreAddButton;//右边得1分按钮
@property(nonatomic, strong)UIButton *ZLRightScoreAddTwoButton;//右边得2分按钮
@property(nonatomic, strong)UIButton *ZLRightScoreAddThreeButton;//右边得3分按钮

@property(nonatomic, strong)UILabel *ZLVSLabel;//VS标识

@property(nonatomic, strong)UILabel *ZLLeftScoreLabel;//左边得分
@property(nonatomic, strong)UIButton *ZLLeftScoreAddButton;//左边得1分按钮
@property(nonatomic, strong)UIButton *ZLLeftScoreAddTwoButton;//左边得2分按钮
@property(nonatomic, strong)UIButton *ZLLeftScoreAddThreeButton;//左边得3分按钮
@end
@implementation ZLScoringPartTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = [UIColor whiteColor];
        [self ZLSetContentView];
    }
    return self;
}
#pragma mark - action
- (void)ZLSetContentView{
    [self.contentView addSubview:self.ZLRightScoreLabel];
    [self.contentView addSubview:self.ZLRightScoreAddButton];
    [self.contentView addSubview:self.ZLRightScoreAddTwoButton];
    [self.contentView addSubview:self.ZLRightScoreAddThreeButton];
    
    [self.contentView addSubview:self.ZLVSLabel];
    
    [self.contentView addSubview:self.ZLLeftScoreLabel];
    [self.contentView addSubview:self.ZLLeftScoreAddButton];
    [self.contentView addSubview:self.ZLLeftScoreAddTwoButton];
    [self.contentView addSubview:self.ZLLeftScoreAddThreeButton];

    
    [self.ZLRightScoreLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(32);
        make.top.equalTo(self.contentView).offset(30);
        make.width.mas_equalTo((ZLWIDTH - 224) * 0.5);
        make.height.mas_equalTo(60);
    }];
    [self.ZLRightScoreAddButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.ZLRightScoreLabel);
        make.top.equalTo(self.ZLRightScoreLabel.mas_bottom).offset(20);
        make.width.mas_equalTo((ZLWIDTH - 224) * 0.5);
        make.height.mas_equalTo(30);
    }];
    [self.ZLRightScoreAddTwoButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.ZLRightScoreLabel);
        make.top.equalTo(self.ZLRightScoreAddButton.mas_bottom).offset(20);
        make.width.mas_equalTo((ZLWIDTH - 224) * 0.5);
        make.height.mas_equalTo(30);
    }];
    [self.ZLRightScoreAddThreeButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.ZLRightScoreLabel);
        make.top.equalTo(self.ZLRightScoreAddTwoButton.mas_bottom).offset(20);
        make.width.mas_equalTo((ZLWIDTH - 224) * 0.5);
        make.height.mas_equalTo(30);
        make.bottom.equalTo(self.contentView).offset(-15);
    }];
    [self.ZLVSLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.contentView);
    make.centerY.equalTo(self.ZLRightScoreLabel);
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(40);
    }];
    [self.ZLLeftScoreLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.equalTo(self.contentView).offset(-32);
        make.top.equalTo(self.contentView).offset(30);
        make.width.mas_equalTo((ZLWIDTH - 224) * 0.5);
        make.height.mas_equalTo(60);
    }];
    [self.ZLLeftScoreAddButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.ZLLeftScoreLabel);
        make.top.equalTo(self.ZLLeftScoreLabel.mas_bottom).offset(20);
        make.width.mas_equalTo((ZLWIDTH - 224) * 0.5);
        make.height.mas_equalTo(30);
    }];
    [self.ZLLeftScoreAddTwoButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.ZLLeftScoreLabel);
        make.top.equalTo(self.ZLLeftScoreAddButton.mas_bottom).offset(20);
        make.width.mas_equalTo((ZLWIDTH - 224) * 0.5);
        make.height.mas_equalTo(30);
    }];
    [self.ZLLeftScoreAddThreeButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.ZLLeftScoreLabel);
        make.top.equalTo(self.ZLLeftScoreAddTwoButton.mas_bottom).offset(20);
        make.width.mas_equalTo((ZLWIDTH - 224) * 0.5);
        make.height.mas_equalTo(30);
    }];
}
#pragma mark - actions
- (void)ZLScorerRefresh:(UIButton *)sender{
    if (sender.tag == 99) {
        self.ZLModel.ZLRightscore = self.ZLModel.ZLRightscore + 1;
        self.ZLRightScoreLabel.text = [NSString stringWithFormat:@"%ld",_ZLModel.ZLRightscore];
    }else if (sender.tag == 100){
        self.ZLModel.ZLRightscore = self.ZLModel.ZLRightscore + 2;
        self.ZLRightScoreLabel.text = [NSString stringWithFormat:@"%ld",_ZLModel.ZLRightscore];
    }else if (sender.tag == 101){
        self.ZLModel.ZLRightscore = self.ZLModel.ZLRightscore + 3;
        self.ZLRightScoreLabel.text = [NSString stringWithFormat:@"%ld",_ZLModel.ZLRightscore];
    }else if (sender.tag == 102){
        self.ZLModel.ZLLeftscore = self.ZLModel.ZLLeftscore + 1;
        self.ZLLeftScoreLabel.text = [NSString stringWithFormat:@"%ld",_ZLModel.ZLLeftscore];
    }else if (sender.tag == 103){
        self.ZLModel.ZLLeftscore = self.ZLModel.ZLLeftscore + 2;
        self.ZLLeftScoreLabel.text = [NSString stringWithFormat:@"%ld",_ZLModel.ZLLeftscore];
    }else if (sender.tag == 104){
        self.ZLModel.ZLLeftscore = self.ZLModel.ZLLeftscore + 3;
        self.ZLLeftScoreLabel.text = [NSString stringWithFormat:@"%ld",_ZLModel.ZLLeftscore];
    }
}
- (void)setZLModel:(ZLScorecardViewModel *)ZLModel{
    _ZLModel = ZLModel;
    self.ZLRightScoreLabel.text = [NSString stringWithFormat:@"%ld",_ZLModel.ZLRightscore];
    self.ZLLeftScoreLabel.text = [NSString stringWithFormat:@"%ld",_ZLModel.ZLLeftscore];
}
#pragma mark - 属性懒加载
- (UILabel *)ZLRightScoreLabel{
    if (!_ZLRightScoreLabel) {
        _ZLRightScoreLabel = [[UILabel alloc] init];
        _ZLRightScoreLabel.backgroundColor = ZLH_Color(0, 204, 131, 1);
        _ZLRightScoreLabel.textColor = [UIColor whiteColor];
        _ZLRightScoreLabel.font = [UIFont boldSystemFontOfSize:30];
        _ZLRightScoreLabel.textAlignment = NSTextAlignmentCenter;
        _ZLRightScoreLabel.layer.cornerRadius = 8.0f;
        _ZLRightScoreLabel.layer.masksToBounds = YES;
    }
    return _ZLRightScoreLabel;
}
- (UIButton *)ZLRightScoreAddButton{
    if (!_ZLRightScoreAddButton) {
        _ZLRightScoreAddButton = [[UIButton alloc] init];
        _ZLRightScoreAddButton.titleLabel.font = [UIFont boldSystemFontOfSize:22];
        _ZLRightScoreAddButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_ZLRightScoreAddButton setTitle:@"+1" forState:UIControlStateNormal];
        [_ZLRightScoreAddButton setTitleColor:[UIColor systemGreenColor] forState:UIControlStateNormal];
        _ZLRightScoreAddButton.layer.cornerRadius = 6.0f;
        _ZLRightScoreAddButton.layer.masksToBounds = YES;
        _ZLRightScoreAddButton.layer.borderColor = [UIColor systemRedColor].CGColor;
        _ZLRightScoreAddButton.layer.borderWidth = 2.0f;
        _ZLRightScoreAddButton.tag = 99;
        [_ZLRightScoreAddButton addTarget:self action:@selector(ZLScorerRefresh:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _ZLRightScoreAddButton;
}
- (UIButton *)ZLRightScoreAddTwoButton{
    if (!_ZLRightScoreAddTwoButton) {
        _ZLRightScoreAddTwoButton = [[UIButton alloc] init];
        [_ZLRightScoreAddTwoButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        _ZLRightScoreAddTwoButton.titleLabel.font = [UIFont boldSystemFontOfSize:22];
        _ZLRightScoreAddTwoButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_ZLRightScoreAddTwoButton setTitle:@"+2" forState:UIControlStateNormal];
        _ZLRightScoreAddTwoButton.layer.cornerRadius = 6.0f;
        _ZLRightScoreAddTwoButton.layer.masksToBounds = YES;
        _ZLRightScoreAddTwoButton.layer.borderColor = [UIColor systemRedColor].CGColor;
        _ZLRightScoreAddTwoButton.layer.borderWidth = 2.0f;
        _ZLRightScoreAddTwoButton.tag = 100;
        [_ZLRightScoreAddTwoButton addTarget:self action:@selector(ZLScorerRefresh:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _ZLRightScoreAddTwoButton;
}
- (UIButton *)ZLRightScoreAddThreeButton{
    if (!_ZLRightScoreAddThreeButton) {
        _ZLRightScoreAddThreeButton = [[UIButton alloc] init];
        [_ZLRightScoreAddThreeButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        _ZLRightScoreAddThreeButton.titleLabel.font = [UIFont boldSystemFontOfSize:22];
        _ZLRightScoreAddThreeButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_ZLRightScoreAddThreeButton setTitle:@"+3" forState:UIControlStateNormal];
        _ZLRightScoreAddThreeButton.layer.cornerRadius = 6.0f;
        _ZLRightScoreAddThreeButton.layer.masksToBounds = YES;
        _ZLRightScoreAddThreeButton.layer.borderColor = [UIColor systemRedColor].CGColor;
        _ZLRightScoreAddThreeButton.layer.borderWidth = 2.0f;
        _ZLRightScoreAddThreeButton.tag = 101;
        [_ZLRightScoreAddThreeButton addTarget:self action:@selector(ZLScorerRefresh:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _ZLRightScoreAddThreeButton;
}
- (UILabel *)ZLVSLabel{
    if (!_ZLVSLabel) {
        _ZLVSLabel = [[UILabel alloc] init];
        _ZLVSLabel.textColor = [UIColor systemRedColor];
        _ZLVSLabel.font = [UIFont boldSystemFontOfSize:38];
        _ZLVSLabel.textAlignment = NSTextAlignmentCenter;
        _ZLVSLabel.text = @":";
    }
    return _ZLVSLabel;
}
- (UILabel *)ZLLeftScoreLabel{
    if (!_ZLLeftScoreLabel) {
        _ZLLeftScoreLabel = [[UILabel alloc] init];
        _ZLLeftScoreLabel.backgroundColor = ZLH_Color(0, 204, 131, 1);
        _ZLLeftScoreLabel.textColor = [UIColor whiteColor];
        _ZLLeftScoreLabel.font = [UIFont boldSystemFontOfSize:30];
        _ZLLeftScoreLabel.textAlignment = NSTextAlignmentCenter;
        _ZLLeftScoreLabel.layer.cornerRadius = 8.0f;
        _ZLLeftScoreLabel.layer.masksToBounds = YES;
    }
    return _ZLLeftScoreLabel;
}
- (UIButton *)ZLLeftScoreAddButton{
    if (!_ZLLeftScoreAddButton) {
        _ZLLeftScoreAddButton = [[UIButton alloc] init];
        [_ZLLeftScoreAddButton setTitleColor:[UIColor systemGreenColor] forState:UIControlStateNormal];
        _ZLLeftScoreAddButton.titleLabel.font = [UIFont boldSystemFontOfSize:22];
        _ZLLeftScoreAddButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_ZLLeftScoreAddButton setTitle:@"+1" forState:UIControlStateNormal];
        _ZLLeftScoreAddButton.layer.cornerRadius = 6.0f;
        _ZLLeftScoreAddButton.layer.masksToBounds = YES;
        _ZLLeftScoreAddButton.layer.borderColor = [UIColor systemRedColor].CGColor;
        _ZLLeftScoreAddButton.layer.borderWidth = 2.0f;
        _ZLLeftScoreAddButton.tag = 102;
        [_ZLLeftScoreAddButton addTarget:self action:@selector(ZLScorerRefresh:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _ZLLeftScoreAddButton;
}
- (UIButton *)ZLLeftScoreAddTwoButton{
    if (!_ZLLeftScoreAddTwoButton) {
        _ZLLeftScoreAddTwoButton = [[UIButton alloc] init];
        [_ZLLeftScoreAddTwoButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
      _ZLLeftScoreAddTwoButton.titleLabel.font = [UIFont boldSystemFontOfSize:22];
        _ZLLeftScoreAddTwoButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_ZLLeftScoreAddTwoButton setTitle:@"+2" forState:UIControlStateNormal];
        _ZLLeftScoreAddTwoButton.layer.cornerRadius = 6.0f;
        _ZLLeftScoreAddTwoButton.layer.masksToBounds = YES;
        _ZLLeftScoreAddTwoButton.layer.borderColor = [UIColor systemRedColor].CGColor;
        _ZLLeftScoreAddTwoButton.layer.borderWidth = 2.0f;
        _ZLLeftScoreAddTwoButton.tag = 103;
        [_ZLLeftScoreAddTwoButton addTarget:self action:@selector(ZLScorerRefresh:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _ZLLeftScoreAddTwoButton;
}
- (UIButton *)ZLLeftScoreAddThreeButton{
    if (!_ZLLeftScoreAddThreeButton) {
        _ZLLeftScoreAddThreeButton = [[UIButton alloc] init];
        [_ZLLeftScoreAddThreeButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        _ZLLeftScoreAddThreeButton.titleLabel.font = [UIFont boldSystemFontOfSize:22];
        _ZLLeftScoreAddThreeButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_ZLLeftScoreAddThreeButton setTitle:@"+3" forState:UIControlStateNormal];
        _ZLLeftScoreAddThreeButton.layer.cornerRadius = 6.0f;
        _ZLLeftScoreAddThreeButton.layer.masksToBounds = YES;
        _ZLLeftScoreAddThreeButton.layer.borderColor = [UIColor systemRedColor].CGColor;
        _ZLLeftScoreAddThreeButton.layer.borderWidth = 2.0f;
        _ZLLeftScoreAddThreeButton.tag = 104;
        [_ZLLeftScoreAddThreeButton addTarget:self action:@selector(ZLScorerRefresh:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _ZLLeftScoreAddThreeButton;
}
@end
