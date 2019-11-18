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
@property(nonatomic, strong)UIButton *BTRightScoreAddButton;//右边得分按钮
@property(nonatomic, strong)UIButton *BTRightScoreReduceButton;//右边减分按钮

@property(nonatomic, strong)UILabel *BTVSLabel;//VS标识

@property(nonatomic, strong)UILabel *BTLeftScoreLabel;//左边得分
@property(nonatomic, strong)UIButton *BTLeftScoreAddButton;//左边得分按钮
@property(nonatomic, strong)UIButton *BTLeftScoreReduceButton;//左边减分按钮
@end
@implementation BTScoringPartTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self BTSetContentView];
    }
    return self;
}
#pragma mark - action
- (void)BTSetContentView{
    [self.contentView addSubview:self.BTRightScoreLabel];
    [self.contentView addSubview:self.BTRightScoreAddButton];
    [self.contentView addSubview:self.BTRightScoreReduceButton];
    [self.contentView addSubview:self.BTVSLabel];
    [self.contentView addSubview:self.BTLeftScoreLabel];
    [self.contentView addSubview:self.BTLeftScoreAddButton];
    [self.contentView addSubview:self.BTLeftScoreReduceButton];
    
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
    [self.BTRightScoreReduceButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.BTRightScoreLabel);
        make.top.equalTo(self.BTRightScoreAddButton.mas_bottom).offset(20);
        make.width.mas_equalTo((BTWIDTH - 224) * 0.5);
        make.height.mas_equalTo(30);
        make.bottom.equalTo(self.contentView).offset(-30);
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
    [self.BTLeftScoreReduceButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.BTLeftScoreLabel);
        make.top.equalTo(self.BTLeftScoreAddButton.mas_bottom).offset(20);
        make.width.mas_equalTo((BTWIDTH - 224) * 0.5);
        make.height.mas_equalTo(30);
    }];
}
#pragma mark - actions
- (void)BTScorerRefresh:(UIButton *)sender{
    if (sender.tag == 99) {
        self.BTModel.BTRightscore++;
        self.BTRightScoreLabel.text = [NSString stringWithFormat:@"%ld",_BTModel.BTRightscore];
    }else if (sender.tag == 100){
        if (self.BTModel.BTRightscore > 0) {
            self.BTModel.BTRightscore--;
            self.BTRightScoreLabel.text = [NSString stringWithFormat:@"%ld",_BTModel.BTRightscore];
        }
    }else if (sender.tag == 101){
        self.BTModel.BTLeftscore++;
        self.BTLeftScoreLabel.text = [NSString stringWithFormat:@"%ld",_BTModel.BTLeftscore];
    }else if (sender.tag == 102){
        if (self.BTModel.BTLeftscore > 0) {
        self.BTModel.BTLeftscore--;
        self.BTLeftScoreLabel.text = [NSString stringWithFormat:@"%ld",_BTModel.BTLeftscore];
        }
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
        _BTRightScoreAddButton.layer.borderColor = [UIColor grayColor].CGColor;
        _BTRightScoreAddButton.layer.borderWidth = 1.5f;
        _BTRightScoreAddButton.tag = 99;
        [_BTRightScoreAddButton addTarget:self action:@selector(BTScorerRefresh:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _BTRightScoreAddButton;
}
- (UIButton *)BTRightScoreReduceButton{
    if (!_BTRightScoreReduceButton) {
        _BTRightScoreReduceButton = [[UIButton alloc] init];
        [_BTRightScoreReduceButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        _BTRightScoreReduceButton.titleLabel.font = [UIFont boldSystemFontOfSize:22];
        _BTRightScoreReduceButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_BTRightScoreReduceButton setTitle:@"-1" forState:UIControlStateNormal];
        _BTRightScoreReduceButton.layer.cornerRadius = 6.0f;
        _BTRightScoreReduceButton.layer.masksToBounds = YES;
        _BTRightScoreReduceButton.layer.borderColor = [UIColor grayColor].CGColor;
        _BTRightScoreReduceButton.layer.borderWidth = 1.5f;
        _BTRightScoreReduceButton.tag = 100;
        [_BTRightScoreReduceButton addTarget:self action:@selector(BTScorerRefresh:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _BTRightScoreReduceButton;
}
- (UILabel *)BTVSLabel{
    if (!_BTVSLabel) {
        _BTVSLabel = [[UILabel alloc] init];
        _BTVSLabel.textColor = BTH_Color(0, 204, 131, 1);
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
        _BTLeftScoreAddButton.layer.borderColor = [UIColor grayColor].CGColor;
        _BTLeftScoreAddButton.layer.borderWidth = 1.5f;
        _BTLeftScoreAddButton.tag = 101;
        [_BTLeftScoreAddButton addTarget:self action:@selector(BTScorerRefresh:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _BTLeftScoreAddButton;
}
- (UIButton *)BTLeftScoreReduceButton{
    if (!_BTLeftScoreReduceButton) {
        _BTLeftScoreReduceButton = [[UIButton alloc] init];
        [_BTLeftScoreReduceButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
      _BTLeftScoreReduceButton.titleLabel.font = [UIFont boldSystemFontOfSize:22];
        _BTLeftScoreReduceButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_BTLeftScoreReduceButton setTitle:@"-1" forState:UIControlStateNormal];
        _BTLeftScoreReduceButton.layer.cornerRadius = 6.0f;
        _BTLeftScoreReduceButton.layer.masksToBounds = YES;
        _BTLeftScoreReduceButton.layer.borderColor = [UIColor grayColor].CGColor;
        _BTLeftScoreReduceButton.layer.borderWidth = 1.5f;
        _BTLeftScoreReduceButton.tag = 102;
        [_BTLeftScoreReduceButton addTarget:self action:@selector(BTScorerRefresh:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _BTLeftScoreReduceButton;
}
@end
