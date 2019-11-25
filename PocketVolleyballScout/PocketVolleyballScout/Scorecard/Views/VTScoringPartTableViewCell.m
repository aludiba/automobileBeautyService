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
@property(nonatomic, strong)UIButton *VTRightScoreReductionButton;//右边减1分按钮

@property(nonatomic, strong)UILabel *VTVSLabel;//VS标识

@property(nonatomic, strong)UILabel *VTLeftScoreLabel;//左边得分
@property(nonatomic, strong)UIButton *VTLeftScoreAddButton;//左边得1分按钮
@property(nonatomic, strong)UIButton *VTLeftScoreReductionButton;//左边减1分按钮
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
    [self.contentView addSubview:self.VTRightScoreReductionButton];
    
    [self.contentView addSubview:self.VTVSLabel];
    
    [self.contentView addSubview:self.VTLeftScoreLabel];
    [self.contentView addSubview:self.VTLeftScoreAddButton];
    [self.contentView addSubview:self.VTLeftScoreReductionButton];

    
    [self.VTRightScoreLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(32);
        make.top.equalTo(self.contentView).offset(15);
        make.width.mas_equalTo((VTWIDTH - 224) * 0.5);
        make.height.mas_equalTo(60);
    }];
    [self.VTRightScoreAddButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.VTRightScoreLabel);
        make.top.equalTo(self.VTRightScoreLabel.mas_bottom).offset(20);
        make.width.mas_equalTo(60);
        make.height.mas_equalTo(60);
    }];
    [self.VTRightScoreReductionButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.VTRightScoreLabel);
        make.top.equalTo(self.VTRightScoreAddButton.mas_bottom).offset(10);
        make.width.mas_equalTo(60);
        make.height.mas_equalTo(60);
        make.bottom.equalTo(self.contentView).offset(-5);
    }];
    [self.VTVSLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.contentView);
        make.centerY.equalTo(self.VTRightScoreLabel);
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(40);
    }];
    [self.VTLeftScoreLabel mas_makeConstraints:^(MASConstraintMaker *make) {
    make.trailing.equalTo(self.contentView).offset(-32);
        make.top.equalTo(self.contentView).offset(15);
        make.width.mas_equalTo((VTWIDTH - 224) * 0.5);
        make.height.mas_equalTo(60);
    }];
    [self.VTLeftScoreAddButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.VTLeftScoreLabel);
    make.top.equalTo(self.VTLeftScoreLabel.mas_bottom).offset(20);
        make.width.mas_equalTo(60);
        make.height.mas_equalTo(60);
    }];
    [self.VTLeftScoreReductionButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.VTLeftScoreLabel);
        make.top.equalTo(self.VTLeftScoreAddButton.mas_bottom).offset(10);
            make.width.mas_equalTo(60);
            make.height.mas_equalTo(60);
    }];
}
#pragma mark - actions
- (void)VTScorerRefresh:(UIButton *)sender{
    if (sender.tag == 99) {
        self.VTModel.VTRightscore = self.VTModel.VTRightscore + 1;
        self.VTRightScoreLabel.text = [NSString stringWithFormat:@"%ld",_VTModel.VTRightscore];
    }else if (sender.tag == 100){
        self.VTModel.VTRightscore = self.VTModel.VTRightscore - 1;
        self.VTRightScoreLabel.text = [NSString stringWithFormat:@"%ld",_VTModel.VTRightscore];
    }else if (sender.tag == 101){
        self.VTModel.VTLeftscore = self.VTModel.VTLeftscore + 1;
        self.VTLeftScoreLabel.text = [NSString stringWithFormat:@"%ld",_VTModel.VTLeftscore];
    }else if (sender.tag == 102){
        self.VTModel.VTLeftscore = self.VTModel.VTLeftscore - 1;
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
        _VTRightScoreLabel.backgroundColor = VTH_Color(180, 177, 158, 1);
        _VTRightScoreLabel.textColor = [UIColor whiteColor];
        _VTRightScoreLabel.font = [UIFont boldSystemFontOfSize:35];
        _VTRightScoreLabel.textAlignment = NSTextAlignmentCenter;
        _VTRightScoreLabel.layer.cornerRadius = 4.0f;
        _VTRightScoreLabel.layer.masksToBounds = YES;
    }
    return _VTRightScoreLabel;
}
- (UIButton *)VTRightScoreAddButton{
    if (!_VTRightScoreAddButton) {
        _VTRightScoreAddButton = [[UIButton alloc] init];
        _VTRightScoreAddButton.backgroundColor = [UIColor blueColor];
        _VTRightScoreAddButton.titleLabel.font = [UIFont boldSystemFontOfSize:30];
        _VTRightScoreAddButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_VTRightScoreAddButton setTitle:@"+1" forState:UIControlStateNormal];
        [_VTRightScoreAddButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        _VTRightScoreAddButton.layer.cornerRadius = 30.0f;
        _VTRightScoreAddButton.layer.masksToBounds = YES;
        _VTRightScoreAddButton.tag = 99;
        [_VTRightScoreAddButton addTarget:self action:@selector(VTScorerRefresh:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _VTRightScoreAddButton;
}
- (UIButton *)VTRightScoreReductionButton{
    if (!_VTRightScoreReductionButton) {
        _VTRightScoreReductionButton = [[UIButton alloc] init];
        _VTRightScoreReductionButton.backgroundColor = [UIColor blackColor];
        _VTRightScoreReductionButton.titleLabel.font = [UIFont boldSystemFontOfSize:30];
        _VTRightScoreReductionButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_VTRightScoreReductionButton setTitle:@"-1" forState:UIControlStateNormal];
        [_VTRightScoreReductionButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        _VTRightScoreReductionButton.layer.cornerRadius = 30.0f;
        _VTRightScoreReductionButton.layer.masksToBounds = YES;
        _VTRightScoreReductionButton.tag = 100;
        [_VTRightScoreReductionButton addTarget:self action:@selector(VTScorerRefresh:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _VTRightScoreReductionButton;
}
- (UILabel *)VTVSLabel{
    if (!_VTVSLabel) {
        _VTVSLabel = [[UILabel alloc] init];
        _VTVSLabel.textColor = [UIColor systemRedColor];
        _VTVSLabel.font = [UIFont boldSystemFontOfSize:40];
        _VTVSLabel.textAlignment = NSTextAlignmentCenter;
        _VTVSLabel.text = @":";
    }
    return _VTVSLabel;
}
- (UILabel *)VTLeftScoreLabel{
    if (!_VTLeftScoreLabel) {
        _VTLeftScoreLabel = [[UILabel alloc] init];
        _VTLeftScoreLabel.backgroundColor = VTH_Color(180, 177, 158, 1);
        _VTLeftScoreLabel.textColor = [UIColor whiteColor];
        _VTLeftScoreLabel.font = [UIFont boldSystemFontOfSize:35];
        _VTLeftScoreLabel.textAlignment = NSTextAlignmentCenter;
        _VTLeftScoreLabel.layer.cornerRadius = 4.0f;
        _VTLeftScoreLabel.layer.masksToBounds = YES;
    }
    return _VTLeftScoreLabel;
}
- (UIButton *)VTLeftScoreAddButton{
    if (!_VTLeftScoreAddButton) {
        _VTLeftScoreAddButton = [[UIButton alloc] init];
        _VTLeftScoreAddButton.backgroundColor = [UIColor blueColor];
        [_VTLeftScoreAddButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        _VTLeftScoreAddButton.titleLabel.font = [UIFont boldSystemFontOfSize:30];
        _VTLeftScoreAddButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_VTLeftScoreAddButton setTitle:@"+1" forState:UIControlStateNormal];
        _VTLeftScoreAddButton.layer.cornerRadius = 30.0f;
        _VTLeftScoreAddButton.layer.masksToBounds = YES;
        _VTLeftScoreAddButton.tag = 101;
        [_VTLeftScoreAddButton addTarget:self action:@selector(VTScorerRefresh:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _VTLeftScoreAddButton;
}
- (UIButton *)VTLeftScoreReductionButton{
    if (!_VTLeftScoreReductionButton) {
        _VTLeftScoreReductionButton = [[UIButton alloc] init];
        _VTLeftScoreReductionButton.backgroundColor = [UIColor blackColor];
        [_VTLeftScoreReductionButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        _VTLeftScoreReductionButton.titleLabel.font = [UIFont boldSystemFontOfSize:30];
        _VTLeftScoreReductionButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_VTLeftScoreReductionButton setTitle:@"-1" forState:UIControlStateNormal];
        _VTLeftScoreReductionButton.layer.cornerRadius = 30.0f;
        _VTLeftScoreReductionButton.layer.masksToBounds = YES;
        _VTLeftScoreReductionButton.tag = 102;
        [_VTLeftScoreReductionButton addTarget:self action:@selector(VTScorerRefresh:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _VTLeftScoreReductionButton;
}
@end
