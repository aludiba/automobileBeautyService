//
//  ADRecordTableViewCell.m
//  PocketScout
//
//  Created by bykj on 2019/11/14.
//  Copyright © 2019 com. All rights reserved.
//

#import "ADRecordTableViewCell.h"
#import "ADScorecardModel.h"
@interface ADRecordTableViewCell()
@property(nonatomic, strong)UIView *ADBackView;//背景板
@property(nonatomic, strong)UILabel *ADTitleLabel;//标题
@property(nonatomic, strong)UIButton *ADDeleteButton;//删除
@property(nonatomic, strong)UILabel *ADEndTimeLabel;//结束时间
@property(nonatomic, strong)UILabel *ADElapsedTimeLabel;//总共用时
@property(nonatomic, strong)UILabel *ADRightNameLabel;//右边队伍名称
@property(nonatomic, strong)UILabel *ADRightScoreLabel;//右边队伍得分
@property(nonatomic, strong)UILabel *ADVSLabel;//VS标识
@property(nonatomic, strong)UILabel *ADLeftNameLabel;//左边队伍名称
@property(nonatomic, strong)UILabel *ADLeftScoreLabel;//左边队伍得分
@end
@implementation ADRecordTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self ADSetContentView];
    }
    return self;
}
#pragma mark - actions
- (void)ADSetContentView{
    self.contentView.backgroundColor = [UIColor cyanColor];
    [self.contentView addSubview:self.ADBackView];
    [self.ADBackView addSubview:self.ADTitleLabel];
    [self.ADBackView addSubview:self.ADDeleteButton];
    [self.ADBackView addSubview:self.ADEndTimeLabel];
    [self.ADBackView addSubview:self.ADElapsedTimeLabel];
    [self.ADBackView addSubview:self.ADRightNameLabel];
    [self.ADBackView addSubview:self.ADRightScoreLabel];
    [self.ADBackView addSubview:self.ADVSLabel];
    [self.ADBackView addSubview:self.ADLeftNameLabel];
    [self.ADBackView addSubview:self.ADLeftScoreLabel];
    
    [self.ADBackView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(20);
        make.top.equalTo(self.contentView).offset(10);
        make.trailing.equalTo(self.contentView).offset(-20);
        make.height.mas_equalTo(274);
        make.bottom.equalTo(self.contentView).offset(-10);
    }];
    [self.ADTitleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.ADBackView);
        make.top.equalTo(self.ADBackView).offset(20);
        make.width.mas_equalTo(ADWIDTH - 16 - 16 - 26 - 16);
        make.height.mas_equalTo(50);
    }];
    [self.ADDeleteButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.ADTitleLabel);
        make.trailing.equalTo(self.ADBackView).offset(-16);
        make.width.mas_equalTo(26);
        make.height.mas_equalTo(26);
    }];
    [self.ADEndTimeLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.ADTitleLabel.mas_bottom).offset(20);
        make.leading.equalTo(self.ADBackView).offset(16);
        make.trailing.equalTo(self.ADBackView).offset(-16);
        make.height.mas_equalTo(20);
    }];
    [self.ADElapsedTimeLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.ADEndTimeLabel.mas_bottom).offset(20);
        make.leading.equalTo(self.ADBackView).offset(16);
        make.trailing.equalTo(self.ADBackView).offset(-16);
        make.height.mas_equalTo(20);
    }];
    [self.ADRightNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.ADElapsedTimeLabel.mas_bottom).offset(20);
        make.leading.equalTo(self.ADBackView).offset(16);
        make.width.mas_equalTo((ADWIDTH - 32 - 60) * 0.5);
        make.height.mas_equalTo(20);
    }];
    [self.ADRightScoreLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.ADRightNameLabel.mas_bottom).offset(20);
               make.centerX.equalTo(self.ADRightNameLabel);
               make.width.mas_equalTo((ADWIDTH - 32 - 60) * 0.5);
               make.height.mas_equalTo(44);
    }];
    [self.ADVSLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.ADRightScoreLabel);
        make.centerX.equalTo(self.ADBackView);
        make.width.mas_equalTo(44);
        make.height.mas_equalTo(44);
    }];
    [self.ADLeftNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.ADElapsedTimeLabel.mas_bottom).offset(20);
        make.trailing.equalTo(self.ADBackView).offset(-16);
        make.width.mas_equalTo((ADWIDTH - 32 - 60) * 0.5);
        make.height.mas_equalTo(20);
    }];
    [self.ADLeftScoreLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.ADLeftNameLabel.mas_bottom).offset(20);
               make.centerX.equalTo(self.ADLeftNameLabel);
               make.width.mas_equalTo((ADWIDTH - 32 - 60) * 0.5);
               make.height.mas_equalTo(44);
    }];
}
- (void)setADModel:(ADScorecardModel *)ADModel{
    _ADModel = ADModel;
    self.ADTitleLabel.text = _ADModel.ADNatureCompetition;
    CGSize size = [self.ADTitleLabel sizeThatFits:CGSizeMake(MAXFLOAT, 30)];
    [self.ADTitleLabel mas_updateConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(size.width);
    }];
    [self.ADTitleLabel layoutIfNeeded];
    [self.contentView layoutSubviews];
    
    self.ADEndTimeLabel.text = [NSString stringWithFormat:@"%@ %@",@"End time",_ADModel.ADEndTimeString];
    self.ADElapsedTimeLabel.text = [NSString stringWithFormat:@"%@ %@",@"Race time",_ADModel.ADTotalTimeString];
    self.ADRightNameLabel.text = _ADModel.ADTeamRightName;
    self.ADRightScoreLabel.text = [NSString stringWithFormat:@"%ld",_ADModel.ADTeamRightScore];
    self.ADLeftNameLabel.text = _ADModel.ADTeamLeftName;
    self.ADLeftScoreLabel.text = [NSString stringWithFormat:@"%ld",_ADModel.ADTeamLeftScore];
}
#pragma mark - 删除
- (void)ADDeleteButton:(UIButton *)sender{
    if (self.ADRecordDeleteB) {
        self.ADRecordDeleteB(self);
    }
}
#pragma mark - 属性懒加载
- (UIView *)ADBackView{
    if (!_ADBackView) {
        _ADBackView = [[UIView alloc] init];
        _ADBackView.backgroundColor = [UIColor systemOrangeColor];
        _ADBackView.layer.cornerRadius = 24.0f;
        _ADBackView.layer.masksToBounds = YES;
    }
    return _ADBackView;
}
- (UILabel *)ADTitleLabel{
    if (!_ADTitleLabel) {
        _ADTitleLabel = [[UILabel alloc] init];
        _ADTitleLabel.textColor = [UIColor systemRedColor];
        _ADTitleLabel.font = [UIFont boldSystemFontOfSize:40];
        _ADTitleLabel.numberOfLines = 0;
    }
    return _ADTitleLabel;
}
- (UIButton *)ADDeleteButton{
    if (!_ADDeleteButton) {
        _ADDeleteButton = [[UIButton alloc] init];
        [_ADDeleteButton setImage:[UIImage imageNamed:@"AD_delete"] forState:UIControlStateNormal];
        [_ADDeleteButton addTarget:self action:@selector(ADDeleteButton:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _ADDeleteButton;
}
- (UILabel *)ADEndTimeLabel{
    if (!_ADEndTimeLabel) {
        _ADEndTimeLabel = [[UILabel alloc] init];
        _ADEndTimeLabel.textColor = [UIColor blackColor];
        _ADEndTimeLabel.font = [UIFont systemFontOfSize:15];
        _ADEndTimeLabel.textAlignment = NSTextAlignmentCenter;
        _ADEndTimeLabel.numberOfLines = 0;
    }
    return _ADEndTimeLabel;
}
- (UILabel *)ADElapsedTimeLabel{
    if (!_ADElapsedTimeLabel) {
        _ADElapsedTimeLabel = [[UILabel alloc] init];
        _ADElapsedTimeLabel.textColor = [UIColor blackColor];
        _ADElapsedTimeLabel.font = [UIFont systemFontOfSize:15];
        _ADElapsedTimeLabel.textAlignment = NSTextAlignmentCenter;
        _ADElapsedTimeLabel.numberOfLines = 0;
    }
    return _ADElapsedTimeLabel;
}
- (UILabel *)ADRightNameLabel{
    if (!_ADRightNameLabel) {
        _ADRightNameLabel = [[UILabel alloc] init];
        _ADRightNameLabel.textColor = [UIColor blackColor];
        _ADRightNameLabel.font = [UIFont systemFontOfSize:18];
        _ADRightNameLabel.textAlignment = NSTextAlignmentCenter;
        _ADRightNameLabel.numberOfLines = 0;
    }
    return _ADRightNameLabel;
}
- (UILabel *)ADRightScoreLabel{
    if (!_ADRightScoreLabel) {
        _ADRightScoreLabel = [[UILabel alloc] init];
        _ADRightScoreLabel.textColor = [UIColor redColor];
        _ADRightScoreLabel.font = [UIFont systemFontOfSize:30];
        _ADRightScoreLabel.textAlignment = NSTextAlignmentCenter;
        _ADRightScoreLabel.numberOfLines = 0;
    }
    return _ADRightScoreLabel;
}
- (UILabel *)ADVSLabel{
    if (!_ADVSLabel) {
        _ADVSLabel = [[UILabel alloc] init];
        _ADVSLabel.textColor = [UIColor blackColor];
        _ADVSLabel.font = [UIFont boldSystemFontOfSize:30];
        _ADVSLabel.textAlignment = NSTextAlignmentCenter;
        _ADVSLabel.numberOfLines = 0;
        _ADVSLabel.text = @":";
    }
    return _ADVSLabel;
}
- (UILabel *)ADLeftNameLabel{
    if (!_ADLeftNameLabel) {
        _ADLeftNameLabel = [[UILabel alloc] init];
        _ADLeftNameLabel.textColor = [UIColor blackColor];
        _ADLeftNameLabel.font = [UIFont systemFontOfSize:18];
        _ADLeftNameLabel.textAlignment = NSTextAlignmentCenter;
        _ADLeftNameLabel.numberOfLines = 0;
    }
    return _ADLeftNameLabel;
}
- (UILabel *)ADLeftScoreLabel{
    if (!_ADLeftScoreLabel) {
        _ADLeftScoreLabel = [[UILabel alloc] init];
        _ADLeftScoreLabel.textColor = [UIColor redColor];
        _ADLeftScoreLabel.font = [UIFont systemFontOfSize:30];
        _ADLeftScoreLabel.textAlignment = NSTextAlignmentCenter;
        _ADLeftScoreLabel.numberOfLines = 0;
    }
    return _ADLeftScoreLabel;
}
@end
