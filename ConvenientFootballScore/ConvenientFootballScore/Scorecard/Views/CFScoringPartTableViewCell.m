//
//  KTScoringPartTableViewCell.m
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import "KTScoringPartTableViewCell.h"
#import "KTScorecardViewModel.h"

@interface KTScoringPartTableViewCell()
@property(nonatomic, strong)UILabel *KTRightScoreLabel;//右边得分
@property(nonatomic, strong)UIButton *KTRightScoreAddButton;//右边得分按钮
@property(nonatomic, strong)UIButton *KTRightScoreReduceButton;//右边减分按钮

@property(nonatomic, strong)UILabel *KTVSLabel;//VS标识

@property(nonatomic, strong)UILabel *KTLeftScoreLabel;//左边得分
@property(nonatomic, strong)UIButton *KTLeftScoreAddButton;//左边得分按钮
@property(nonatomic, strong)UIButton *KTLeftScoreReduceButton;//左边减分按钮
@end
@implementation KTScoringPartTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self KTSetContentView];
    }
    return self;
}
#pragma mark - action
- (void)KTSetContentView{
    [self.contentView addSubview:self.KTRightScoreLabel];
    [self.contentView addSubview:self.KTRightScoreAddButton];
    [self.contentView addSubview:self.KTRightScoreReduceButton];
    [self.contentView addSubview:self.KTVSLabel];
    [self.contentView addSubview:self.KTLeftScoreLabel];
    [self.contentView addSubview:self.KTLeftScoreAddButton];
    [self.contentView addSubview:self.KTLeftScoreReduceButton];
    
    [self.KTRightScoreLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(32);
        make.top.equalTo(self.contentView).offset(30);
        make.width.mas_equalTo((KTWIDTH - 224) * 0.5);
        make.height.mas_equalTo(60);
    }];
    [self.KTRightScoreAddButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.KTRightScoreLabel);
        make.top.equalTo(self.KTRightScoreLabel.mas_bottom).offset(20);
        make.width.mas_equalTo((KTWIDTH - 224) * 0.5);
        make.height.mas_equalTo(30);
    }];
    [self.KTRightScoreReduceButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.KTRightScoreLabel);
        make.top.equalTo(self.KTRightScoreAddButton.mas_bottom).offset(20);
        make.width.mas_equalTo((KTWIDTH - 224) * 0.5);
        make.height.mas_equalTo(30);
        make.bottom.equalTo(self.contentView).offset(-30);
    }];
    [self.KTVSLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.contentView);
    make.centerY.equalTo(self.KTRightScoreLabel);
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(40);
    }];
    [self.KTLeftScoreLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.equalTo(self.contentView).offset(-32);
        make.top.equalTo(self.contentView).offset(30);
        make.width.mas_equalTo((KTWIDTH - 224) * 0.5);
        make.height.mas_equalTo(60);
    }];
    [self.KTLeftScoreAddButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.KTLeftScoreLabel);
        make.top.equalTo(self.KTLeftScoreLabel.mas_bottom).offset(20);
        make.width.mas_equalTo((KTWIDTH - 224) * 0.5);
        make.height.mas_equalTo(30);
    }];
    [self.KTLeftScoreReduceButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.KTLeftScoreLabel);
        make.top.equalTo(self.KTLeftScoreAddButton.mas_bottom).offset(20);
        make.width.mas_equalTo((KTWIDTH - 224) * 0.5);
        make.height.mas_equalTo(30);
    }];
}
#pragma mark - actions
- (void)KTScorerRefresh:(UIButton *)sender{
    if (sender.tag == 99) {
        self.KTModel.KTRightscore++;
        self.KTRightScoreLabel.text = [NSString stringWithFormat:@"%ld",_KTModel.KTRightscore];
    }else if (sender.tag == 100){
        if (self.KTModel.KTRightscore > 0) {
            self.KTModel.KTRightscore--;
            self.KTRightScoreLabel.text = [NSString stringWithFormat:@"%ld",_KTModel.KTRightscore];
        }
    }else if (sender.tag == 101){
        self.KTModel.KTLeftscore++;
        self.KTLeftScoreLabel.text = [NSString stringWithFormat:@"%ld",_KTModel.KTLeftscore];
    }else if (sender.tag == 102){
        if (self.KTModel.KTLeftscore > 0) {
        self.KTModel.KTLeftscore--;
        self.KTLeftScoreLabel.text = [NSString stringWithFormat:@"%ld",_KTModel.KTLeftscore];
        }
    }
}
- (void)setKTModel:(KTScorecardViewModel *)KTModel{
    _KTModel = KTModel;
    self.KTRightScoreLabel.text = [NSString stringWithFormat:@"%ld",_KTModel.KTRightscore];
    self.KTLeftScoreLabel.text = [NSString stringWithFormat:@"%ld",_KTModel.KTLeftscore];
}
#pragma mark - 属性懒加载
- (UILabel *)KTRightScoreLabel{
    if (!_KTRightScoreLabel) {
        _KTRightScoreLabel = [[UILabel alloc] init];
        _KTRightScoreLabel.backgroundColor = KTH_Color(0, 204, 131, 1);
        _KTRightScoreLabel.textColor = [UIColor whiteColor];
        _KTRightScoreLabel.font = [UIFont boldSystemFontOfSize:30];
        _KTRightScoreLabel.textAlignment = NSTextAlignmentCenter;
        _KTRightScoreLabel.layer.cornerRadius = 8.0f;
        _KTRightScoreLabel.layer.masksToBounds = YES;
    }
    return _KTRightScoreLabel;
}
- (UIButton *)KTRightScoreAddButton{
    if (!_KTRightScoreAddButton) {
        _KTRightScoreAddButton = [[UIButton alloc] init];
        _KTRightScoreAddButton.titleLabel.font = [UIFont boldSystemFontOfSize:22];
        _KTRightScoreAddButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_KTRightScoreAddButton setTitle:@"+1" forState:UIControlStateNormal];
        [_KTRightScoreAddButton setTitleColor:[UIColor systemGreenColor] forState:UIControlStateNormal];
        _KTRightScoreAddButton.layer.cornerRadius = 6.0f;
        _KTRightScoreAddButton.layer.masksToBounds = YES;
        _KTRightScoreAddButton.layer.borderColor = [UIColor grayColor].CGColor;
        _KTRightScoreAddButton.layer.borderWidth = 1.5f;
        _KTRightScoreAddButton.tag = 99;
        [_KTRightScoreAddButton addTarget:self action:@selector(KTScorerRefresh:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _KTRightScoreAddButton;
}
- (UIButton *)KTRightScoreReduceButton{
    if (!_KTRightScoreReduceButton) {
        _KTRightScoreReduceButton = [[UIButton alloc] init];
        [_KTRightScoreReduceButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        _KTRightScoreReduceButton.titleLabel.font = [UIFont boldSystemFontOfSize:22];
        _KTRightScoreReduceButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_KTRightScoreReduceButton setTitle:@"-1" forState:UIControlStateNormal];
        _KTRightScoreReduceButton.layer.cornerRadius = 6.0f;
        _KTRightScoreReduceButton.layer.masksToBounds = YES;
        _KTRightScoreReduceButton.layer.borderColor = [UIColor grayColor].CGColor;
        _KTRightScoreReduceButton.layer.borderWidth = 1.5f;
        _KTRightScoreReduceButton.tag = 100;
        [_KTRightScoreReduceButton addTarget:self action:@selector(KTScorerRefresh:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _KTRightScoreReduceButton;
}
- (UILabel *)KTVSLabel{
    if (!_KTVSLabel) {
        _KTVSLabel = [[UILabel alloc] init];
        _KTVSLabel.textColor = KTH_Color(0, 204, 131, 1);
        _KTVSLabel.font = [UIFont boldSystemFontOfSize:38];
        _KTVSLabel.textAlignment = NSTextAlignmentCenter;
        _KTVSLabel.text = @":";
    }
    return _KTVSLabel;
}
- (UILabel *)KTLeftScoreLabel{
    if (!_KTLeftScoreLabel) {
        _KTLeftScoreLabel = [[UILabel alloc] init];
        _KTLeftScoreLabel.backgroundColor = KTH_Color(0, 204, 131, 1);
        _KTLeftScoreLabel.textColor = [UIColor whiteColor];
        _KTLeftScoreLabel.font = [UIFont boldSystemFontOfSize:30];
        _KTLeftScoreLabel.textAlignment = NSTextAlignmentCenter;
        _KTLeftScoreLabel.layer.cornerRadius = 8.0f;
        _KTLeftScoreLabel.layer.masksToBounds = YES;
    }
    return _KTLeftScoreLabel;
}
- (UIButton *)KTLeftScoreAddButton{
    if (!_KTLeftScoreAddButton) {
        _KTLeftScoreAddButton = [[UIButton alloc] init];
        [_KTLeftScoreAddButton setTitleColor:[UIColor systemGreenColor] forState:UIControlStateNormal];
        _KTLeftScoreAddButton.titleLabel.font = [UIFont boldSystemFontOfSize:22];
        _KTLeftScoreAddButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_KTLeftScoreAddButton setTitle:@"+1" forState:UIControlStateNormal];
        _KTLeftScoreAddButton.layer.cornerRadius = 6.0f;
        _KTLeftScoreAddButton.layer.masksToBounds = YES;
        _KTLeftScoreAddButton.layer.borderColor = [UIColor grayColor].CGColor;
        _KTLeftScoreAddButton.layer.borderWidth = 1.5f;
        _KTLeftScoreAddButton.tag = 101;
        [_KTLeftScoreAddButton addTarget:self action:@selector(KTScorerRefresh:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _KTLeftScoreAddButton;
}
- (UIButton *)KTLeftScoreReduceButton{
    if (!_KTLeftScoreReduceButton) {
        _KTLeftScoreReduceButton = [[UIButton alloc] init];
        [_KTLeftScoreReduceButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
      _KTLeftScoreReduceButton.titleLabel.font = [UIFont boldSystemFontOfSize:22];
        _KTLeftScoreReduceButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_KTLeftScoreReduceButton setTitle:@"-1" forState:UIControlStateNormal];
        _KTLeftScoreReduceButton.layer.cornerRadius = 6.0f;
        _KTLeftScoreReduceButton.layer.masksToBounds = YES;
        _KTLeftScoreReduceButton.layer.borderColor = [UIColor grayColor].CGColor;
        _KTLeftScoreReduceButton.layer.borderWidth = 1.5f;
        _KTLeftScoreReduceButton.tag = 102;
        [_KTLeftScoreReduceButton addTarget:self action:@selector(KTScorerRefresh:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _KTLeftScoreReduceButton;
}
@end
