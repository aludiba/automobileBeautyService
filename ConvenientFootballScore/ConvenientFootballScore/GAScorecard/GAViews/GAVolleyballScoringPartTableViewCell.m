//
//  GAVolleyballScoringPartTableViewCell.m
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import "GAVolleyballScoringPartTableViewCell.h"
#import "GAVolleyballScorecardViewModel.h"

@interface GAVolleyballScoringPartTableViewCell()
@property(nonatomic, strong)UILabel *GARightScoreLabel;//右边得分
@property(nonatomic, strong)UIButton *GARightScoreAddButton;//右边得1分按钮
@property(nonatomic, strong)UIButton *GARightScoreReductionButton;//右边减1分按钮

@property(nonatomic, strong)UILabel *GAVSLabel;//VS标识

@property(nonatomic, strong)UILabel *GALeftScoreLabel;//左边得分
@property(nonatomic, strong)UIButton *GALeftScoreAddButton;//左边得1分按钮
@property(nonatomic, strong)UIButton *GALeftScoreReductionButton;//左边减1分按钮
@end
@implementation GAVolleyballScoringPartTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = [UIColor greenColor];
        [self GASetContentView];
    }
    return self;
}
#pragma mark - action
- (void)GASetContentView{
    [self.contentView addSubview:self.GARightScoreLabel];
    [self.contentView addSubview:self.GARightScoreAddButton];
    [self.contentView addSubview:self.GARightScoreReductionButton];
    
    [self.contentView addSubview:self.GAVSLabel];
    
    [self.contentView addSubview:self.GALeftScoreLabel];
    [self.contentView addSubview:self.GALeftScoreAddButton];
    [self.contentView addSubview:self.GALeftScoreReductionButton];

    
    [self.GARightScoreLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(32);
        make.top.equalTo(self.contentView).offset(15);
        make.width.mas_equalTo((GAWIDTH - 224) * 0.5);
        make.height.mas_equalTo(60);
    }];
    [self.GARightScoreAddButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.GARightScoreLabel);
        make.top.equalTo(self.GARightScoreLabel.mas_bottom).offset(20);
        make.width.mas_equalTo(60);
        make.height.mas_equalTo(60);
    }];
    [self.GARightScoreReductionButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.GARightScoreLabel);
        make.top.equalTo(self.GARightScoreAddButton.mas_bottom).offset(10);
        make.width.mas_equalTo(60);
        make.height.mas_equalTo(60);
        make.bottom.equalTo(self.contentView).offset(-5);
    }];
    [self.GAVSLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.contentView);
        make.centerY.equalTo(self.GARightScoreLabel);
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(40);
    }];
    [self.GALeftScoreLabel mas_makeConstraints:^(MASConstraintMaker *make) {
    make.trailing.equalTo(self.contentView).offset(-32);
        make.top.equalTo(self.contentView).offset(15);
        make.width.mas_equalTo((GAWIDTH - 224) * 0.5);
        make.height.mas_equalTo(60);
    }];
    [self.GALeftScoreAddButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.GALeftScoreLabel);
    make.top.equalTo(self.GALeftScoreLabel.mas_bottom).offset(20);
        make.width.mas_equalTo(60);
        make.height.mas_equalTo(60);
    }];
    [self.GALeftScoreReductionButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.GALeftScoreLabel);
        make.top.equalTo(self.GALeftScoreAddButton.mas_bottom).offset(10);
            make.width.mas_equalTo(60);
            make.height.mas_equalTo(60);
    }];
}
#pragma mark - actions
- (void)GAScorerRefresh:(UIButton *)sender{
    if (sender.tag == 99) {
        self.GAModel.GARightscore = self.GAModel.GARightscore + 1;
        self.GARightScoreLabel.text = [NSString stringWithFormat:@"%ld",_GAModel.GARightscore];
    }else if (sender.tag == 100){
        self.GAModel.GARightscore = self.GAModel.GARightscore - 1;
        self.GARightScoreLabel.text = [NSString stringWithFormat:@"%ld",_GAModel.GARightscore];
    }else if (sender.tag == 101){
        self.GAModel.GALeftscore = self.GAModel.GALeftscore + 1;
        self.GALeftScoreLabel.text = [NSString stringWithFormat:@"%ld",_GAModel.GALeftscore];
    }else if (sender.tag == 102){
        self.GAModel.GALeftscore = self.GAModel.GALeftscore - 1;
        self.GALeftScoreLabel.text = [NSString stringWithFormat:@"%ld",_GAModel.GALeftscore];
    }
}
- (void)setGAModel:(GAVolleyballScorecardViewModel *)GAModel{
    _GAModel = GAModel;
    self.GARightScoreLabel.text = [NSString stringWithFormat:@"%ld",_GAModel.GARightscore];
    self.GALeftScoreLabel.text = [NSString stringWithFormat:@"%ld",_GAModel.GALeftscore];
}
#pragma mark - 属性懒加载
- (UILabel *)GARightScoreLabel{
    if (!_GARightScoreLabel) {
        _GARightScoreLabel = [[UILabel alloc] init];
        _GARightScoreLabel.backgroundColor = [UIColor systemGreenColor];
        _GARightScoreLabel.textColor = [UIColor whiteColor];
        _GARightScoreLabel.font = [UIFont boldSystemFontOfSize:35];
        _GARightScoreLabel.textAlignment = NSTextAlignmentCenter;
        _GARightScoreLabel.layer.cornerRadius = 4.0f;
        _GARightScoreLabel.layer.masksToBounds = YES;
    }
    return _GARightScoreLabel;
}
- (UIButton *)GARightScoreAddButton{
    if (!_GARightScoreAddButton) {
        _GARightScoreAddButton = [[UIButton alloc] init];
        _GARightScoreAddButton.backgroundColor = [UIColor blackColor];
        _GARightScoreAddButton.titleLabel.font = [UIFont boldSystemFontOfSize:30];
        _GARightScoreAddButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_GARightScoreAddButton setTitle:@"+1" forState:UIControlStateNormal];
        [_GARightScoreAddButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        _GARightScoreAddButton.layer.cornerRadius = 4.0f;
        _GARightScoreAddButton.layer.masksToBounds = YES;
        _GARightScoreAddButton.tag = 99;
        [_GARightScoreAddButton addTarget:self action:@selector(GAScorerRefresh:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _GARightScoreAddButton;
}
- (UIButton *)GARightScoreReductionButton{
    if (!_GARightScoreReductionButton) {
        _GARightScoreReductionButton = [[UIButton alloc] init];
        _GARightScoreReductionButton.backgroundColor = [UIColor blackColor];
        _GARightScoreReductionButton.titleLabel.font = [UIFont boldSystemFontOfSize:30];
        _GARightScoreReductionButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_GARightScoreReductionButton setTitle:@"-1" forState:UIControlStateNormal];
        [_GARightScoreReductionButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        _GARightScoreReductionButton.layer.cornerRadius = 4.0f;
        _GARightScoreReductionButton.layer.masksToBounds = YES;
        _GARightScoreReductionButton.tag = 100;
        [_GARightScoreReductionButton addTarget:self action:@selector(GAScorerRefresh:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _GARightScoreReductionButton;
}
- (UILabel *)GAVSLabel{
    if (!_GAVSLabel) {
        _GAVSLabel = [[UILabel alloc] init];
        _GAVSLabel.textColor = [UIColor redColor];
        _GAVSLabel.font = [UIFont boldSystemFontOfSize:40];
        _GAVSLabel.textAlignment = NSTextAlignmentCenter;
        _GAVSLabel.text = @":";
    }
    return _GAVSLabel;
}
- (UILabel *)GALeftScoreLabel{
    if (!_GALeftScoreLabel) {
        _GALeftScoreLabel = [[UILabel alloc] init];
        _GALeftScoreLabel.backgroundColor = [UIColor systemGreenColor];
        _GALeftScoreLabel.textColor = [UIColor whiteColor];
        _GALeftScoreLabel.font = [UIFont boldSystemFontOfSize:35];
        _GALeftScoreLabel.textAlignment = NSTextAlignmentCenter;
        _GALeftScoreLabel.layer.cornerRadius = 8.0f;
        _GALeftScoreLabel.layer.masksToBounds = YES;
    }
    return _GALeftScoreLabel;
}
- (UIButton *)GALeftScoreAddButton{
    if (!_GALeftScoreAddButton) {
        _GALeftScoreAddButton = [[UIButton alloc] init];
        _GALeftScoreAddButton.backgroundColor = [UIColor blackColor];
        [_GALeftScoreAddButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        _GALeftScoreAddButton.titleLabel.font = [UIFont boldSystemFontOfSize:30];
        _GALeftScoreAddButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_GALeftScoreAddButton setTitle:@"+1" forState:UIControlStateNormal];
        _GALeftScoreAddButton.layer.cornerRadius = 4.0f;
        _GALeftScoreAddButton.layer.masksToBounds = YES;
        _GALeftScoreAddButton.tag = 101;
        [_GALeftScoreAddButton addTarget:self action:@selector(GAScorerRefresh:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _GALeftScoreAddButton;
}
- (UIButton *)GALeftScoreReductionButton{
    if (!_GALeftScoreReductionButton) {
        _GALeftScoreReductionButton = [[UIButton alloc] init];
        _GALeftScoreReductionButton.backgroundColor = [UIColor blackColor];
        [_GALeftScoreReductionButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        _GALeftScoreReductionButton.titleLabel.font = [UIFont boldSystemFontOfSize:30];
        _GALeftScoreReductionButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_GALeftScoreReductionButton setTitle:@"-1" forState:UIControlStateNormal];
        _GALeftScoreReductionButton.layer.cornerRadius = 4.0f;
        _GALeftScoreReductionButton.layer.masksToBounds = YES;
        _GALeftScoreReductionButton.tag = 102;
        [_GALeftScoreReductionButton addTarget:self action:@selector(GAScorerRefresh:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _GALeftScoreReductionButton;
}
@end
