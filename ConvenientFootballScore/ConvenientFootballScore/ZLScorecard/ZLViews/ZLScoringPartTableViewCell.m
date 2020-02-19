//
//  ZLScoringPartTableViewCell.m
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import "ZLScoringPartTableViewCell.h"
#import "ZLScorecardViewModel.h"

@interface ZLScoringPartTableViewCell()
@property(nonatomic, strong)UILabel *ZLRightScoreLabel;//右边得分
@property(nonatomic, strong)UIButton *ZLRightScoreAddButton;//右边得分按钮
@property(nonatomic, strong)UIButton *ZLRightScoreReduceButton;//右边减分按钮

@property(nonatomic, strong)UILabel *ZLVSLabel;//VS标识

@property(nonatomic, strong)UILabel *ZLLeftScoreLabel;//左边得分
@property(nonatomic, strong)UIButton *ZLLeftScoreAddButton;//左边得分按钮
@property(nonatomic, strong)UIButton *ZLLeftScoreReduceButton;//左边减分按钮
@end
@implementation ZLScoringPartTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self ZLSetContentView];
    }
    return self;
}
#pragma mark - action
- (void)ZLSetContentView{
    self.contentView.backgroundColor = [UIColor purpleColor];
    [self.contentView addSubview:self.ZLRightScoreLabel];
    [self.contentView addSubview:self.ZLRightScoreAddButton];
    [self.contentView addSubview:self.ZLRightScoreReduceButton];
    [self.contentView addSubview:self.ZLVSLabel];
    [self.contentView addSubview:self.ZLLeftScoreLabel];
    [self.contentView addSubview:self.ZLLeftScoreAddButton];
    [self.contentView addSubview:self.ZLLeftScoreReduceButton];
    
    [self.ZLRightScoreLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(32);
        make.top.equalTo(self.contentView).offset(30);
        make.width.mas_equalTo((ZLWIDTH - 224) * 0.5);
        make.height.mas_equalTo(60);
    }];
    [self.ZLRightScoreAddButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.ZLRightScoreLabel);
        make.top.equalTo(self.ZLRightScoreLabel.mas_bottom).offset(20);
        make.width.mas_equalTo((ZLWIDTH - 224) * 0.25);
        make.height.mas_equalTo(30);
    }];
    [self.ZLRightScoreReduceButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.ZLRightScoreLabel);
        make.top.equalTo(self.ZLRightScoreAddButton.mas_bottom).offset(20);
        make.width.mas_equalTo((ZLWIDTH - 224) * 0.25);
        make.height.mas_equalTo(30);
        make.bottom.equalTo(self.contentView).offset(-30);
    }];
    [self.ZLVSLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.contentView);
    make.centerY.equalTo(self.ZLRightScoreLabel);
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(40);
    }];
    [self.ZLLeftScoreLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.equalTo(self.contentView).offset(-32);
        make.top.equalTo(self.contentView).offset(30);
        make.width.mas_equalTo((ZLWIDTH - 224) * 0.5);
        make.height.mas_equalTo(60);
    }];
    [self.ZLLeftScoreAddButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.ZLLeftScoreLabel);
        make.top.equalTo(self.ZLLeftScoreLabel.mas_bottom).offset(20);
        make.width.mas_equalTo((ZLWIDTH - 224) * 0.25);
        make.height.mas_equalTo(30);
    }];
    [self.ZLLeftScoreReduceButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.ZLLeftScoreLabel);
        make.top.equalTo(self.ZLLeftScoreAddButton.mas_bottom).offset(20);
        make.width.mas_equalTo((ZLWIDTH - 224) * 0.25);
        make.height.mas_equalTo(30);
    }];
}
#pragma mark - actions
- (void)ZLScorerRefresh:(UIButton *)sender{
    if (sender.tag == 99) {
        self.ZLModel.ZLRightscore++;
        self.ZLRightScoreLabel.text = [NSString stringWithFormat:@"%ld",_ZLModel.ZLRightscore];
    }else if (sender.tag == 100){
        if (self.ZLModel.ZLRightscore > 0) {
            self.ZLModel.ZLRightscore--;
            self.ZLRightScoreLabel.text = [NSString stringWithFormat:@"%ld",_ZLModel.ZLRightscore];
        }
    }else if (sender.tag == 101){
        self.ZLModel.ZLLeftscore++;
        self.ZLLeftScoreLabel.text = [NSString stringWithFormat:@"%ld",_ZLModel.ZLLeftscore];
    }else if (sender.tag == 102){
        if (self.ZLModel.ZLLeftscore > 0) {
        self.ZLModel.ZLLeftscore--;
        self.ZLLeftScoreLabel.text = [NSString stringWithFormat:@"%ld",_ZLModel.ZLLeftscore];
        }
    }
}
- (void)setZLModel:(ZLScorecardViewModel *)ZLModel{
    _ZLModel = ZLModel;
    self.ZLRightScoreLabel.text = [NSString stringWithFormat:@"%lu",(unsigned long)_ZLModel.ZLRightscore];
    self.ZLLeftScoreLabel.text = [NSString stringWithFormat:@"%lu",(unsigned long)_ZLModel.ZLLeftscore];
}
#pragma mark - 属性懒加载
- (UILabel *)ZLRightScoreLabel{
    if (!_ZLRightScoreLabel) {
        _ZLRightScoreLabel = [[UILabel alloc] init];
        _ZLRightScoreLabel.backgroundColor = [UIColor systemGreenColor];
        _ZLRightScoreLabel.textColor = [UIColor whiteColor];
        _ZLRightScoreLabel.font = [UIFont boldSystemFontOfSize:30];
        _ZLRightScoreLabel.textAlignment = NSTextAlignmentCenter;
        _ZLRightScoreLabel.layer.cornerRadius = 16.0f;
        _ZLRightScoreLabel.layer.masksToBounds = YES;
    }
    return _ZLRightScoreLabel;
}
- (UIButton *)ZLRightScoreAddButton{
    if (!_ZLRightScoreAddButton) {
        _ZLRightScoreAddButton = [[UIButton alloc] init];
        _ZLRightScoreAddButton.backgroundColor = [UIColor systemGreenColor];
        _ZLRightScoreAddButton.titleLabel.font = [UIFont boldSystemFontOfSize:22];
        _ZLRightScoreAddButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_ZLRightScoreAddButton setTitle:@"+1" forState:UIControlStateNormal];
        [_ZLRightScoreAddButton setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
        _ZLRightScoreAddButton.tag = 99;
        _ZLRightScoreAddButton.layer.cornerRadius = 4.0f;
        _ZLRightScoreAddButton.layer.masksToBounds = YES;
        [_ZLRightScoreAddButton addTarget:self action:@selector(ZLScorerRefresh:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _ZLRightScoreAddButton;
}
- (UIButton *)ZLRightScoreReduceButton{
    if (!_ZLRightScoreReduceButton) {
        _ZLRightScoreReduceButton = [[UIButton alloc] init];
        _ZLRightScoreReduceButton.backgroundColor = [UIColor systemGreenColor];
        [_ZLRightScoreReduceButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        _ZLRightScoreReduceButton.titleLabel.font = [UIFont boldSystemFontOfSize:22];
        _ZLRightScoreReduceButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_ZLRightScoreReduceButton setTitle:@"-1" forState:UIControlStateNormal];
        _ZLRightScoreReduceButton.tag = 100;
        _ZLRightScoreReduceButton.layer.cornerRadius = 4.0f;
        _ZLRightScoreReduceButton.layer.masksToBounds = YES;
        [_ZLRightScoreReduceButton addTarget:self action:@selector(ZLScorerRefresh:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _ZLRightScoreReduceButton;
}
- (UILabel *)ZLVSLabel{
    if (!_ZLVSLabel) {
        _ZLVSLabel = [[UILabel alloc] init];
        _ZLVSLabel.textColor = [UIColor systemGreenColor];
        _ZLVSLabel.font = [UIFont boldSystemFontOfSize:38];
        _ZLVSLabel.textAlignment = NSTextAlignmentCenter;
        _ZLVSLabel.text = @":";
    }
    return _ZLVSLabel;
}
- (UILabel *)ZLLeftScoreLabel{
    if (!_ZLLeftScoreLabel) {
        _ZLLeftScoreLabel = [[UILabel alloc] init];
        _ZLLeftScoreLabel.backgroundColor = [UIColor systemGreenColor];
        _ZLLeftScoreLabel.textColor = [UIColor whiteColor];
        _ZLLeftScoreLabel.font = [UIFont boldSystemFontOfSize:30];
        _ZLLeftScoreLabel.textAlignment = NSTextAlignmentCenter;
        _ZLLeftScoreLabel.layer.cornerRadius = 16.0f;
        _ZLLeftScoreLabel.layer.masksToBounds = YES;
    }
    return _ZLLeftScoreLabel;
}
- (UIButton *)ZLLeftScoreAddButton{
    if (!_ZLLeftScoreAddButton) {
        _ZLLeftScoreAddButton = [[UIButton alloc] init];
        _ZLLeftScoreAddButton.backgroundColor = [UIColor systemGreenColor];
        [_ZLLeftScoreAddButton setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
        _ZLLeftScoreAddButton.titleLabel.font = [UIFont boldSystemFontOfSize:22];
        _ZLLeftScoreAddButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_ZLLeftScoreAddButton setTitle:@"+1" forState:UIControlStateNormal];
        _ZLLeftScoreAddButton.tag = 101;
        _ZLLeftScoreAddButton.layer.cornerRadius = 4.0f;
        _ZLLeftScoreAddButton.layer.masksToBounds = YES;
        [_ZLLeftScoreAddButton addTarget:self action:@selector(ZLScorerRefresh:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _ZLLeftScoreAddButton;
}
- (UIButton *)ZLLeftScoreReduceButton{
    if (!_ZLLeftScoreReduceButton) {
        _ZLLeftScoreReduceButton = [[UIButton alloc] init];
        _ZLLeftScoreReduceButton.backgroundColor = [UIColor systemGreenColor];
        [_ZLLeftScoreReduceButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
      _ZLLeftScoreReduceButton.titleLabel.font = [UIFont boldSystemFontOfSize:22];
        _ZLLeftScoreReduceButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_ZLLeftScoreReduceButton setTitle:@"-1" forState:UIControlStateNormal];
        _ZLLeftScoreReduceButton.tag = 102;
        _ZLLeftScoreReduceButton.layer.cornerRadius = 4.0f;
        _ZLLeftScoreReduceButton.layer.masksToBounds = YES;
        [_ZLLeftScoreReduceButton addTarget:self action:@selector(ZLScorerRefresh:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _ZLLeftScoreReduceButton;
}
@end
