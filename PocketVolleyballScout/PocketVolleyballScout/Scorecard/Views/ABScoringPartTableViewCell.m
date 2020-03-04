//
//  ABScoringPartTableViewCell.m
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import "ABScoringPartTableViewCell.h"
#import "ABScorecardViewModel.h"

@interface ABScoringPartTableViewCell()
@property(nonatomic, strong)UILabel *ABRightScoreLabel;//右边得分
@property(nonatomic, strong)UIButton *ABRightScoreAddButton;//右边得1分按钮
@property(nonatomic, strong)UIButton *ABRightScoreReductionButton;//右边减1分按钮

@property(nonatomic, strong)UILabel *ABVSLabel;//VS标识

@property(nonatomic, strong)UILabel *ABLeftScoreLabel;//左边得分
@property(nonatomic, strong)UIButton *ABLeftScoreAddButton;//左边得1分按钮
@property(nonatomic, strong)UIButton *ABLeftScoreReductionButton;//左边减1分按钮
@end
@implementation ABScoringPartTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = [UIColor cyanColor];
        [self ABSetContentView];
    }
    return self;
}
#pragma mark - action
- (void)ABSetContentView{
    [self.contentView addSubview:self.ABRightScoreLabel];
    [self.contentView addSubview:self.ABRightScoreAddButton];
    [self.contentView addSubview:self.ABRightScoreReductionButton];
    
    [self.contentView addSubview:self.ABVSLabel];
    
    [self.contentView addSubview:self.ABLeftScoreLabel];
    [self.contentView addSubview:self.ABLeftScoreAddButton];
    [self.contentView addSubview:self.ABLeftScoreReductionButton];

    
    [self.ABRightScoreLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(32);
        make.top.equalTo(self.contentView).offset(15);
        make.width.mas_equalTo((ABWIDTH - 224) * 0.5);
        make.height.mas_equalTo(60);
    }];
    [self.ABRightScoreAddButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.ABRightScoreLabel);
        make.top.equalTo(self.ABRightScoreLabel.mas_bottom).offset(20);
        make.width.mas_equalTo(60);
        make.height.mas_equalTo(60);
    }];
    [self.ABRightScoreReductionButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.ABRightScoreLabel);
        make.top.equalTo(self.ABRightScoreAddButton.mas_bottom).offset(10);
        make.width.mas_equalTo(60);
        make.height.mas_equalTo(60);
        make.bottom.equalTo(self.contentView).offset(-5);
    }];
    [self.ABVSLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.contentView);
        make.centerY.equalTo(self.ABRightScoreLabel);
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(40);
    }];
    [self.ABLeftScoreLabel mas_makeConstraints:^(MASConstraintMaker *make) {
    make.trailing.equalTo(self.contentView).offset(-32);
        make.top.equalTo(self.contentView).offset(15);
        make.width.mas_equalTo((ABWIDTH - 224) * 0.5);
        make.height.mas_equalTo(60);
    }];
    [self.ABLeftScoreAddButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.ABLeftScoreLabel);
    make.top.equalTo(self.ABLeftScoreLabel.mas_bottom).offset(20);
        make.width.mas_equalTo(60);
        make.height.mas_equalTo(60);
    }];
    [self.ABLeftScoreReductionButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.ABLeftScoreLabel);
        make.top.equalTo(self.ABLeftScoreAddButton.mas_bottom).offset(10);
            make.width.mas_equalTo(60);
            make.height.mas_equalTo(60);
    }];
}
#pragma mark - actions
- (void)ABScorerRefresh:(UIButton *)sender{
    if (sender.tag == 99) {
        self.ABModel.ABRightscore = self.ABModel.ABRightscore + 1;
        self.ABRightScoreLabel.text = [NSString stringWithFormat:@"%ld",_ABModel.ABRightscore];
    }else if (sender.tag == 100){
        self.ABModel.ABRightscore = self.ABModel.ABRightscore - 1;
        self.ABRightScoreLabel.text = [NSString stringWithFormat:@"%ld",_ABModel.ABRightscore];
    }else if (sender.tag == 101){
        self.ABModel.ABLeftscore = self.ABModel.ABLeftscore + 1;
        self.ABLeftScoreLabel.text = [NSString stringWithFormat:@"%ld",_ABModel.ABLeftscore];
    }else if (sender.tag == 102){
        self.ABModel.ABLeftscore = self.ABModel.ABLeftscore - 1;
        self.ABLeftScoreLabel.text = [NSString stringWithFormat:@"%ld",_ABModel.ABLeftscore];
    }
}
- (void)setABModel:(ABScorecardViewModel *)ABModel{
    _ABModel = ABModel;
    self.ABRightScoreLabel.text = [NSString stringWithFormat:@"%ld",_ABModel.ABRightscore];
    self.ABLeftScoreLabel.text = [NSString stringWithFormat:@"%ld",_ABModel.ABLeftscore];
}
#pragma mark - 属性懒加载
- (UILabel *)ABRightScoreLabel{
    if (!_ABRightScoreLabel) {
        _ABRightScoreLabel = [[UILabel alloc] init];
        _ABRightScoreLabel.backgroundColor = ABH_Color(180, 177, 158, 1);
        _ABRightScoreLabel.textColor = [UIColor whiteColor];
        _ABRightScoreLabel.font = [UIFont boldSystemFontOfSize:35];
        _ABRightScoreLabel.textAlignment = NSTextAlignmentCenter;
        _ABRightScoreLabel.layer.cornerRadius = 4.0f;
        _ABRightScoreLabel.layer.masksToBounds = YES;
    }
    return _ABRightScoreLabel;
}
- (UIButton *)ABRightScoreAddButton{
    if (!_ABRightScoreAddButton) {
        _ABRightScoreAddButton = [[UIButton alloc] init];
        _ABRightScoreAddButton.backgroundColor = [UIColor blueColor];
        _ABRightScoreAddButton.titleLabel.font = [UIFont boldSystemFontOfSize:30];
        _ABRightScoreAddButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_ABRightScoreAddButton setTitle:@"+1" forState:UIControlStateNormal];
        [_ABRightScoreAddButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        _ABRightScoreAddButton.layer.cornerRadius = 30.0f;
        _ABRightScoreAddButton.layer.masksToBounds = YES;
        _ABRightScoreAddButton.tag = 99;
        [_ABRightScoreAddButton addTarget:self action:@selector(ABScorerRefresh:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _ABRightScoreAddButton;
}
- (UIButton *)ABRightScoreReductionButton{
    if (!_ABRightScoreReductionButton) {
        _ABRightScoreReductionButton = [[UIButton alloc] init];
        _ABRightScoreReductionButton.backgroundColor = [UIColor blackColor];
        _ABRightScoreReductionButton.titleLabel.font = [UIFont boldSystemFontOfSize:30];
        _ABRightScoreReductionButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_ABRightScoreReductionButton setTitle:@"-1" forState:UIControlStateNormal];
        [_ABRightScoreReductionButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        _ABRightScoreReductionButton.layer.cornerRadius = 30.0f;
        _ABRightScoreReductionButton.layer.masksToBounds = YES;
        _ABRightScoreReductionButton.tag = 100;
        [_ABRightScoreReductionButton addTarget:self action:@selector(ABScorerRefresh:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _ABRightScoreReductionButton;
}
- (UILabel *)ABVSLabel{
    if (!_ABVSLabel) {
        _ABVSLabel = [[UILabel alloc] init];
        _ABVSLabel.textColor = [UIColor systemRedColor];
        _ABVSLabel.font = [UIFont boldSystemFontOfSize:40];
        _ABVSLabel.textAlignment = NSTextAlignmentCenter;
        _ABVSLabel.text = @":";
    }
    return _ABVSLabel;
}
- (UILabel *)ABLeftScoreLabel{
    if (!_ABLeftScoreLabel) {
        _ABLeftScoreLabel = [[UILabel alloc] init];
        _ABLeftScoreLabel.backgroundColor = ABH_Color(180, 177, 158, 1);
        _ABLeftScoreLabel.textColor = [UIColor whiteColor];
        _ABLeftScoreLabel.font = [UIFont boldSystemFontOfSize:35];
        _ABLeftScoreLabel.textAlignment = NSTextAlignmentCenter;
        _ABLeftScoreLabel.layer.cornerRadius = 4.0f;
        _ABLeftScoreLabel.layer.masksToBounds = YES;
    }
    return _ABLeftScoreLabel;
}
- (UIButton *)ABLeftScoreAddButton{
    if (!_ABLeftScoreAddButton) {
        _ABLeftScoreAddButton = [[UIButton alloc] init];
        _ABLeftScoreAddButton.backgroundColor = [UIColor blueColor];
        [_ABLeftScoreAddButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        _ABLeftScoreAddButton.titleLabel.font = [UIFont boldSystemFontOfSize:30];
        _ABLeftScoreAddButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_ABLeftScoreAddButton setTitle:@"+1" forState:UIControlStateNormal];
        _ABLeftScoreAddButton.layer.cornerRadius = 30.0f;
        _ABLeftScoreAddButton.layer.masksToBounds = YES;
        _ABLeftScoreAddButton.tag = 101;
        [_ABLeftScoreAddButton addTarget:self action:@selector(ABScorerRefresh:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _ABLeftScoreAddButton;
}
- (UIButton *)ABLeftScoreReductionButton{
    if (!_ABLeftScoreReductionButton) {
        _ABLeftScoreReductionButton = [[UIButton alloc] init];
        _ABLeftScoreReductionButton.backgroundColor = [UIColor blackColor];
        [_ABLeftScoreReductionButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        _ABLeftScoreReductionButton.titleLabel.font = [UIFont boldSystemFontOfSize:30];
        _ABLeftScoreReductionButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_ABLeftScoreReductionButton setTitle:@"-1" forState:UIControlStateNormal];
        _ABLeftScoreReductionButton.layer.cornerRadius = 30.0f;
        _ABLeftScoreReductionButton.layer.masksToBounds = YES;
        _ABLeftScoreReductionButton.tag = 102;
        [_ABLeftScoreReductionButton addTarget:self action:@selector(ABScorerRefresh:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _ABLeftScoreReductionButton;
}
@end
