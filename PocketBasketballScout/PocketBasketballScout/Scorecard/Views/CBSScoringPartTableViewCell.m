//
//  CBSScoringPartTableViewCell.m
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import "CBSScoringPartTableViewCell.h"
#import "CBSScorecardViewModel.h"

@interface CBSScoringPartTableViewCell()
@property(nonatomic, strong)UILabel *CBSRightScoreLabel;//右边得分
@property(nonatomic, strong)UIButton *CBSRightScoreAddButton;//右边得1分按钮
@property(nonatomic, strong)UIButton *CBSRightScoreAddTwoButton;//右边得2分按钮
@property(nonatomic, strong)UIButton *CBSRightScoreAddThreeButton;//右边得3分按钮

@property(nonatomic, strong)UILabel *CBSVSLabel;//VS标识

@property(nonatomic, strong)UILabel *CBSLeftScoreLabel;//左边得分
@property(nonatomic, strong)UIButton *CBSLeftScoreAddButton;//左边得1分按钮
@property(nonatomic, strong)UIButton *CBSLeftScoreAddTwoButton;//左边得2分按钮
@property(nonatomic, strong)UIButton *CBSLeftScoreAddThreeButton;//左边得3分按钮
@end
@implementation CBSScoringPartTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = [UIColor whiteColor];
        [self CBSSetContentView];
    }
    return self;
}
#pragma mark - action
- (void)CBSSetContentView{
    [self.contentView addSubview:self.CBSRightScoreLabel];
    [self.contentView addSubview:self.CBSRightScoreAddButton];
    [self.contentView addSubview:self.CBSRightScoreAddTwoButton];
    [self.contentView addSubview:self.CBSRightScoreAddThreeButton];
    
    [self.contentView addSubview:self.CBSVSLabel];
    
    [self.contentView addSubview:self.CBSLeftScoreLabel];
    [self.contentView addSubview:self.CBSLeftScoreAddButton];
    [self.contentView addSubview:self.CBSLeftScoreAddTwoButton];
    [self.contentView addSubview:self.CBSLeftScoreAddThreeButton];

    
    [self.CBSRightScoreLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(32);
        make.top.equalTo(self.contentView).offset(30);
        make.width.mas_equalTo((CBSWIDTH - 224) * 0.5);
        make.height.mas_equalTo(60);
    }];
    [self.CBSRightScoreAddButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.CBSRightScoreLabel);
        make.top.equalTo(self.CBSRightScoreLabel.mas_bottom).offset(20);
        make.width.mas_equalTo((CBSWIDTH - 224) * 0.5);
        make.height.mas_equalTo(30);
    }];
    [self.CBSRightScoreAddTwoButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.CBSRightScoreLabel);
        make.top.equalTo(self.CBSRightScoreAddButton.mas_bottom).offset(20);
        make.width.mas_equalTo((CBSWIDTH - 224) * 0.5);
        make.height.mas_equalTo(30);
    }];
    [self.CBSRightScoreAddThreeButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.CBSRightScoreLabel);
        make.top.equalTo(self.CBSRightScoreAddTwoButton.mas_bottom).offset(20);
        make.width.mas_equalTo((CBSWIDTH - 224) * 0.5);
        make.height.mas_equalTo(30);
        make.bottom.equalTo(self.contentView).offset(-15);
    }];
    [self.CBSVSLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.contentView);
    make.centerY.equalTo(self.CBSRightScoreLabel);
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(40);
    }];
    [self.CBSLeftScoreLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.equalTo(self.contentView).offset(-32);
        make.top.equalTo(self.contentView).offset(30);
        make.width.mas_equalTo((CBSWIDTH - 224) * 0.5);
        make.height.mas_equalTo(60);
    }];
    [self.CBSLeftScoreAddButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.CBSLeftScoreLabel);
        make.top.equalTo(self.CBSLeftScoreLabel.mas_bottom).offset(20);
        make.width.mas_equalTo((CBSWIDTH - 224) * 0.5);
        make.height.mas_equalTo(30);
    }];
    [self.CBSLeftScoreAddTwoButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.CBSLeftScoreLabel);
        make.top.equalTo(self.CBSLeftScoreAddButton.mas_bottom).offset(20);
        make.width.mas_equalTo((CBSWIDTH - 224) * 0.5);
        make.height.mas_equalTo(30);
    }];
    [self.CBSLeftScoreAddThreeButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.CBSLeftScoreLabel);
        make.top.equalTo(self.CBSLeftScoreAddTwoButton.mas_bottom).offset(20);
        make.width.mas_equalTo((CBSWIDTH - 224) * 0.5);
        make.height.mas_equalTo(30);
    }];
}
#pragma mark - actions
- (void)CBSScorerRefresh:(UIButton *)sender{
    if (sender.tag == 99) {
        self.CBSModel.CBSRightscore = self.CBSModel.CBSRightscore + 1;
        self.CBSRightScoreLabel.text = [NSString stringWithFormat:@"%ld",_CBSModel.CBSRightscore];
    }else if (sender.tag == 100){
        self.CBSModel.CBSRightscore = self.CBSModel.CBSRightscore + 2;
        self.CBSRightScoreLabel.text = [NSString stringWithFormat:@"%ld",_CBSModel.CBSRightscore];
    }else if (sender.tag == 101){
        self.CBSModel.CBSRightscore = self.CBSModel.CBSRightscore + 3;
        self.CBSRightScoreLabel.text = [NSString stringWithFormat:@"%ld",_CBSModel.CBSRightscore];
    }else if (sender.tag == 102){
        self.CBSModel.CBSLeftscore = self.CBSModel.CBSLeftscore + 1;
        self.CBSLeftScoreLabel.text = [NSString stringWithFormat:@"%ld",_CBSModel.CBSLeftscore];
    }else if (sender.tag == 103){
        self.CBSModel.CBSLeftscore = self.CBSModel.CBSLeftscore + 2;
        self.CBSLeftScoreLabel.text = [NSString stringWithFormat:@"%ld",_CBSModel.CBSLeftscore];
    }else if (sender.tag == 104){
        self.CBSModel.CBSLeftscore = self.CBSModel.CBSLeftscore + 3;
        self.CBSLeftScoreLabel.text = [NSString stringWithFormat:@"%ld",_CBSModel.CBSLeftscore];
    }
}
- (void)setCBSModel:(CBSScorecardViewModel *)CBSModel{
    _CBSModel = CBSModel;
    self.CBSRightScoreLabel.text = [NSString stringWithFormat:@"%ld",_CBSModel.CBSRightscore];
    self.CBSLeftScoreLabel.text = [NSString stringWithFormat:@"%ld",_CBSModel.CBSLeftscore];
}
#pragma mark - 属性懒加载
- (UILabel *)CBSRightScoreLabel{
    if (!_CBSRightScoreLabel) {
        _CBSRightScoreLabel = [[UILabel alloc] init];
        _CBSRightScoreLabel.backgroundColor = CBSH_Color(0, 204, 131, 1);
        _CBSRightScoreLabel.textColor = [UIColor whiteColor];
        _CBSRightScoreLabel.font = [UIFont boldSystemFontOfSize:30];
        _CBSRightScoreLabel.textAlignment = NSTextAlignmentCenter;
        _CBSRightScoreLabel.layer.cornerRadius = 8.0f;
        _CBSRightScoreLabel.layer.masksToBounds = YES;
    }
    return _CBSRightScoreLabel;
}
- (UIButton *)CBSRightScoreAddButton{
    if (!_CBSRightScoreAddButton) {
        _CBSRightScoreAddButton = [[UIButton alloc] init];
        _CBSRightScoreAddButton.titleLabel.font = [UIFont boldSystemFontOfSize:22];
        _CBSRightScoreAddButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_CBSRightScoreAddButton setTitle:@"+1" forState:UIControlStateNormal];
        [_CBSRightScoreAddButton setTitleColor:[UIColor systemGreenColor] forState:UIControlStateNormal];
        _CBSRightScoreAddButton.layer.cornerRadius = 6.0f;
        _CBSRightScoreAddButton.layer.masksToBounds = YES;
        _CBSRightScoreAddButton.layer.borderColor = [UIColor systemRedColor].CGColor;
        _CBSRightScoreAddButton.layer.borderWidth = 2.0f;
        _CBSRightScoreAddButton.tag = 99;
        [_CBSRightScoreAddButton addTarget:self action:@selector(CBSScorerRefresh:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _CBSRightScoreAddButton;
}
- (UIButton *)CBSRightScoreAddTwoButton{
    if (!_CBSRightScoreAddTwoButton) {
        _CBSRightScoreAddTwoButton = [[UIButton alloc] init];
        [_CBSRightScoreAddTwoButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        _CBSRightScoreAddTwoButton.titleLabel.font = [UIFont boldSystemFontOfSize:22];
        _CBSRightScoreAddTwoButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_CBSRightScoreAddTwoButton setTitle:@"+2" forState:UIControlStateNormal];
        _CBSRightScoreAddTwoButton.layer.cornerRadius = 6.0f;
        _CBSRightScoreAddTwoButton.layer.masksToBounds = YES;
        _CBSRightScoreAddTwoButton.layer.borderColor = [UIColor systemRedColor].CGColor;
        _CBSRightScoreAddTwoButton.layer.borderWidth = 2.0f;
        _CBSRightScoreAddTwoButton.tag = 100;
        [_CBSRightScoreAddTwoButton addTarget:self action:@selector(CBSScorerRefresh:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _CBSRightScoreAddTwoButton;
}
- (UIButton *)CBSRightScoreAddThreeButton{
    if (!_CBSRightScoreAddThreeButton) {
        _CBSRightScoreAddThreeButton = [[UIButton alloc] init];
        [_CBSRightScoreAddThreeButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        _CBSRightScoreAddThreeButton.titleLabel.font = [UIFont boldSystemFontOfSize:22];
        _CBSRightScoreAddThreeButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_CBSRightScoreAddThreeButton setTitle:@"+3" forState:UIControlStateNormal];
        _CBSRightScoreAddThreeButton.layer.cornerRadius = 6.0f;
        _CBSRightScoreAddThreeButton.layer.masksToBounds = YES;
        _CBSRightScoreAddThreeButton.layer.borderColor = [UIColor systemRedColor].CGColor;
        _CBSRightScoreAddThreeButton.layer.borderWidth = 2.0f;
        _CBSRightScoreAddThreeButton.tag = 101;
        [_CBSRightScoreAddThreeButton addTarget:self action:@selector(CBSScorerRefresh:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _CBSRightScoreAddThreeButton;
}
- (UILabel *)CBSVSLabel{
    if (!_CBSVSLabel) {
        _CBSVSLabel = [[UILabel alloc] init];
        _CBSVSLabel.textColor = [UIColor systemRedColor];
        _CBSVSLabel.font = [UIFont boldSystemFontOfSize:38];
        _CBSVSLabel.textAlignment = NSTextAlignmentCenter;
        _CBSVSLabel.text = @":";
    }
    return _CBSVSLabel;
}
- (UILabel *)CBSLeftScoreLabel{
    if (!_CBSLeftScoreLabel) {
        _CBSLeftScoreLabel = [[UILabel alloc] init];
        _CBSLeftScoreLabel.backgroundColor = CBSH_Color(0, 204, 131, 1);
        _CBSLeftScoreLabel.textColor = [UIColor whiteColor];
        _CBSLeftScoreLabel.font = [UIFont boldSystemFontOfSize:30];
        _CBSLeftScoreLabel.textAlignment = NSTextAlignmentCenter;
        _CBSLeftScoreLabel.layer.cornerRadius = 8.0f;
        _CBSLeftScoreLabel.layer.masksToBounds = YES;
    }
    return _CBSLeftScoreLabel;
}
- (UIButton *)CBSLeftScoreAddButton{
    if (!_CBSLeftScoreAddButton) {
        _CBSLeftScoreAddButton = [[UIButton alloc] init];
        [_CBSLeftScoreAddButton setTitleColor:[UIColor systemGreenColor] forState:UIControlStateNormal];
        _CBSLeftScoreAddButton.titleLabel.font = [UIFont boldSystemFontOfSize:22];
        _CBSLeftScoreAddButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_CBSLeftScoreAddButton setTitle:@"+1" forState:UIControlStateNormal];
        _CBSLeftScoreAddButton.layer.cornerRadius = 6.0f;
        _CBSLeftScoreAddButton.layer.masksToBounds = YES;
        _CBSLeftScoreAddButton.layer.borderColor = [UIColor systemRedColor].CGColor;
        _CBSLeftScoreAddButton.layer.borderWidth = 2.0f;
        _CBSLeftScoreAddButton.tag = 102;
        [_CBSLeftScoreAddButton addTarget:self action:@selector(CBSScorerRefresh:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _CBSLeftScoreAddButton;
}
- (UIButton *)CBSLeftScoreAddTwoButton{
    if (!_CBSLeftScoreAddTwoButton) {
        _CBSLeftScoreAddTwoButton = [[UIButton alloc] init];
        [_CBSLeftScoreAddTwoButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
      _CBSLeftScoreAddTwoButton.titleLabel.font = [UIFont boldSystemFontOfSize:22];
        _CBSLeftScoreAddTwoButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_CBSLeftScoreAddTwoButton setTitle:@"+2" forState:UIControlStateNormal];
        _CBSLeftScoreAddTwoButton.layer.cornerRadius = 6.0f;
        _CBSLeftScoreAddTwoButton.layer.masksToBounds = YES;
        _CBSLeftScoreAddTwoButton.layer.borderColor = [UIColor systemRedColor].CGColor;
        _CBSLeftScoreAddTwoButton.layer.borderWidth = 2.0f;
        _CBSLeftScoreAddTwoButton.tag = 103;
        [_CBSLeftScoreAddTwoButton addTarget:self action:@selector(CBSScorerRefresh:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _CBSLeftScoreAddTwoButton;
}
- (UIButton *)CBSLeftScoreAddThreeButton{
    if (!_CBSLeftScoreAddThreeButton) {
        _CBSLeftScoreAddThreeButton = [[UIButton alloc] init];
        [_CBSLeftScoreAddThreeButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        _CBSLeftScoreAddThreeButton.titleLabel.font = [UIFont boldSystemFontOfSize:22];
        _CBSLeftScoreAddThreeButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_CBSLeftScoreAddThreeButton setTitle:@"+3" forState:UIControlStateNormal];
        _CBSLeftScoreAddThreeButton.layer.cornerRadius = 6.0f;
        _CBSLeftScoreAddThreeButton.layer.masksToBounds = YES;
        _CBSLeftScoreAddThreeButton.layer.borderColor = [UIColor systemRedColor].CGColor;
        _CBSLeftScoreAddThreeButton.layer.borderWidth = 2.0f;
        _CBSLeftScoreAddThreeButton.tag = 104;
        [_CBSLeftScoreAddThreeButton addTarget:self action:@selector(CBSScorerRefresh:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _CBSLeftScoreAddThreeButton;
}
@end
