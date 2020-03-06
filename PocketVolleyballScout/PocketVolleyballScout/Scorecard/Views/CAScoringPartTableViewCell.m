//
//  CAScoringPartTableViewCell.m
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import "CAScoringPartTableViewCell.h"
#import "CAScorecardViewModel.h"

@interface CAScoringPartTableViewCell()
@property(nonatomic, strong)UILabel *CARightScoreLabel;//右边得分
@property(nonatomic, strong)UIButton *CARightScoreAddButton;//右边得1分按钮
@property(nonatomic, strong)UIButton *CARightScoreReductionButton;//右边减1分按钮

@property(nonatomic, strong)UILabel *CAVSLabel;//VS标识

@property(nonatomic, strong)UILabel *CALeftScoreLabel;//左边得分
@property(nonatomic, strong)UIButton *CALeftScoreAddButton;//左边得1分按钮
@property(nonatomic, strong)UIButton *CALeftScoreReductionButton;//左边减1分按钮
@end
@implementation CAScoringPartTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = [UIColor systemGreenColor];
        [self CASetContentView];
    }
    return self;
}
#pragma mark - action
- (void)CASetContentView{
    [self.contentView addSubview:self.CARightScoreLabel];
    [self.contentView addSubview:self.CARightScoreAddButton];
    [self.contentView addSubview:self.CARightScoreReductionButton];
    
    [self.contentView addSubview:self.CAVSLabel];
    
    [self.contentView addSubview:self.CALeftScoreLabel];
    [self.contentView addSubview:self.CALeftScoreAddButton];
    [self.contentView addSubview:self.CALeftScoreReductionButton];

    
    [self.CARightScoreLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(32);
        make.top.equalTo(self.contentView).offset(15);
        make.width.mas_equalTo((CAWIDTH - 224) * 0.5);
        make.height.mas_equalTo(60);
    }];
    [self.CARightScoreAddButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.CARightScoreLabel);
        make.top.equalTo(self.CARightScoreLabel.mas_bottom).offset(20);
        make.width.mas_equalTo(60);
        make.height.mas_equalTo(60);
    }];
    [self.CARightScoreReductionButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.CARightScoreLabel);
        make.top.equalTo(self.CARightScoreAddButton.mas_bottom).offset(10);
        make.width.mas_equalTo(60);
        make.height.mas_equalTo(60);
        make.bottom.equalTo(self.contentView).offset(-5);
    }];
    [self.CAVSLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.contentView);
        make.centerY.equalTo(self.CARightScoreLabel);
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(40);
    }];
    [self.CALeftScoreLabel mas_makeConstraints:^(MASConstraintMaker *make) {
    make.trailing.equalTo(self.contentView).offset(-32);
        make.top.equalTo(self.contentView).offset(15);
        make.width.mas_equalTo((CAWIDTH - 224) * 0.5);
        make.height.mas_equalTo(60);
    }];
    [self.CALeftScoreAddButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.CALeftScoreLabel);
    make.top.equalTo(self.CALeftScoreLabel.mas_bottom).offset(20);
        make.width.mas_equalTo(60);
        make.height.mas_equalTo(60);
    }];
    [self.CALeftScoreReductionButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.CALeftScoreLabel);
        make.top.equalTo(self.CALeftScoreAddButton.mas_bottom).offset(10);
            make.width.mas_equalTo(60);
            make.height.mas_equalTo(60);
    }];
}
#pragma mark - actions
- (void)CAScorerRefresh:(UIButton *)sender{
    if (sender.tag == 99) {
        self.CAModel.CARightscore = self.CAModel.CARightscore + 1;
        self.CARightScoreLabel.text = [NSString stringWithFormat:@"%ld",_CAModel.CARightscore];
    }else if (sender.tag == 100){
        self.CAModel.CARightscore = self.CAModel.CARightscore - 1;
        self.CARightScoreLabel.text = [NSString stringWithFormat:@"%ld",_CAModel.CARightscore];
    }else if (sender.tag == 101){
        self.CAModel.CALeftscore = self.CAModel.CALeftscore + 1;
        self.CALeftScoreLabel.text = [NSString stringWithFormat:@"%ld",_CAModel.CALeftscore];
    }else if (sender.tag == 102){
        self.CAModel.CALeftscore = self.CAModel.CALeftscore - 1;
        self.CALeftScoreLabel.text = [NSString stringWithFormat:@"%ld",_CAModel.CALeftscore];
    }
}
- (void)setCAModel:(CAScorecardViewModel *)CAModel{
    _CAModel = CAModel;
    self.CARightScoreLabel.text = [NSString stringWithFormat:@"%ld",_CAModel.CARightscore];
    self.CALeftScoreLabel.text = [NSString stringWithFormat:@"%ld",_CAModel.CALeftscore];
}
#pragma mark - 属性懒加载
- (UILabel *)CARightScoreLabel{
    if (!_CARightScoreLabel) {
        _CARightScoreLabel = [[UILabel alloc] init];
        _CARightScoreLabel.backgroundColor = [UIColor greenColor];
        _CARightScoreLabel.textColor = [UIColor whiteColor];
        _CARightScoreLabel.font = [UIFont boldSystemFontOfSize:35];
        _CARightScoreLabel.textAlignment = NSTextAlignmentCenter;
        _CARightScoreLabel.layer.cornerRadius = 8.0f;
        _CARightScoreLabel.layer.masksToBounds = YES;
    }
    return _CARightScoreLabel;
}
- (UIButton *)CARightScoreAddButton{
    if (!_CARightScoreAddButton) {
        _CARightScoreAddButton = [[UIButton alloc] init];
        _CARightScoreAddButton.backgroundColor = [UIColor greenColor];
        _CARightScoreAddButton.titleLabel.font = [UIFont boldSystemFontOfSize:30];
        _CARightScoreAddButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_CARightScoreAddButton setTitle:@"+1" forState:UIControlStateNormal];
        [_CARightScoreAddButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        _CARightScoreAddButton.layer.cornerRadius = 30.0f;
        _CARightScoreAddButton.layer.masksToBounds = YES;
        _CARightScoreAddButton.tag = 99;
        [_CARightScoreAddButton addTarget:self action:@selector(CAScorerRefresh:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _CARightScoreAddButton;
}
- (UIButton *)CARightScoreReductionButton{
    if (!_CARightScoreReductionButton) {
        _CARightScoreReductionButton = [[UIButton alloc] init];
        _CARightScoreReductionButton.backgroundColor = [UIColor redColor];
        _CARightScoreReductionButton.titleLabel.font = [UIFont boldSystemFontOfSize:30];
        _CARightScoreReductionButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_CARightScoreReductionButton setTitle:@"-1" forState:UIControlStateNormal];
        [_CARightScoreReductionButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        _CARightScoreReductionButton.layer.cornerRadius = 30.0f;
        _CARightScoreReductionButton.layer.masksToBounds = YES;
        _CARightScoreReductionButton.tag = 100;
        [_CARightScoreReductionButton addTarget:self action:@selector(CAScorerRefresh:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _CARightScoreReductionButton;
}
- (UILabel *)CAVSLabel{
    if (!_CAVSLabel) {
        _CAVSLabel = [[UILabel alloc] init];
        _CAVSLabel.textColor = [UIColor systemRedColor];
        _CAVSLabel.font = [UIFont boldSystemFontOfSize:40];
        _CAVSLabel.textAlignment = NSTextAlignmentCenter;
        _CAVSLabel.text = @":";
    }
    return _CAVSLabel;
}
- (UILabel *)CALeftScoreLabel{
    if (!_CALeftScoreLabel) {
        _CALeftScoreLabel = [[UILabel alloc] init];
        _CALeftScoreLabel.backgroundColor = [UIColor greenColor];
        _CALeftScoreLabel.textColor = [UIColor whiteColor];
        _CALeftScoreLabel.font = [UIFont boldSystemFontOfSize:35];
        _CALeftScoreLabel.textAlignment = NSTextAlignmentCenter;
        _CALeftScoreLabel.layer.cornerRadius = 8.0f;
        _CALeftScoreLabel.layer.masksToBounds = YES;
    }
    return _CALeftScoreLabel;
}
- (UIButton *)CALeftScoreAddButton{
    if (!_CALeftScoreAddButton) {
        _CALeftScoreAddButton = [[UIButton alloc] init];
        _CALeftScoreAddButton.backgroundColor = [UIColor greenColor];
        [_CALeftScoreAddButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        _CALeftScoreAddButton.titleLabel.font = [UIFont boldSystemFontOfSize:30];
        _CALeftScoreAddButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_CALeftScoreAddButton setTitle:@"+1" forState:UIControlStateNormal];
        _CALeftScoreAddButton.layer.cornerRadius = 30.0f;
        _CALeftScoreAddButton.layer.masksToBounds = YES;
        _CALeftScoreAddButton.tag = 101;
        [_CALeftScoreAddButton addTarget:self action:@selector(CAScorerRefresh:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _CALeftScoreAddButton;
}
- (UIButton *)CALeftScoreReductionButton{
    if (!_CALeftScoreReductionButton) {
        _CALeftScoreReductionButton = [[UIButton alloc] init];
        _CALeftScoreReductionButton.backgroundColor = [UIColor redColor];
        [_CALeftScoreReductionButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        _CALeftScoreReductionButton.titleLabel.font = [UIFont boldSystemFontOfSize:30];
        _CALeftScoreReductionButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_CALeftScoreReductionButton setTitle:@"-1" forState:UIControlStateNormal];
        _CALeftScoreReductionButton.layer.cornerRadius = 30.0f;
        _CALeftScoreReductionButton.layer.masksToBounds = YES;
        _CALeftScoreReductionButton.tag = 102;
        [_CALeftScoreReductionButton addTarget:self action:@selector(CAScorerRefresh:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _CALeftScoreReductionButton;
}
@end
