//
//  AFSScoringPartTableViewCell.m
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import "AFSScoringPartTableViewCell.h"
#import "AFSScorecardViewModel.h"

@interface AFSScoringPartTableViewCell()
@property(nonatomic, strong)UILabel *AFSRightScoreLabel;//右边得分
@property(nonatomic, strong)UIButton *AFSRightScoreAddButton;//右边得分按钮
@property(nonatomic, strong)UIButton *AFSRightScoreReduceButton;//右边减分按钮

@property(nonatomic, strong)UILabel *AFSVSLabel;//VS标识

@property(nonatomic, strong)UILabel *AFSLeftScoreLabel;//左边得分
@property(nonatomic, strong)UIButton *AFSLeftScoreAddButton;//左边得分按钮
@property(nonatomic, strong)UIButton *AFSLeftScoreReduceButton;//左边减分按钮
@end
@implementation AFSScoringPartTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self AFSSetContentView];
    }
    return self;
}
#pragma mark - action
- (void)AFSSetContentView{
    [self.contentView addSubview:self.AFSRightScoreLabel];
    [self.contentView addSubview:self.AFSRightScoreAddButton];
    [self.contentView addSubview:self.AFSRightScoreReduceButton];
    [self.contentView addSubview:self.AFSVSLabel];
    [self.contentView addSubview:self.AFSLeftScoreLabel];
    [self.contentView addSubview:self.AFSLeftScoreAddButton];
    [self.contentView addSubview:self.AFSLeftScoreReduceButton];
    
    [self.AFSRightScoreLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(32);
        make.top.equalTo(self.contentView).offset(30);
        make.width.mas_equalTo((AFSWIDTH - 224) * 0.5);
        make.height.mas_equalTo(60);
    }];
    [self.AFSRightScoreAddButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.AFSRightScoreLabel);
        make.top.equalTo(self.AFSRightScoreLabel.mas_bottom).offset(20);
        make.width.mas_equalTo((AFSWIDTH - 224) * 0.5);
        make.height.mas_equalTo(30);
    }];
    [self.AFSRightScoreReduceButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.AFSRightScoreLabel);
        make.top.equalTo(self.AFSRightScoreAddButton.mas_bottom).offset(20);
        make.width.mas_equalTo((AFSWIDTH - 224) * 0.5);
        make.height.mas_equalTo(30);
        make.bottom.equalTo(self.contentView).offset(-30);
    }];
    [self.AFSVSLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.contentView);
    make.centerY.equalTo(self.AFSRightScoreLabel);
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(40);
    }];
    [self.AFSLeftScoreLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.equalTo(self.contentView).offset(-32);
        make.top.equalTo(self.contentView).offset(30);
        make.width.mas_equalTo((AFSWIDTH - 224) * 0.5);
        make.height.mas_equalTo(60);
    }];
    [self.AFSLeftScoreAddButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.AFSLeftScoreLabel);
        make.top.equalTo(self.AFSLeftScoreLabel.mas_bottom).offset(20);
        make.width.mas_equalTo((AFSWIDTH - 224) * 0.5);
        make.height.mas_equalTo(30);
    }];
    [self.AFSLeftScoreReduceButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.AFSLeftScoreLabel);
        make.top.equalTo(self.AFSLeftScoreAddButton.mas_bottom).offset(20);
        make.width.mas_equalTo((AFSWIDTH - 224) * 0.5);
        make.height.mas_equalTo(30);
    }];
}
#pragma mark - actions
- (void)AFSScorerRefresh:(UIButton *)sender{
    if (sender.tag == 99) {
        self.AFSModel.AFSRightscore++;
        self.AFSRightScoreLabel.text = [NSString stringWithFormat:@"%ld",_AFSModel.AFSRightscore];
    }else if (sender.tag == 100){
        if (self.AFSModel.AFSRightscore > 0) {
            self.AFSModel.AFSRightscore--;
            self.AFSRightScoreLabel.text = [NSString stringWithFormat:@"%ld",_AFSModel.AFSRightscore];
        }
    }else if (sender.tag == 101){
        self.AFSModel.AFSLeftscore++;
        self.AFSLeftScoreLabel.text = [NSString stringWithFormat:@"%ld",_AFSModel.AFSLeftscore];
    }else if (sender.tag == 102){
        if (self.AFSModel.AFSLeftscore > 0) {
        self.AFSModel.AFSLeftscore--;
        self.AFSLeftScoreLabel.text = [NSString stringWithFormat:@"%ld",_AFSModel.AFSLeftscore];
        }
    }
}
- (void)setAFSModel:(AFSScorecardViewModel *)AFSModel{
    _AFSModel = AFSModel;
    self.AFSRightScoreLabel.text = [NSString stringWithFormat:@"%ld",_AFSModel.AFSRightscore];
    self.AFSLeftScoreLabel.text = [NSString stringWithFormat:@"%ld",_AFSModel.AFSLeftscore];
}
#pragma mark - 属性懒加载
- (UILabel *)AFSRightScoreLabel{
    if (!_AFSRightScoreLabel) {
        _AFSRightScoreLabel = [[UILabel alloc] init];
        _AFSRightScoreLabel.backgroundColor = AFSH_Color(0, 204, 131, 1);
        _AFSRightScoreLabel.textColor = [UIColor whiteColor];
        _AFSRightScoreLabel.font = [UIFont boldSystemFontOfSize:30];
        _AFSRightScoreLabel.textAlignment = NSTextAlignmentCenter;
        _AFSRightScoreLabel.layer.cornerRadius = 8.0f;
        _AFSRightScoreLabel.layer.masksToBounds = YES;
    }
    return _AFSRightScoreLabel;
}
- (UIButton *)AFSRightScoreAddButton{
    if (!_AFSRightScoreAddButton) {
        _AFSRightScoreAddButton = [[UIButton alloc] init];
        _AFSRightScoreAddButton.titleLabel.font = [UIFont boldSystemFontOfSize:22];
        _AFSRightScoreAddButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_AFSRightScoreAddButton setTitle:@"+1" forState:UIControlStateNormal];
        [_AFSRightScoreAddButton setTitleColor:[UIColor systemGreenColor] forState:UIControlStateNormal];
        _AFSRightScoreAddButton.layer.cornerRadius = 6.0f;
        _AFSRightScoreAddButton.layer.masksToBounds = YES;
        _AFSRightScoreAddButton.layer.borderColor = [UIColor grayColor].CGColor;
        _AFSRightScoreAddButton.layer.borderWidth = 1.5f;
        _AFSRightScoreAddButton.tag = 99;
        [_AFSRightScoreAddButton addTarget:self action:@selector(AFSScorerRefresh:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _AFSRightScoreAddButton;
}
- (UIButton *)AFSRightScoreReduceButton{
    if (!_AFSRightScoreReduceButton) {
        _AFSRightScoreReduceButton = [[UIButton alloc] init];
        [_AFSRightScoreReduceButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        _AFSRightScoreReduceButton.titleLabel.font = [UIFont boldSystemFontOfSize:22];
        _AFSRightScoreReduceButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_AFSRightScoreReduceButton setTitle:@"-1" forState:UIControlStateNormal];
        _AFSRightScoreReduceButton.layer.cornerRadius = 6.0f;
        _AFSRightScoreReduceButton.layer.masksToBounds = YES;
        _AFSRightScoreReduceButton.layer.borderColor = [UIColor grayColor].CGColor;
        _AFSRightScoreReduceButton.layer.borderWidth = 1.5f;
        _AFSRightScoreReduceButton.tag = 100;
        [_AFSRightScoreReduceButton addTarget:self action:@selector(AFSScorerRefresh:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _AFSRightScoreReduceButton;
}
- (UILabel *)AFSVSLabel{
    if (!_AFSVSLabel) {
        _AFSVSLabel = [[UILabel alloc] init];
        _AFSVSLabel.textColor = AFSH_Color(0, 204, 131, 1);
        _AFSVSLabel.font = [UIFont boldSystemFontOfSize:38];
        _AFSVSLabel.textAlignment = NSTextAlignmentCenter;
        _AFSVSLabel.text = @":";
    }
    return _AFSVSLabel;
}
- (UILabel *)AFSLeftScoreLabel{
    if (!_AFSLeftScoreLabel) {
        _AFSLeftScoreLabel = [[UILabel alloc] init];
        _AFSLeftScoreLabel.backgroundColor = AFSH_Color(0, 204, 131, 1);
        _AFSLeftScoreLabel.textColor = [UIColor whiteColor];
        _AFSLeftScoreLabel.font = [UIFont boldSystemFontOfSize:30];
        _AFSLeftScoreLabel.textAlignment = NSTextAlignmentCenter;
        _AFSLeftScoreLabel.layer.cornerRadius = 8.0f;
        _AFSLeftScoreLabel.layer.masksToBounds = YES;
    }
    return _AFSLeftScoreLabel;
}
- (UIButton *)AFSLeftScoreAddButton{
    if (!_AFSLeftScoreAddButton) {
        _AFSLeftScoreAddButton = [[UIButton alloc] init];
        [_AFSLeftScoreAddButton setTitleColor:[UIColor systemGreenColor] forState:UIControlStateNormal];
        _AFSLeftScoreAddButton.titleLabel.font = [UIFont boldSystemFontOfSize:22];
        _AFSLeftScoreAddButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_AFSLeftScoreAddButton setTitle:@"+1" forState:UIControlStateNormal];
        _AFSLeftScoreAddButton.layer.cornerRadius = 6.0f;
        _AFSLeftScoreAddButton.layer.masksToBounds = YES;
        _AFSLeftScoreAddButton.layer.borderColor = [UIColor grayColor].CGColor;
        _AFSLeftScoreAddButton.layer.borderWidth = 1.5f;
        _AFSLeftScoreAddButton.tag = 101;
        [_AFSLeftScoreAddButton addTarget:self action:@selector(AFSScorerRefresh:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _AFSLeftScoreAddButton;
}
- (UIButton *)AFSLeftScoreReduceButton{
    if (!_AFSLeftScoreReduceButton) {
        _AFSLeftScoreReduceButton = [[UIButton alloc] init];
        [_AFSLeftScoreReduceButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
      _AFSLeftScoreReduceButton.titleLabel.font = [UIFont boldSystemFontOfSize:22];
        _AFSLeftScoreReduceButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_AFSLeftScoreReduceButton setTitle:@"-1" forState:UIControlStateNormal];
        _AFSLeftScoreReduceButton.layer.cornerRadius = 6.0f;
        _AFSLeftScoreReduceButton.layer.masksToBounds = YES;
        _AFSLeftScoreReduceButton.layer.borderColor = [UIColor grayColor].CGColor;
        _AFSLeftScoreReduceButton.layer.borderWidth = 1.5f;
        _AFSLeftScoreReduceButton.tag = 102;
        [_AFSLeftScoreReduceButton addTarget:self action:@selector(AFSScorerRefresh:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _AFSLeftScoreReduceButton;
}
@end
