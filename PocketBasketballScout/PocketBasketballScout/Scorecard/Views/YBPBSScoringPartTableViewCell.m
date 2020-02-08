//
//  YBPBSScoringPartTableViewCell.m
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import "YBPBSScoringPartTableViewCell.h"
#import "YBPBSScorecardViewModel.h"

@interface YBPBSScoringPartTableViewCell()
@property(nonatomic, strong)UILabel *YBPBSRightScoreLabel;//右边得分
@property(nonatomic, strong)UIButton *YBPBSRightScoreAddButton;//右边得1分按钮
@property(nonatomic, strong)UIButton *YBPBSRightScoreAddTwoButton;//右边得2分按钮
@property(nonatomic, strong)UIButton *YBPBSRightScoreAddThreeButton;//右边得3分按钮

@property(nonatomic, strong)UILabel *YBPBSVSLabel;//VS标识

@property(nonatomic, strong)UILabel *YBPBSLeftScoreLabel;//左边得分
@property(nonatomic, strong)UIButton *YBPBSLeftScoreAddButton;//左边得1分按钮
@property(nonatomic, strong)UIButton *YBPBSLeftScoreAddTwoButton;//左边得2分按钮
@property(nonatomic, strong)UIButton *YBPBSLeftScoreAddThreeButton;//左边得3分按钮
@end
@implementation YBPBSScoringPartTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = [UIColor whiteColor];
        [self YBPBSSetContentView];
    }
    return self;
}
#pragma mark - action
- (void)YBPBSSetContentView{
    [self.contentView addSubview:self.YBPBSRightScoreLabel];
    [self.contentView addSubview:self.YBPBSRightScoreAddButton];
    [self.contentView addSubview:self.YBPBSRightScoreAddTwoButton];
    [self.contentView addSubview:self.YBPBSRightScoreAddThreeButton];
    
    [self.contentView addSubview:self.YBPBSVSLabel];
    
    [self.contentView addSubview:self.YBPBSLeftScoreLabel];
    [self.contentView addSubview:self.YBPBSLeftScoreAddButton];
    [self.contentView addSubview:self.YBPBSLeftScoreAddTwoButton];
    [self.contentView addSubview:self.YBPBSLeftScoreAddThreeButton];

    
    [self.YBPBSRightScoreLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(32);
        make.top.equalTo(self.contentView).offset(30);
        make.width.mas_equalTo((YBPBSWIDTH - 224) * 0.5);
        make.height.mas_equalTo(60);
    }];
    [self.YBPBSRightScoreAddButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.YBPBSRightScoreLabel);
        make.top.equalTo(self.YBPBSRightScoreLabel.mas_bottom).offset(20);
        make.width.mas_equalTo((YBPBSWIDTH - 224) * 0.5);
        make.height.mas_equalTo(30);
    }];
    [self.YBPBSRightScoreAddTwoButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.YBPBSRightScoreLabel);
        make.top.equalTo(self.YBPBSRightScoreAddButton.mas_bottom).offset(20);
        make.width.mas_equalTo((YBPBSWIDTH - 224) * 0.5);
        make.height.mas_equalTo(30);
    }];
    [self.YBPBSRightScoreAddThreeButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.YBPBSRightScoreLabel);
        make.top.equalTo(self.YBPBSRightScoreAddTwoButton.mas_bottom).offset(20);
        make.width.mas_equalTo((YBPBSWIDTH - 224) * 0.5);
        make.height.mas_equalTo(30);
        make.bottom.equalTo(self.contentView).offset(-15);
    }];
    [self.YBPBSVSLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.contentView);
    make.centerY.equalTo(self.YBPBSRightScoreLabel);
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(40);
    }];
    [self.YBPBSLeftScoreLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.equalTo(self.contentView).offset(-32);
        make.top.equalTo(self.contentView).offset(30);
        make.width.mas_equalTo((YBPBSWIDTH - 224) * 0.5);
        make.height.mas_equalTo(60);
    }];
    [self.YBPBSLeftScoreAddButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.YBPBSLeftScoreLabel);
        make.top.equalTo(self.YBPBSLeftScoreLabel.mas_bottom).offset(20);
        make.width.mas_equalTo((YBPBSWIDTH - 224) * 0.5);
        make.height.mas_equalTo(30);
    }];
    [self.YBPBSLeftScoreAddTwoButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.YBPBSLeftScoreLabel);
        make.top.equalTo(self.YBPBSLeftScoreAddButton.mas_bottom).offset(20);
        make.width.mas_equalTo((YBPBSWIDTH - 224) * 0.5);
        make.height.mas_equalTo(30);
    }];
    [self.YBPBSLeftScoreAddThreeButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.YBPBSLeftScoreLabel);
        make.top.equalTo(self.YBPBSLeftScoreAddTwoButton.mas_bottom).offset(20);
        make.width.mas_equalTo((YBPBSWIDTH - 224) * 0.5);
        make.height.mas_equalTo(30);
    }];
}
#pragma mark - actions
- (void)YBPBSScorerRefresh:(UIButton *)sender{
    if (sender.tag == 99) {
        self.YBPBSModel.YBPBSRightscore = self.YBPBSModel.YBPBSRightscore + 1;
        self.YBPBSRightScoreLabel.text = [NSString stringWithFormat:@"%ld",_YBPBSModel.YBPBSRightscore];
    }else if (sender.tag == 100){
        self.YBPBSModel.YBPBSRightscore = self.YBPBSModel.YBPBSRightscore + 2;
        self.YBPBSRightScoreLabel.text = [NSString stringWithFormat:@"%ld",_YBPBSModel.YBPBSRightscore];
    }else if (sender.tag == 101){
        self.YBPBSModel.YBPBSRightscore = self.YBPBSModel.YBPBSRightscore + 3;
        self.YBPBSRightScoreLabel.text = [NSString stringWithFormat:@"%ld",_YBPBSModel.YBPBSRightscore];
    }else if (sender.tag == 102){
        self.YBPBSModel.YBPBSLeftscore = self.YBPBSModel.YBPBSLeftscore + 1;
        self.YBPBSLeftScoreLabel.text = [NSString stringWithFormat:@"%ld",_YBPBSModel.YBPBSLeftscore];
    }else if (sender.tag == 103){
        self.YBPBSModel.YBPBSLeftscore = self.YBPBSModel.YBPBSLeftscore + 2;
        self.YBPBSLeftScoreLabel.text = [NSString stringWithFormat:@"%ld",_YBPBSModel.YBPBSLeftscore];
    }else if (sender.tag == 104){
        self.YBPBSModel.YBPBSLeftscore = self.YBPBSModel.YBPBSLeftscore + 3;
        self.YBPBSLeftScoreLabel.text = [NSString stringWithFormat:@"%ld",_YBPBSModel.YBPBSLeftscore];
    }
}
- (void)setYBPBSModel:(YBPBSScorecardViewModel *)YBPBSModel{
    _YBPBSModel = YBPBSModel;
    self.YBPBSRightScoreLabel.text = [NSString stringWithFormat:@"%ld",_YBPBSModel.YBPBSRightscore];
    self.YBPBSLeftScoreLabel.text = [NSString stringWithFormat:@"%ld",_YBPBSModel.YBPBSLeftscore];
}
#pragma mark - 属性懒加载
- (UILabel *)YBPBSRightScoreLabel{
    if (!_YBPBSRightScoreLabel) {
        _YBPBSRightScoreLabel = [[UILabel alloc] init];
        _YBPBSRightScoreLabel.backgroundColor = YBPBSH_Color(0, 204, 131, 1);
        _YBPBSRightScoreLabel.textColor = [UIColor whiteColor];
        _YBPBSRightScoreLabel.font = [UIFont boldSystemFontOfSize:30];
        _YBPBSRightScoreLabel.textAlignment = NSTextAlignmentCenter;
        _YBPBSRightScoreLabel.layer.cornerRadius = 8.0f;
        _YBPBSRightScoreLabel.layer.masksToBounds = YES;
    }
    return _YBPBSRightScoreLabel;
}
- (UIButton *)YBPBSRightScoreAddButton{
    if (!_YBPBSRightScoreAddButton) {
        _YBPBSRightScoreAddButton = [[UIButton alloc] init];
        _YBPBSRightScoreAddButton.titleLabel.font = [UIFont boldSystemFontOfSize:22];
        _YBPBSRightScoreAddButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_YBPBSRightScoreAddButton setTitle:@"+1" forState:UIControlStateNormal];
        [_YBPBSRightScoreAddButton setTitleColor:[UIColor systemGreenColor] forState:UIControlStateNormal];
        _YBPBSRightScoreAddButton.layer.cornerRadius = 6.0f;
        _YBPBSRightScoreAddButton.layer.masksToBounds = YES;
        _YBPBSRightScoreAddButton.layer.borderColor = [UIColor systemRedColor].CGColor;
        _YBPBSRightScoreAddButton.layer.borderWidth = 2.0f;
        _YBPBSRightScoreAddButton.tag = 99;
        [_YBPBSRightScoreAddButton addTarget:self action:@selector(YBPBSScorerRefresh:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _YBPBSRightScoreAddButton;
}
- (UIButton *)YBPBSRightScoreAddTwoButton{
    if (!_YBPBSRightScoreAddTwoButton) {
        _YBPBSRightScoreAddTwoButton = [[UIButton alloc] init];
        [_YBPBSRightScoreAddTwoButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        _YBPBSRightScoreAddTwoButton.titleLabel.font = [UIFont boldSystemFontOfSize:22];
        _YBPBSRightScoreAddTwoButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_YBPBSRightScoreAddTwoButton setTitle:@"+2" forState:UIControlStateNormal];
        _YBPBSRightScoreAddTwoButton.layer.cornerRadius = 6.0f;
        _YBPBSRightScoreAddTwoButton.layer.masksToBounds = YES;
        _YBPBSRightScoreAddTwoButton.layer.borderColor = [UIColor systemRedColor].CGColor;
        _YBPBSRightScoreAddTwoButton.layer.borderWidth = 2.0f;
        _YBPBSRightScoreAddTwoButton.tag = 100;
        [_YBPBSRightScoreAddTwoButton addTarget:self action:@selector(YBPBSScorerRefresh:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _YBPBSRightScoreAddTwoButton;
}
- (UIButton *)YBPBSRightScoreAddThreeButton{
    if (!_YBPBSRightScoreAddThreeButton) {
        _YBPBSRightScoreAddThreeButton = [[UIButton alloc] init];
        [_YBPBSRightScoreAddThreeButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        _YBPBSRightScoreAddThreeButton.titleLabel.font = [UIFont boldSystemFontOfSize:22];
        _YBPBSRightScoreAddThreeButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_YBPBSRightScoreAddThreeButton setTitle:@"+3" forState:UIControlStateNormal];
        _YBPBSRightScoreAddThreeButton.layer.cornerRadius = 6.0f;
        _YBPBSRightScoreAddThreeButton.layer.masksToBounds = YES;
        _YBPBSRightScoreAddThreeButton.layer.borderColor = [UIColor systemRedColor].CGColor;
        _YBPBSRightScoreAddThreeButton.layer.borderWidth = 2.0f;
        _YBPBSRightScoreAddThreeButton.tag = 101;
        [_YBPBSRightScoreAddThreeButton addTarget:self action:@selector(YBPBSScorerRefresh:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _YBPBSRightScoreAddThreeButton;
}
- (UILabel *)YBPBSVSLabel{
    if (!_YBPBSVSLabel) {
        _YBPBSVSLabel = [[UILabel alloc] init];
        _YBPBSVSLabel.textColor = [UIColor systemRedColor];
        _YBPBSVSLabel.font = [UIFont boldSystemFontOfSize:38];
        _YBPBSVSLabel.textAlignment = NSTextAlignmentCenter;
        _YBPBSVSLabel.text = @":";
    }
    return _YBPBSVSLabel;
}
- (UILabel *)YBPBSLeftScoreLabel{
    if (!_YBPBSLeftScoreLabel) {
        _YBPBSLeftScoreLabel = [[UILabel alloc] init];
        _YBPBSLeftScoreLabel.backgroundColor = YBPBSH_Color(0, 204, 131, 1);
        _YBPBSLeftScoreLabel.textColor = [UIColor whiteColor];
        _YBPBSLeftScoreLabel.font = [UIFont boldSystemFontOfSize:30];
        _YBPBSLeftScoreLabel.textAlignment = NSTextAlignmentCenter;
        _YBPBSLeftScoreLabel.layer.cornerRadius = 8.0f;
        _YBPBSLeftScoreLabel.layer.masksToBounds = YES;
    }
    return _YBPBSLeftScoreLabel;
}
- (UIButton *)YBPBSLeftScoreAddButton{
    if (!_YBPBSLeftScoreAddButton) {
        _YBPBSLeftScoreAddButton = [[UIButton alloc] init];
        [_YBPBSLeftScoreAddButton setTitleColor:[UIColor systemGreenColor] forState:UIControlStateNormal];
        _YBPBSLeftScoreAddButton.titleLabel.font = [UIFont boldSystemFontOfSize:22];
        _YBPBSLeftScoreAddButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_YBPBSLeftScoreAddButton setTitle:@"+1" forState:UIControlStateNormal];
        _YBPBSLeftScoreAddButton.layer.cornerRadius = 6.0f;
        _YBPBSLeftScoreAddButton.layer.masksToBounds = YES;
        _YBPBSLeftScoreAddButton.layer.borderColor = [UIColor systemRedColor].CGColor;
        _YBPBSLeftScoreAddButton.layer.borderWidth = 2.0f;
        _YBPBSLeftScoreAddButton.tag = 102;
        [_YBPBSLeftScoreAddButton addTarget:self action:@selector(YBPBSScorerRefresh:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _YBPBSLeftScoreAddButton;
}
- (UIButton *)YBPBSLeftScoreAddTwoButton{
    if (!_YBPBSLeftScoreAddTwoButton) {
        _YBPBSLeftScoreAddTwoButton = [[UIButton alloc] init];
        [_YBPBSLeftScoreAddTwoButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
      _YBPBSLeftScoreAddTwoButton.titleLabel.font = [UIFont boldSystemFontOfSize:22];
        _YBPBSLeftScoreAddTwoButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_YBPBSLeftScoreAddTwoButton setTitle:@"+2" forState:UIControlStateNormal];
        _YBPBSLeftScoreAddTwoButton.layer.cornerRadius = 6.0f;
        _YBPBSLeftScoreAddTwoButton.layer.masksToBounds = YES;
        _YBPBSLeftScoreAddTwoButton.layer.borderColor = [UIColor systemRedColor].CGColor;
        _YBPBSLeftScoreAddTwoButton.layer.borderWidth = 2.0f;
        _YBPBSLeftScoreAddTwoButton.tag = 103;
        [_YBPBSLeftScoreAddTwoButton addTarget:self action:@selector(YBPBSScorerRefresh:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _YBPBSLeftScoreAddTwoButton;
}
- (UIButton *)YBPBSLeftScoreAddThreeButton{
    if (!_YBPBSLeftScoreAddThreeButton) {
        _YBPBSLeftScoreAddThreeButton = [[UIButton alloc] init];
        [_YBPBSLeftScoreAddThreeButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        _YBPBSLeftScoreAddThreeButton.titleLabel.font = [UIFont boldSystemFontOfSize:22];
        _YBPBSLeftScoreAddThreeButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_YBPBSLeftScoreAddThreeButton setTitle:@"+3" forState:UIControlStateNormal];
        _YBPBSLeftScoreAddThreeButton.layer.cornerRadius = 6.0f;
        _YBPBSLeftScoreAddThreeButton.layer.masksToBounds = YES;
        _YBPBSLeftScoreAddThreeButton.layer.borderColor = [UIColor systemRedColor].CGColor;
        _YBPBSLeftScoreAddThreeButton.layer.borderWidth = 2.0f;
        _YBPBSLeftScoreAddThreeButton.tag = 104;
        [_YBPBSLeftScoreAddThreeButton addTarget:self action:@selector(YBPBSScorerRefresh:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _YBPBSLeftScoreAddThreeButton;
}
@end
