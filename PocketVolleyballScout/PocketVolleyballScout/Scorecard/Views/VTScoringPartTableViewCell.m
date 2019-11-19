//
//  VTScoringPartTableViewCell.m
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import "VTScoringPartTableViewCell.h"
#import "VTScorecardViewModel.h"

@interface VTScoringPartTableViewCell()
@property(nonatomic, strong)UILabel *VTRightScoreLabel;//右边得分
@property(nonatomic, strong)UIButton *VTRightScoreAddButton;//右边得1分按钮
@property(nonatomic, strong)UIButton *VTRightScoreAddTwoButton;//右边得2分按钮
@property(nonatomic, strong)UIButton *VTRightScoreAddThreeButton;//右边得3分按钮

@property(nonatomic, strong)UILabel *VTVSLabel;//VS标识

@property(nonatomic, strong)UILabel *VTLeftScoreLabel;//左边得分
@property(nonatomic, strong)UIButton *VTLeftScoreAddButton;//左边得1分按钮
@property(nonatomic, strong)UIButton *VTLeftScoreAddTwoButton;//左边得2分按钮
@property(nonatomic, strong)UIButton *VTLeftScoreAddThreeButton;//左边得3分按钮
@end
@implementation VTScoringPartTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = [UIColor cyanColor];
        [self VTSetContentView];
    }
    return self;
}
#pragma mark - action
- (void)VTSetContentView{
    [self.contentView addSubview:self.VTRightScoreLabel];
    [self.contentView addSubview:self.VTRightScoreAddButton];
    [self.contentView addSubview:self.VTRightScoreAddTwoButton];
    [self.contentView addSubview:self.VTRightScoreAddThreeButton];
    
    [self.contentView addSubview:self.VTVSLabel];
    
    [self.contentView addSubview:self.VTLeftScoreLabel];
    [self.contentView addSubview:self.VTLeftScoreAddButton];
    [self.contentView addSubview:self.VTLeftScoreAddTwoButton];
    [self.contentView addSubview:self.VTLeftScoreAddThreeButton];

    
    [self.VTRightScoreLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(32);
        make.top.equalTo(self.contentView).offset(30);
        make.width.mas_equalTo((VTWIDTH - 224) * 0.5);
        make.height.mas_equalTo(60);
    }];
    [self.VTRightScoreAddButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.VTRightScoreLabel);
        make.top.equalTo(self.VTRightScoreLabel.mas_bottom).offset(20);
        make.width.mas_equalTo((VTWIDTH - 224) * 0.5);
        make.height.mas_equalTo(30);
    }];
    [self.VTRightScoreAddTwoButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.VTRightScoreLabel);
        make.top.equalTo(self.VTRightScoreAddButton.mas_bottom).offset(20);
        make.width.mas_equalTo((VTWIDTH - 224) * 0.5);
        make.height.mas_equalTo(30);
    }];
    [self.VTRightScoreAddThreeButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.VTRightScoreLabel);
        make.top.equalTo(self.VTRightScoreAddTwoButton.mas_bottom).offset(20);
        make.width.mas_equalTo((VTWIDTH - 224) * 0.5);
        make.height.mas_equalTo(30);
        make.bottom.equalTo(self.contentView).offset(-15);
    }];
    [self.VTVSLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.contentView);
    make.centerY.equalTo(self.VTRightScoreLabel);
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(40);
    }];
    [self.VTLeftScoreLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.equalTo(self.contentView).offset(-32);
        make.top.equalTo(self.contentView).offset(30);
        make.width.mas_equalTo((VTWIDTH - 224) * 0.5);
        make.height.mas_equalTo(60);
    }];
    [self.VTLeftScoreAddButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.VTLeftScoreLabel);
        make.top.equalTo(self.VTLeftScoreLabel.mas_bottom).offset(20);
        make.width.mas_equalTo((VTWIDTH - 224) * 0.5);
        make.height.mas_equalTo(30);
    }];
    [self.VTLeftScoreAddTwoButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.VTLeftScoreLabel);
        make.top.equalTo(self.VTLeftScoreAddButton.mas_bottom).offset(20);
        make.width.mas_equalTo((VTWIDTH - 224) * 0.5);
        make.height.mas_equalTo(30);
    }];
    [self.VTLeftScoreAddThreeButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.VTLeftScoreLabel);
        make.top.equalTo(self.VTLeftScoreAddTwoButton.mas_bottom).offset(20);
        make.width.mas_equalTo((VTWIDTH - 224) * 0.5);
        make.height.mas_equalTo(30);
    }];
}
#pragma mark - actions
- (void)VTScorerRefresh:(UIButton *)sender{
    if (sender.tag == 99) {
        self.VTModel.VTRightscore = self.VTModel.VTRightscore + 1;
        self.VTRightScoreLabel.text = [NSString stringWithFormat:@"%ld",_VTModel.VTRightscore];
    }else if (sender.tag == 100){
        self.VTModel.VTRightscore = self.VTModel.VTRightscore + 2;
        self.VTRightScoreLabel.text = [NSString stringWithFormat:@"%ld",_VTModel.VTRightscore];
    }else if (sender.tag == 101){
        self.VTModel.VTRightscore = self.VTModel.VTRightscore + 3;
        self.VTRightScoreLabel.text = [NSString stringWithFormat:@"%ld",_VTModel.VTRightscore];
    }else if (sender.tag == 102){
        self.VTModel.VTLeftscore = self.VTModel.VTLeftscore + 1;
        self.VTLeftScoreLabel.text = [NSString stringWithFormat:@"%ld",_VTModel.VTLeftscore];
    }else if (sender.tag == 103){
        self.VTModel.VTLeftscore = self.VTModel.VTLeftscore + 2;
        self.VTLeftScoreLabel.text = [NSString stringWithFormat:@"%ld",_VTModel.VTLeftscore];
    }else if (sender.tag == 104){
        self.VTModel.VTLeftscore = self.VTModel.VTLeftscore + 3;
        self.VTLeftScoreLabel.text = [NSString stringWithFormat:@"%ld",_VTModel.VTLeftscore];
    }
}
- (void)setVTModel:(VTScorecardViewModel *)VTModel{
    _VTModel = VTModel;
    self.VTRightScoreLabel.text = [NSString stringWithFormat:@"%ld",_VTModel.VTRightscore];
    self.VTLeftScoreLabel.text = [NSString stringWithFormat:@"%ld",_VTModel.VTLeftscore];
}
#pragma mark - 属性懒加载
- (UILabel *)VTRightScoreLabel{
    if (!_VTRightScoreLabel) {
        _VTRightScoreLabel = [[UILabel alloc] init];
        _VTRightScoreLabel.backgroundColor = VTH_Color(0, 204, 131, 1);
        _VTRightScoreLabel.textColor = [UIColor whiteColor];
        _VTRightScoreLabel.font = [UIFont boldSystemFontOfSize:30];
        _VTRightScoreLabel.textAlignment = NSTextAlignmentCenter;
        _VTRightScoreLabel.layer.cornerRadius = 8.0f;
        _VTRightScoreLabel.layer.masksToBounds = YES;
    }
    return _VTRightScoreLabel;
}
- (UIButton *)VTRightScoreAddButton{
    if (!_VTRightScoreAddButton) {
        _VTRightScoreAddButton = [[UIButton alloc] init];
        _VTRightScoreAddButton.titleLabel.font = [UIFont boldSystemFontOfSize:22];
        _VTRightScoreAddButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_VTRightScoreAddButton setTitle:@"+1" forState:UIControlStateNormal];
        [_VTRightScoreAddButton setTitleColor:[UIColor systemGreenColor] forState:UIControlStateNormal];
        _VTRightScoreAddButton.layer.cornerRadius = 6.0f;
        _VTRightScoreAddButton.layer.masksToBounds = YES;
        _VTRightScoreAddButton.layer.borderColor = [UIColor systemRedColor].CGColor;
        _VTRightScoreAddButton.layer.borderWidth = 2.0f;
        _VTRightScoreAddButton.tag = 99;
        [_VTRightScoreAddButton addTarget:self action:@selector(VTScorerRefresh:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _VTRightScoreAddButton;
}
- (UIButton *)VTRightScoreAddTwoButton{
    if (!_VTRightScoreAddTwoButton) {
        _VTRightScoreAddTwoButton = [[UIButton alloc] init];
        [_VTRightScoreAddTwoButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        _VTRightScoreAddTwoButton.titleLabel.font = [UIFont boldSystemFontOfSize:22];
        _VTRightScoreAddTwoButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_VTRightScoreAddTwoButton setTitle:@"+2" forState:UIControlStateNormal];
        _VTRightScoreAddTwoButton.layer.cornerRadius = 6.0f;
        _VTRightScoreAddTwoButton.layer.masksToBounds = YES;
        _VTRightScoreAddTwoButton.layer.borderColor = [UIColor systemRedColor].CGColor;
        _VTRightScoreAddTwoButton.layer.borderWidth = 2.0f;
        _VTRightScoreAddTwoButton.tag = 100;
        [_VTRightScoreAddTwoButton addTarget:self action:@selector(VTScorerRefresh:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _VTRightScoreAddTwoButton;
}
- (UIButton *)VTRightScoreAddThreeButton{
    if (!_VTRightScoreAddThreeButton) {
        _VTRightScoreAddThreeButton = [[UIButton alloc] init];
        [_VTRightScoreAddThreeButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        _VTRightScoreAddThreeButton.titleLabel.font = [UIFont boldSystemFontOfSize:22];
        _VTRightScoreAddThreeButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_VTRightScoreAddThreeButton setTitle:@"+3" forState:UIControlStateNormal];
        _VTRightScoreAddThreeButton.layer.cornerRadius = 6.0f;
        _VTRightScoreAddThreeButton.layer.masksToBounds = YES;
        _VTRightScoreAddThreeButton.layer.borderColor = [UIColor systemRedColor].CGColor;
        _VTRightScoreAddThreeButton.layer.borderWidth = 2.0f;
        _VTRightScoreAddThreeButton.tag = 101;
        [_VTRightScoreAddThreeButton addTarget:self action:@selector(VTScorerRefresh:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _VTRightScoreAddThreeButton;
}
- (UILabel *)VTVSLabel{
    if (!_VTVSLabel) {
        _VTVSLabel = [[UILabel alloc] init];
        _VTVSLabel.textColor = [UIColor systemRedColor];
        _VTVSLabel.font = [UIFont boldSystemFontOfSize:38];
        _VTVSLabel.textAlignment = NSTextAlignmentCenter;
        _VTVSLabel.text = @":";
    }
    return _VTVSLabel;
}
- (UILabel *)VTLeftScoreLabel{
    if (!_VTLeftScoreLabel) {
        _VTLeftScoreLabel = [[UILabel alloc] init];
        _VTLeftScoreLabel.backgroundColor = VTH_Color(0, 204, 131, 1);
        _VTLeftScoreLabel.textColor = [UIColor whiteColor];
        _VTLeftScoreLabel.font = [UIFont boldSystemFontOfSize:30];
        _VTLeftScoreLabel.textAlignment = NSTextAlignmentCenter;
        _VTLeftScoreLabel.layer.cornerRadius = 8.0f;
        _VTLeftScoreLabel.layer.masksToBounds = YES;
    }
    return _VTLeftScoreLabel;
}
- (UIButton *)VTLeftScoreAddButton{
    if (!_VTLeftScoreAddButton) {
        _VTLeftScoreAddButton = [[UIButton alloc] init];
        [_VTLeftScoreAddButton setTitleColor:[UIColor systemGreenColor] forState:UIControlStateNormal];
        _VTLeftScoreAddButton.titleLabel.font = [UIFont boldSystemFontOfSize:22];
        _VTLeftScoreAddButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_VTLeftScoreAddButton setTitle:@"+1" forState:UIControlStateNormal];
        _VTLeftScoreAddButton.layer.cornerRadius = 6.0f;
        _VTLeftScoreAddButton.layer.masksToBounds = YES;
        _VTLeftScoreAddButton.layer.borderColor = [UIColor systemRedColor].CGColor;
        _VTLeftScoreAddButton.layer.borderWidth = 2.0f;
        _VTLeftScoreAddButton.tag = 102;
        [_VTLeftScoreAddButton addTarget:self action:@selector(VTScorerRefresh:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _VTLeftScoreAddButton;
}
- (UIButton *)VTLeftScoreAddTwoButton{
    if (!_VTLeftScoreAddTwoButton) {
        _VTLeftScoreAddTwoButton = [[UIButton alloc] init];
        [_VTLeftScoreAddTwoButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
      _VTLeftScoreAddTwoButton.titleLabel.font = [UIFont boldSystemFontOfSize:22];
        _VTLeftScoreAddTwoButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_VTLeftScoreAddTwoButton setTitle:@"+2" forState:UIControlStateNormal];
        _VTLeftScoreAddTwoButton.layer.cornerRadius = 6.0f;
        _VTLeftScoreAddTwoButton.layer.masksToBounds = YES;
        _VTLeftScoreAddTwoButton.layer.borderColor = [UIColor systemRedColor].CGColor;
        _VTLeftScoreAddTwoButton.layer.borderWidth = 2.0f;
        _VTLeftScoreAddTwoButton.tag = 103;
        [_VTLeftScoreAddTwoButton addTarget:self action:@selector(VTScorerRefresh:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _VTLeftScoreAddTwoButton;
}
- (UIButton *)VTLeftScoreAddThreeButton{
    if (!_VTLeftScoreAddThreeButton) {
        _VTLeftScoreAddThreeButton = [[UIButton alloc] init];
        [_VTLeftScoreAddThreeButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        _VTLeftScoreAddThreeButton.titleLabel.font = [UIFont boldSystemFontOfSize:22];
        _VTLeftScoreAddThreeButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_VTLeftScoreAddThreeButton setTitle:@"+3" forState:UIControlStateNormal];
        _VTLeftScoreAddThreeButton.layer.cornerRadius = 6.0f;
        _VTLeftScoreAddThreeButton.layer.masksToBounds = YES;
        _VTLeftScoreAddThreeButton.layer.borderColor = [UIColor systemRedColor].CGColor;
        _VTLeftScoreAddThreeButton.layer.borderWidth = 2.0f;
        _VTLeftScoreAddThreeButton.tag = 104;
        [_VTLeftScoreAddThreeButton addTarget:self action:@selector(VTScorerRefresh:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _VTLeftScoreAddThreeButton;
}
@end
