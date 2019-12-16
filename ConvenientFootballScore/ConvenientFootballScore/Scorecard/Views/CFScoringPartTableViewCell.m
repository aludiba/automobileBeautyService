//
//  CFScoringPartTableViewCell.m
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import "CFScoringPartTableViewCell.h"
#import "CFScorecardViewModel.h"

@interface CFScoringPartTableViewCell()
@property(nonatomic, strong)UILabel *CFRightScoreLabel;//右边得分
@property(nonatomic, strong)UIButton *CFRightScoreAddButton;//右边得分按钮
@property(nonatomic, strong)UIButton *CFRightScoreReduceButton;//右边减分按钮

@property(nonatomic, strong)UILabel *CFVSLabel;//VS标识

@property(nonatomic, strong)UILabel *CFLeftScoreLabel;//左边得分
@property(nonatomic, strong)UIButton *CFLeftScoreAddButton;//左边得分按钮
@property(nonatomic, strong)UIButton *CFLeftScoreReduceButton;//左边减分按钮
@end
@implementation CFScoringPartTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self CFSetContentView];
    }
    return self;
}
#pragma mark - action
- (void)CFSetContentView{
    [self.contentView addSubview:self.CFRightScoreLabel];
    [self.contentView addSubview:self.CFRightScoreAddButton];
    [self.contentView addSubview:self.CFRightScoreReduceButton];
    [self.contentView addSubview:self.CFVSLabel];
    [self.contentView addSubview:self.CFLeftScoreLabel];
    [self.contentView addSubview:self.CFLeftScoreAddButton];
    [self.contentView addSubview:self.CFLeftScoreReduceButton];
    
    [self.CFRightScoreLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(32);
        make.top.equalTo(self.contentView).offset(30);
        make.width.mas_equalTo((CFWIDTH - 224) * 0.5);
        make.height.mas_equalTo(60);
    }];
    [self.CFRightScoreAddButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.CFRightScoreLabel);
        make.top.equalTo(self.CFRightScoreLabel.mas_bottom).offset(20);
        make.width.mas_equalTo((CFWIDTH - 224) * 0.5);
        make.height.mas_equalTo(30);
    }];
    [self.CFRightScoreReduceButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.CFRightScoreLabel);
        make.top.equalTo(self.CFRightScoreAddButton.mas_bottom).offset(20);
        make.width.mas_equalTo((CFWIDTH - 224) * 0.5);
        make.height.mas_equalTo(30);
        make.bottom.equalTo(self.contentView).offset(-30);
    }];
    [self.CFVSLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.contentView);
    make.centerY.equalTo(self.CFRightScoreLabel);
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(40);
    }];
    [self.CFLeftScoreLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.equalTo(self.contentView).offset(-32);
        make.top.equalTo(self.contentView).offset(30);
        make.width.mas_equalTo((CFWIDTH - 224) * 0.5);
        make.height.mas_equalTo(60);
    }];
    [self.CFLeftScoreAddButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.CFLeftScoreLabel);
        make.top.equalTo(self.CFLeftScoreLabel.mas_bottom).offset(20);
        make.width.mas_equalTo((CFWIDTH - 224) * 0.5);
        make.height.mas_equalTo(30);
    }];
    [self.CFLeftScoreReduceButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.CFLeftScoreLabel);
        make.top.equalTo(self.CFLeftScoreAddButton.mas_bottom).offset(20);
        make.width.mas_equalTo((CFWIDTH - 224) * 0.5);
        make.height.mas_equalTo(30);
    }];
}
#pragma mark - actions
- (void)CFScorerRefresh:(UIButton *)sender{
    if (sender.tag == 99) {
        self.CFModel.CFRightscore++;
        self.CFRightScoreLabel.text = [NSString stringWithFormat:@"%ld",_CFModel.CFRightscore];
    }else if (sender.tag == 100){
        if (self.CFModel.CFRightscore > 0) {
            self.CFModel.CFRightscore--;
            self.CFRightScoreLabel.text = [NSString stringWithFormat:@"%ld",_CFModel.CFRightscore];
        }
    }else if (sender.tag == 101){
        self.CFModel.CFLeftscore++;
        self.CFLeftScoreLabel.text = [NSString stringWithFormat:@"%ld",_CFModel.CFLeftscore];
    }else if (sender.tag == 102){
        if (self.CFModel.CFLeftscore > 0) {
        self.CFModel.CFLeftscore--;
        self.CFLeftScoreLabel.text = [NSString stringWithFormat:@"%ld",_CFModel.CFLeftscore];
        }
    }
}
- (void)setCFModel:(CFScorecardViewModel *)CFModel{
    _CFModel = CFModel;
    self.CFRightScoreLabel.text = [NSString stringWithFormat:@"%ld",_CFModel.CFRightscore];
    self.CFLeftScoreLabel.text = [NSString stringWithFormat:@"%ld",_CFModel.CFLeftscore];
}
#pragma mark - 属性懒加载
- (UILabel *)CFRightScoreLabel{
    if (!_CFRightScoreLabel) {
        _CFRightScoreLabel = [[UILabel alloc] init];
        _CFRightScoreLabel.backgroundColor = CFH_Color(0, 204, 131, 1);
        _CFRightScoreLabel.textColor = [UIColor whiteColor];
        _CFRightScoreLabel.font = [UIFont boldSystemFontOfSize:30];
        _CFRightScoreLabel.textAlignment = NSTextAlignmentCenter;
        _CFRightScoreLabel.layer.cornerRadius = 8.0f;
        _CFRightScoreLabel.layer.masksToBounds = YES;
    }
    return _CFRightScoreLabel;
}
- (UIButton *)CFRightScoreAddButton{
    if (!_CFRightScoreAddButton) {
        _CFRightScoreAddButton = [[UIButton alloc] init];
        _CFRightScoreAddButton.titleLabel.font = [UIFont boldSystemFontOfSize:22];
        _CFRightScoreAddButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_CFRightScoreAddButton setTitle:@"+1" forState:UIControlStateNormal];
        [_CFRightScoreAddButton setTitleColor:[UIColor systemGreenColor] forState:UIControlStateNormal];
        _CFRightScoreAddButton.layer.cornerRadius = 6.0f;
        _CFRightScoreAddButton.layer.masksToBounds = YES;
        _CFRightScoreAddButton.layer.borderColor = [UIColor grayColor].CGColor;
        _CFRightScoreAddButton.layer.borderWidth = 1.5f;
        _CFRightScoreAddButton.tag = 99;
        [_CFRightScoreAddButton addTarget:self action:@selector(CFScorerRefresh:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _CFRightScoreAddButton;
}
- (UIButton *)CFRightScoreReduceButton{
    if (!_CFRightScoreReduceButton) {
        _CFRightScoreReduceButton = [[UIButton alloc] init];
        [_CFRightScoreReduceButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        _CFRightScoreReduceButton.titleLabel.font = [UIFont boldSystemFontOfSize:22];
        _CFRightScoreReduceButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_CFRightScoreReduceButton setTitle:@"-1" forState:UIControlStateNormal];
        _CFRightScoreReduceButton.layer.cornerRadius = 6.0f;
        _CFRightScoreReduceButton.layer.masksToBounds = YES;
        _CFRightScoreReduceButton.layer.borderColor = [UIColor grayColor].CGColor;
        _CFRightScoreReduceButton.layer.borderWidth = 1.5f;
        _CFRightScoreReduceButton.tag = 100;
        [_CFRightScoreReduceButton addTarget:self action:@selector(CFScorerRefresh:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _CFRightScoreReduceButton;
}
- (UILabel *)CFVSLabel{
    if (!_CFVSLabel) {
        _CFVSLabel = [[UILabel alloc] init];
        _CFVSLabel.textColor = CFH_Color(0, 204, 131, 1);
        _CFVSLabel.font = [UIFont boldSystemFontOfSize:38];
        _CFVSLabel.textAlignment = NSTextAlignmentCenter;
        _CFVSLabel.text = @":";
    }
    return _CFVSLabel;
}
- (UILabel *)CFLeftScoreLabel{
    if (!_CFLeftScoreLabel) {
        _CFLeftScoreLabel = [[UILabel alloc] init];
        _CFLeftScoreLabel.backgroundColor = CFH_Color(0, 204, 131, 1);
        _CFLeftScoreLabel.textColor = [UIColor whiteColor];
        _CFLeftScoreLabel.font = [UIFont boldSystemFontOfSize:30];
        _CFLeftScoreLabel.textAlignment = NSTextAlignmentCenter;
        _CFLeftScoreLabel.layer.cornerRadius = 8.0f;
        _CFLeftScoreLabel.layer.masksToBounds = YES;
    }
    return _CFLeftScoreLabel;
}
- (UIButton *)CFLeftScoreAddButton{
    if (!_CFLeftScoreAddButton) {
        _CFLeftScoreAddButton = [[UIButton alloc] init];
        [_CFLeftScoreAddButton setTitleColor:[UIColor systemGreenColor] forState:UIControlStateNormal];
        _CFLeftScoreAddButton.titleLabel.font = [UIFont boldSystemFontOfSize:22];
        _CFLeftScoreAddButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_CFLeftScoreAddButton setTitle:@"+1" forState:UIControlStateNormal];
        _CFLeftScoreAddButton.layer.cornerRadius = 6.0f;
        _CFLeftScoreAddButton.layer.masksToBounds = YES;
        _CFLeftScoreAddButton.layer.borderColor = [UIColor grayColor].CGColor;
        _CFLeftScoreAddButton.layer.borderWidth = 1.5f;
        _CFLeftScoreAddButton.tag = 101;
        [_CFLeftScoreAddButton addTarget:self action:@selector(CFScorerRefresh:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _CFLeftScoreAddButton;
}
- (UIButton *)CFLeftScoreReduceButton{
    if (!_CFLeftScoreReduceButton) {
        _CFLeftScoreReduceButton = [[UIButton alloc] init];
        [_CFLeftScoreReduceButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
      _CFLeftScoreReduceButton.titleLabel.font = [UIFont boldSystemFontOfSize:22];
        _CFLeftScoreReduceButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_CFLeftScoreReduceButton setTitle:@"-1" forState:UIControlStateNormal];
        _CFLeftScoreReduceButton.layer.cornerRadius = 6.0f;
        _CFLeftScoreReduceButton.layer.masksToBounds = YES;
        _CFLeftScoreReduceButton.layer.borderColor = [UIColor grayColor].CGColor;
        _CFLeftScoreReduceButton.layer.borderWidth = 1.5f;
        _CFLeftScoreReduceButton.tag = 102;
        [_CFLeftScoreReduceButton addTarget:self action:@selector(CFScorerRefresh:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _CFLeftScoreReduceButton;
}
@end
