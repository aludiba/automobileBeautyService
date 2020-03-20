//
//  GAScoringPartTableViewCell.m
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import "GAScoringPartTableViewCell.h"
#import "GAScorecardViewModel.h"

@interface GAScoringPartTableViewCell()
@property(nonatomic, strong)UILabel *GARightScoreLabel;//右边得分
@property(nonatomic, strong)UIButton *GARightScoreAddButton;//右边得分按钮
@property(nonatomic, strong)UIButton *GARightScoreReduceButton;//右边减分按钮

@property(nonatomic, strong)UILabel *GAVSLabel;//VS标识

@property(nonatomic, strong)UILabel *GALeftScoreLabel;//左边得分
@property(nonatomic, strong)UIButton *GALeftScoreAddButton;//左边得分按钮
@property(nonatomic, strong)UIButton *GALeftScoreReduceButton;//左边减分按钮
@end
@implementation GAScoringPartTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self GASetContentView];
    }
    return self;
}
#pragma mark - action
- (void)GASetContentView{
    self.contentView.backgroundColor = [UIColor greenColor];
    [self.contentView addSubview:self.GARightScoreLabel];
    [self.contentView addSubview:self.GARightScoreAddButton];
    [self.contentView addSubview:self.GARightScoreReduceButton];
    [self.contentView addSubview:self.GAVSLabel];
    [self.contentView addSubview:self.GALeftScoreLabel];
    [self.contentView addSubview:self.GALeftScoreAddButton];
    [self.contentView addSubview:self.GALeftScoreReduceButton];
    
    [self.GARightScoreLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(32);
        make.top.equalTo(self.contentView).offset(30);
        make.width.mas_equalTo((GAWIDTH - 224) * 0.5);
        make.height.mas_equalTo(60);
    }];
    [self.GARightScoreAddButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.GARightScoreLabel);
        make.top.equalTo(self.GARightScoreLabel.mas_bottom).offset(20);
        make.width.mas_equalTo((GAWIDTH - 224) * 0.25);
        make.height.mas_equalTo(30);
    }];
    [self.GARightScoreReduceButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.GARightScoreLabel);
        make.top.equalTo(self.GARightScoreAddButton.mas_bottom).offset(20);
        make.width.mas_equalTo((GAWIDTH - 224) * 0.25);
        make.height.mas_equalTo(30);
        make.bottom.equalTo(self.contentView).offset(-30);
    }];
    [self.GAVSLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.contentView);
    make.centerY.equalTo(self.GARightScoreLabel);
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(40);
    }];
    [self.GALeftScoreLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.equalTo(self.contentView).offset(-32);
        make.top.equalTo(self.contentView).offset(30);
        make.width.mas_equalTo((GAWIDTH - 224) * 0.5);
        make.height.mas_equalTo(60);
    }];
    [self.GALeftScoreAddButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.GALeftScoreLabel);
        make.top.equalTo(self.GALeftScoreLabel.mas_bottom).offset(20);
        make.width.mas_equalTo((GAWIDTH - 224) * 0.25);
        make.height.mas_equalTo(30);
    }];
    [self.GALeftScoreReduceButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.GALeftScoreLabel);
        make.top.equalTo(self.GALeftScoreAddButton.mas_bottom).offset(20);
        make.width.mas_equalTo((GAWIDTH - 224) * 0.25);
        make.height.mas_equalTo(30);
    }];
}
#pragma mark - actions
- (void)GAScorerRefresh:(UIButton *)sender{
    if (sender.tag == 99) {
        self.GAModel.GARightscore++;
        self.GARightScoreLabel.text = [NSString stringWithFormat:@"%ld",_GAModel.GARightscore];
    }else if (sender.tag == 100){
        if (self.GAModel.GARightscore > 0) {
            self.GAModel.GARightscore--;
            self.GARightScoreLabel.text = [NSString stringWithFormat:@"%ld",_GAModel.GARightscore];
        }
    }else if (sender.tag == 101){
        self.GAModel.GALeftscore++;
        self.GALeftScoreLabel.text = [NSString stringWithFormat:@"%ld",_GAModel.GALeftscore];
    }else if (sender.tag == 102){
        if (self.GAModel.GALeftscore > 0) {
        self.GAModel.GALeftscore--;
        self.GALeftScoreLabel.text = [NSString stringWithFormat:@"%ld",_GAModel.GALeftscore];
        }
    }
}
- (void)setGAModel:(GAScorecardViewModel *)GAModel{
    _GAModel = GAModel;
    self.GARightScoreLabel.text = [NSString stringWithFormat:@"%lu",(unsigned long)_GAModel.GARightscore];
    self.GALeftScoreLabel.text = [NSString stringWithFormat:@"%lu",(unsigned long)_GAModel.GALeftscore];
}
#pragma mark - 属性懒加载
- (UILabel *)GARightScoreLabel{
    if (!_GARightScoreLabel) {
        _GARightScoreLabel = [[UILabel alloc] init];
        _GARightScoreLabel.backgroundColor = [UIColor systemGreenColor];
        _GARightScoreLabel.textColor = [UIColor whiteColor];
        _GARightScoreLabel.font = [UIFont boldSystemFontOfSize:30];
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
        _GARightScoreAddButton.titleLabel.font = [UIFont boldSystemFontOfSize:22];
        _GARightScoreAddButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_GARightScoreAddButton setTitle:@"+1" forState:UIControlStateNormal];
        [_GARightScoreAddButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        _GARightScoreAddButton.tag = 99;
        _GARightScoreAddButton.layer.cornerRadius = 4.0f;
        _GARightScoreAddButton.layer.masksToBounds = YES;
        [_GARightScoreAddButton addTarget:self action:@selector(GAScorerRefresh:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _GARightScoreAddButton;
}
- (UIButton *)GARightScoreReduceButton{
    if (!_GARightScoreReduceButton) {
        _GARightScoreReduceButton = [[UIButton alloc] init];
        _GARightScoreReduceButton.backgroundColor = [UIColor blackColor];
        [_GARightScoreReduceButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        _GARightScoreReduceButton.titleLabel.font = [UIFont boldSystemFontOfSize:22];
        _GARightScoreReduceButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_GARightScoreReduceButton setTitle:@"-1" forState:UIControlStateNormal];
        _GARightScoreReduceButton.tag = 100;
        _GARightScoreReduceButton.layer.cornerRadius = 4.0f;
        _GARightScoreReduceButton.layer.masksToBounds = YES;
        [_GARightScoreReduceButton addTarget:self action:@selector(GAScorerRefresh:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _GARightScoreReduceButton;
}
- (UILabel *)GAVSLabel{
    if (!_GAVSLabel) {
        _GAVSLabel = [[UILabel alloc] init];
        _GAVSLabel.textColor = [UIColor redColor];
        _GAVSLabel.font = [UIFont boldSystemFontOfSize:38];
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
        _GALeftScoreLabel.font = [UIFont boldSystemFontOfSize:30];
        _GALeftScoreLabel.textAlignment = NSTextAlignmentCenter;
        _GALeftScoreLabel.layer.cornerRadius = 4.0f;
        _GALeftScoreLabel.layer.masksToBounds = YES;
    }
    return _GALeftScoreLabel;
}
- (UIButton *)GALeftScoreAddButton{
    if (!_GALeftScoreAddButton) {
        _GALeftScoreAddButton = [[UIButton alloc] init];
        _GALeftScoreAddButton.backgroundColor = [UIColor blackColor];
        [_GALeftScoreAddButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        _GALeftScoreAddButton.titleLabel.font = [UIFont boldSystemFontOfSize:22];
        _GALeftScoreAddButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_GALeftScoreAddButton setTitle:@"+1" forState:UIControlStateNormal];
        _GALeftScoreAddButton.tag = 101;
        _GALeftScoreAddButton.layer.cornerRadius = 4.0f;
        _GALeftScoreAddButton.layer.masksToBounds = YES;
        [_GALeftScoreAddButton addTarget:self action:@selector(GAScorerRefresh:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _GALeftScoreAddButton;
}
- (UIButton *)GALeftScoreReduceButton{
    if (!_GALeftScoreReduceButton) {
        _GALeftScoreReduceButton = [[UIButton alloc] init];
        _GALeftScoreReduceButton.backgroundColor = [UIColor blackColor];
        [_GALeftScoreReduceButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        _GALeftScoreReduceButton.titleLabel.font = [UIFont boldSystemFontOfSize:22];
        _GALeftScoreReduceButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_GALeftScoreReduceButton setTitle:@"-1" forState:UIControlStateNormal];
        _GALeftScoreReduceButton.tag = 102;
        _GALeftScoreReduceButton.layer.cornerRadius = 4.0f;
        _GALeftScoreReduceButton.layer.masksToBounds = YES;
        [_GALeftScoreReduceButton addTarget:self action:@selector(GAScorerRefresh:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _GALeftScoreReduceButton;
}
@end
