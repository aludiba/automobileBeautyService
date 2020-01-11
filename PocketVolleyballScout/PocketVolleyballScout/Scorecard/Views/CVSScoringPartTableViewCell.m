//
//  CVSScoringPartTableViewCell.m
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import "CVSScoringPartTableViewCell.h"
#import "CVSScorecardViewModel.h"

@interface CVSScoringPartTableViewCell()
@property(nonatomic, strong)UILabel *CVSRightScoreLabel;//右边得分
@property(nonatomic, strong)UIButton *CVSRightScoreAddButton;//右边得1分按钮
@property(nonatomic, strong)UIButton *CVSRightScoreReductionButton;//右边减1分按钮

@property(nonatomic, strong)UILabel *CVSVSLabel;//VS标识

@property(nonatomic, strong)UILabel *CVSLeftScoreLabel;//左边得分
@property(nonatomic, strong)UIButton *CVSLeftScoreAddButton;//左边得1分按钮
@property(nonatomic, strong)UIButton *CVSLeftScoreReductionButton;//左边减1分按钮
@end
@implementation CVSScoringPartTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = [UIColor cyanColor];
        [self CVSSetContentView];
    }
    return self;
}
#pragma mark - action
- (void)CVSSetContentView{
    [self.contentView addSubview:self.CVSRightScoreLabel];
    [self.contentView addSubview:self.CVSRightScoreAddButton];
    [self.contentView addSubview:self.CVSRightScoreReductionButton];
    
    [self.contentView addSubview:self.CVSVSLabel];
    
    [self.contentView addSubview:self.CVSLeftScoreLabel];
    [self.contentView addSubview:self.CVSLeftScoreAddButton];
    [self.contentView addSubview:self.CVSLeftScoreReductionButton];

    
    [self.CVSRightScoreLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(32);
        make.top.equalTo(self.contentView).offset(15);
        make.width.mas_equalTo((CVSWIDTH - 224) * 0.5);
        make.height.mas_equalTo(60);
    }];
    [self.CVSRightScoreAddButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.CVSRightScoreLabel);
        make.top.equalTo(self.CVSRightScoreLabel.mas_bottom).offset(20);
        make.width.mas_equalTo(60);
        make.height.mas_equalTo(60);
    }];
    [self.CVSRightScoreReductionButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.CVSRightScoreLabel);
        make.top.equalTo(self.CVSRightScoreAddButton.mas_bottom).offset(10);
        make.width.mas_equalTo(60);
        make.height.mas_equalTo(60);
        make.bottom.equalTo(self.contentView).offset(-5);
    }];
    [self.CVSVSLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.contentView);
        make.centerY.equalTo(self.CVSRightScoreLabel);
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(40);
    }];
    [self.CVSLeftScoreLabel mas_makeConstraints:^(MASConstraintMaker *make) {
    make.trailing.equalTo(self.contentView).offset(-32);
        make.top.equalTo(self.contentView).offset(15);
        make.width.mas_equalTo((CVSWIDTH - 224) * 0.5);
        make.height.mas_equalTo(60);
    }];
    [self.CVSLeftScoreAddButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.CVSLeftScoreLabel);
    make.top.equalTo(self.CVSLeftScoreLabel.mas_bottom).offset(20);
        make.width.mas_equalTo(60);
        make.height.mas_equalTo(60);
    }];
    [self.CVSLeftScoreReductionButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.CVSLeftScoreLabel);
        make.top.equalTo(self.CVSLeftScoreAddButton.mas_bottom).offset(10);
            make.width.mas_equalTo(60);
            make.height.mas_equalTo(60);
    }];
}
#pragma mark - actions
- (void)CVSScorerRefresh:(UIButton *)sender{
    if (sender.tag == 99) {
        self.CVSModel.CVSRightscore = self.CVSModel.CVSRightscore + 1;
        self.CVSRightScoreLabel.text = [NSString stringWithFormat:@"%ld",_CVSModel.CVSRightscore];
    }else if (sender.tag == 100){
        self.CVSModel.CVSRightscore = self.CVSModel.CVSRightscore - 1;
        self.CVSRightScoreLabel.text = [NSString stringWithFormat:@"%ld",_CVSModel.CVSRightscore];
    }else if (sender.tag == 101){
        self.CVSModel.CVSLeftscore = self.CVSModel.CVSLeftscore + 1;
        self.CVSLeftScoreLabel.text = [NSString stringWithFormat:@"%ld",_CVSModel.CVSLeftscore];
    }else if (sender.tag == 102){
        self.CVSModel.CVSLeftscore = self.CVSModel.CVSLeftscore - 1;
        self.CVSLeftScoreLabel.text = [NSString stringWithFormat:@"%ld",_CVSModel.CVSLeftscore];
    }
}
- (void)setCVSModel:(CVSScorecardViewModel *)CVSModel{
    _CVSModel = CVSModel;
    self.CVSRightScoreLabel.text = [NSString stringWithFormat:@"%ld",_CVSModel.CVSRightscore];
    self.CVSLeftScoreLabel.text = [NSString stringWithFormat:@"%ld",_CVSModel.CVSLeftscore];
}
#pragma mark - 属性懒加载
- (UILabel *)CVSRightScoreLabel{
    if (!_CVSRightScoreLabel) {
        _CVSRightScoreLabel = [[UILabel alloc] init];
        _CVSRightScoreLabel.backgroundColor = CVSH_Color(180, 177, 158, 1);
        _CVSRightScoreLabel.textColor = [UIColor whiteColor];
        _CVSRightScoreLabel.font = [UIFont boldSystemFontOfSize:35];
        _CVSRightScoreLabel.textAlignment = NSTextAlignmentCenter;
        _CVSRightScoreLabel.layer.cornerRadius = 4.0f;
        _CVSRightScoreLabel.layer.masksToBounds = YES;
    }
    return _CVSRightScoreLabel;
}
- (UIButton *)CVSRightScoreAddButton{
    if (!_CVSRightScoreAddButton) {
        _CVSRightScoreAddButton = [[UIButton alloc] init];
        _CVSRightScoreAddButton.backgroundColor = [UIColor blueColor];
        _CVSRightScoreAddButton.titleLabel.font = [UIFont boldSystemFontOfSize:30];
        _CVSRightScoreAddButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_CVSRightScoreAddButton setTitle:@"+1" forState:UIControlStateNormal];
        [_CVSRightScoreAddButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        _CVSRightScoreAddButton.layer.cornerRadius = 30.0f;
        _CVSRightScoreAddButton.layer.masksToBounds = YES;
        _CVSRightScoreAddButton.tag = 99;
        [_CVSRightScoreAddButton addTarget:self action:@selector(CVSScorerRefresh:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _CVSRightScoreAddButton;
}
- (UIButton *)CVSRightScoreReductionButton{
    if (!_CVSRightScoreReductionButton) {
        _CVSRightScoreReductionButton = [[UIButton alloc] init];
        _CVSRightScoreReductionButton.backgroundColor = [UIColor blackColor];
        _CVSRightScoreReductionButton.titleLabel.font = [UIFont boldSystemFontOfSize:30];
        _CVSRightScoreReductionButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_CVSRightScoreReductionButton setTitle:@"-1" forState:UIControlStateNormal];
        [_CVSRightScoreReductionButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        _CVSRightScoreReductionButton.layer.cornerRadius = 30.0f;
        _CVSRightScoreReductionButton.layer.masksToBounds = YES;
        _CVSRightScoreReductionButton.tag = 100;
        [_CVSRightScoreReductionButton addTarget:self action:@selector(CVSScorerRefresh:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _CVSRightScoreReductionButton;
}
- (UILabel *)CVSVSLabel{
    if (!_CVSVSLabel) {
        _CVSVSLabel = [[UILabel alloc] init];
        _CVSVSLabel.textColor = [UIColor systemRedColor];
        _CVSVSLabel.font = [UIFont boldSystemFontOfSize:40];
        _CVSVSLabel.textAlignment = NSTextAlignmentCenter;
        _CVSVSLabel.text = @":";
    }
    return _CVSVSLabel;
}
- (UILabel *)CVSLeftScoreLabel{
    if (!_CVSLeftScoreLabel) {
        _CVSLeftScoreLabel = [[UILabel alloc] init];
        _CVSLeftScoreLabel.backgroundColor = CVSH_Color(180, 177, 158, 1);
        _CVSLeftScoreLabel.textColor = [UIColor whiteColor];
        _CVSLeftScoreLabel.font = [UIFont boldSystemFontOfSize:35];
        _CVSLeftScoreLabel.textAlignment = NSTextAlignmentCenter;
        _CVSLeftScoreLabel.layer.cornerRadius = 4.0f;
        _CVSLeftScoreLabel.layer.masksToBounds = YES;
    }
    return _CVSLeftScoreLabel;
}
- (UIButton *)CVSLeftScoreAddButton{
    if (!_CVSLeftScoreAddButton) {
        _CVSLeftScoreAddButton = [[UIButton alloc] init];
        _CVSLeftScoreAddButton.backgroundColor = [UIColor blueColor];
        [_CVSLeftScoreAddButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        _CVSLeftScoreAddButton.titleLabel.font = [UIFont boldSystemFontOfSize:30];
        _CVSLeftScoreAddButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_CVSLeftScoreAddButton setTitle:@"+1" forState:UIControlStateNormal];
        _CVSLeftScoreAddButton.layer.cornerRadius = 30.0f;
        _CVSLeftScoreAddButton.layer.masksToBounds = YES;
        _CVSLeftScoreAddButton.tag = 101;
        [_CVSLeftScoreAddButton addTarget:self action:@selector(CVSScorerRefresh:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _CVSLeftScoreAddButton;
}
- (UIButton *)CVSLeftScoreReductionButton{
    if (!_CVSLeftScoreReductionButton) {
        _CVSLeftScoreReductionButton = [[UIButton alloc] init];
        _CVSLeftScoreReductionButton.backgroundColor = [UIColor blackColor];
        [_CVSLeftScoreReductionButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        _CVSLeftScoreReductionButton.titleLabel.font = [UIFont boldSystemFontOfSize:30];
        _CVSLeftScoreReductionButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_CVSLeftScoreReductionButton setTitle:@"-1" forState:UIControlStateNormal];
        _CVSLeftScoreReductionButton.layer.cornerRadius = 30.0f;
        _CVSLeftScoreReductionButton.layer.masksToBounds = YES;
        _CVSLeftScoreReductionButton.tag = 102;
        [_CVSLeftScoreReductionButton addTarget:self action:@selector(CVSScorerRefresh:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _CVSLeftScoreReductionButton;
}
@end
