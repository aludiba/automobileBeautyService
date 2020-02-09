//
//  WBYBKOKRecordTableViewCell.m
//  PocketScout
//
//  Created by bykj on 2019/11/14.
//  Copyright © 2019 com. All rights reserved.
//

#import "WBYBKOKRecordTableViewCell.h"
#import "WBYBKOKScorecardModel.h"
@interface WBYBKOKRecordTableViewCell()
@property(nonatomic, strong)UIView *WBYBKOKBackView;//背景板
@property(nonatomic, strong)UILabel *WBYBKOKTitleLabel;//标题
@property(nonatomic, strong)UIButton *WBYBKOKDeleteButton;//删除
@property(nonatomic, strong)UILabel *WBYBKOKEndTimeLabel;//结束时间
@property(nonatomic, strong)UILabel *WBYBKOKElapsedTimeLabel;//总共用时
@property(nonatomic, strong)UILabel *WBYBKOKRightNameLabel;//右边队伍名称
@property(nonatomic, strong)UILabel *WBYBKOKRightScoreLabel;//右边队伍得分
@property(nonatomic, strong)UILabel *WBYBKOKVSLabel;//VS标识
@property(nonatomic, strong)UILabel *WBYBKOKLeftNameLabel;//左边队伍名称
@property(nonatomic, strong)UILabel *WBYBKOKLeftScoreLabel;//左边队伍得分
@end
@implementation WBYBKOKRecordTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self WBYBKOKSetContentView];
    }
    return self;
}
#pragma mark - actions
- (void)WBYBKOKSetContentView{
    self.contentView.backgroundColor = [UIColor cyanColor];
    [self.contentView addSubview:self.WBYBKOKBackView];
    [self.WBYBKOKBackView addSubview:self.WBYBKOKTitleLabel];
    [self.WBYBKOKBackView addSubview:self.WBYBKOKDeleteButton];
    [self.WBYBKOKBackView addSubview:self.WBYBKOKEndTimeLabel];
    [self.WBYBKOKBackView addSubview:self.WBYBKOKElapsedTimeLabel];
    [self.WBYBKOKBackView addSubview:self.WBYBKOKRightNameLabel];
    [self.WBYBKOKBackView addSubview:self.WBYBKOKRightScoreLabel];
    [self.WBYBKOKBackView addSubview:self.WBYBKOKVSLabel];
    [self.WBYBKOKBackView addSubview:self.WBYBKOKLeftNameLabel];
    [self.WBYBKOKBackView addSubview:self.WBYBKOKLeftScoreLabel];
    
    [self.WBYBKOKBackView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(20);
        make.top.equalTo(self.contentView).offset(10);
        make.trailing.equalTo(self.contentView).offset(-20);
        make.height.mas_equalTo(274);
        make.bottom.equalTo(self.contentView).offset(-10);
    }];
    [self.WBYBKOKTitleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.WBYBKOKBackView);
        make.top.equalTo(self.WBYBKOKBackView).offset(20);
        make.width.mas_equalTo(WBYBKOKWIDTH - 16 - 16 - 26 - 16);
        make.height.mas_equalTo(50);
    }];
    [self.WBYBKOKDeleteButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.WBYBKOKTitleLabel);
        make.trailing.equalTo(self.WBYBKOKBackView).offset(-16);
        make.width.mas_equalTo(26);
        make.height.mas_equalTo(26);
    }];
    [self.WBYBKOKEndTimeLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.WBYBKOKTitleLabel.mas_bottom).offset(20);
        make.leading.equalTo(self.WBYBKOKBackView).offset(16);
        make.trailing.equalTo(self.WBYBKOKBackView).offset(-16);
        make.height.mas_equalTo(20);
    }];
    [self.WBYBKOKElapsedTimeLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.WBYBKOKEndTimeLabel.mas_bottom).offset(20);
        make.leading.equalTo(self.WBYBKOKBackView).offset(16);
        make.trailing.equalTo(self.WBYBKOKBackView).offset(-16);
        make.height.mas_equalTo(20);
    }];
    [self.WBYBKOKRightNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.WBYBKOKElapsedTimeLabel.mas_bottom).offset(20);
        make.leading.equalTo(self.WBYBKOKBackView).offset(16);
        make.width.mas_equalTo((WBYBKOKWIDTH - 32 - 60) * 0.5);
        make.height.mas_equalTo(20);
    }];
    [self.WBYBKOKRightScoreLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.WBYBKOKRightNameLabel.mas_bottom).offset(20);
               make.centerX.equalTo(self.WBYBKOKRightNameLabel);
               make.width.mas_equalTo((WBYBKOKWIDTH - 32 - 60) * 0.5);
               make.height.mas_equalTo(44);
    }];
    [self.WBYBKOKVSLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.WBYBKOKRightScoreLabel);
        make.centerX.equalTo(self.WBYBKOKBackView);
        make.width.mas_equalTo(44);
        make.height.mas_equalTo(44);
    }];
    [self.WBYBKOKLeftNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.WBYBKOKElapsedTimeLabel.mas_bottom).offset(20);
        make.trailing.equalTo(self.WBYBKOKBackView).offset(-16);
        make.width.mas_equalTo((WBYBKOKWIDTH - 32 - 60) * 0.5);
        make.height.mas_equalTo(20);
    }];
    [self.WBYBKOKLeftScoreLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.WBYBKOKLeftNameLabel.mas_bottom).offset(20);
               make.centerX.equalTo(self.WBYBKOKLeftNameLabel);
               make.width.mas_equalTo((WBYBKOKWIDTH - 32 - 60) * 0.5);
               make.height.mas_equalTo(44);
    }];
}
- (void)setWBYBKOKModel:(WBYBKOKScorecardModel *)WBYBKOKModel{
    _WBYBKOKModel = WBYBKOKModel;
    self.WBYBKOKTitleLabel.text = _WBYBKOKModel.WBYBKOKNatureCompetition;
    CGSize size = [self.WBYBKOKTitleLabel sizeThatFits:CGSizeMake(MAXFLOAT, 30)];
    [self.WBYBKOKTitleLabel mas_updateConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(size.width);
    }];
    [self.WBYBKOKTitleLabel layoutIfNeeded];
    [self.contentView layoutSubviews];
    
    self.WBYBKOKEndTimeLabel.text = [NSString stringWithFormat:@"%@ %@",NSLocalizedString(@"结束时间", nil),_WBYBKOKModel.WBYBKOKEndTimeString];
    self.WBYBKOKElapsedTimeLabel.text = [NSString stringWithFormat:@"%@ %@",NSLocalizedString(@"比赛用时", nil),_WBYBKOKModel.WBYBKOKTotalTimeString];
    self.WBYBKOKRightNameLabel.text = _WBYBKOKModel.WBYBKOKTeamRightName;
    self.WBYBKOKRightScoreLabel.text = [NSString stringWithFormat:@"%ld",_WBYBKOKModel.WBYBKOKTeamRightScore];
    self.WBYBKOKLeftNameLabel.text = _WBYBKOKModel.WBYBKOKTeamLeftName;
    self.WBYBKOKLeftScoreLabel.text = [NSString stringWithFormat:@"%ld",_WBYBKOKModel.WBYBKOKTeamLeftScore];
}
#pragma mark - 删除
- (void)WBYBKOKDeleteButton:(UIButton *)sender{
    if (self.WBYBKOKRecordDeleteB) {
        self.WBYBKOKRecordDeleteB(self);
    }
}
#pragma mark - 属性懒加载
- (UIView *)WBYBKOKBackView{
    if (!_WBYBKOKBackView) {
        _WBYBKOKBackView = [[UIView alloc] init];
        _WBYBKOKBackView.backgroundColor = [UIColor whiteColor];
        _WBYBKOKBackView.layer.cornerRadius = 4.0f;
        _WBYBKOKBackView.layer.masksToBounds = YES;
    }
    return _WBYBKOKBackView;
}
- (UILabel *)WBYBKOKTitleLabel{
    if (!_WBYBKOKTitleLabel) {
        _WBYBKOKTitleLabel = [[UILabel alloc] init];
        _WBYBKOKTitleLabel.textColor = [UIColor redColor];
        _WBYBKOKTitleLabel.font = [UIFont boldSystemFontOfSize:40];
        _WBYBKOKTitleLabel.numberOfLines = 0;
    }
    return _WBYBKOKTitleLabel;
}
- (UIButton *)WBYBKOKDeleteButton{
    if (!_WBYBKOKDeleteButton) {
        _WBYBKOKDeleteButton = [[UIButton alloc] init];
        [_WBYBKOKDeleteButton setImage:[UIImage imageNamed:@"WBYBKOK_delete"] forState:UIControlStateNormal];
        [_WBYBKOKDeleteButton addTarget:self action:@selector(WBYBKOKDeleteButton:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _WBYBKOKDeleteButton;
}
- (UILabel *)WBYBKOKEndTimeLabel{
    if (!_WBYBKOKEndTimeLabel) {
        _WBYBKOKEndTimeLabel = [[UILabel alloc] init];
        _WBYBKOKEndTimeLabel.textColor = [UIColor blackColor];
        _WBYBKOKEndTimeLabel.font = [UIFont systemFontOfSize:15];
        _WBYBKOKEndTimeLabel.textAlignment = NSTextAlignmentCenter;
        _WBYBKOKEndTimeLabel.numberOfLines = 0;
    }
    return _WBYBKOKEndTimeLabel;
}
- (UILabel *)WBYBKOKElapsedTimeLabel{
    if (!_WBYBKOKElapsedTimeLabel) {
        _WBYBKOKElapsedTimeLabel = [[UILabel alloc] init];
        _WBYBKOKElapsedTimeLabel.textColor = [UIColor blackColor];
        _WBYBKOKElapsedTimeLabel.font = [UIFont systemFontOfSize:15];
        _WBYBKOKElapsedTimeLabel.textAlignment = NSTextAlignmentCenter;
        _WBYBKOKElapsedTimeLabel.numberOfLines = 0;
    }
    return _WBYBKOKElapsedTimeLabel;
}
- (UILabel *)WBYBKOKRightNameLabel{
    if (!_WBYBKOKRightNameLabel) {
        _WBYBKOKRightNameLabel = [[UILabel alloc] init];
        _WBYBKOKRightNameLabel.textColor = [UIColor blackColor];
        _WBYBKOKRightNameLabel.font = [UIFont systemFontOfSize:18];
        _WBYBKOKRightNameLabel.textAlignment = NSTextAlignmentCenter;
        _WBYBKOKRightNameLabel.numberOfLines = 0;
    }
    return _WBYBKOKRightNameLabel;
}
- (UILabel *)WBYBKOKRightScoreLabel{
    if (!_WBYBKOKRightScoreLabel) {
        _WBYBKOKRightScoreLabel = [[UILabel alloc] init];
        _WBYBKOKRightScoreLabel.textColor = [UIColor redColor];
        _WBYBKOKRightScoreLabel.font = [UIFont systemFontOfSize:30];
        _WBYBKOKRightScoreLabel.textAlignment = NSTextAlignmentCenter;
        _WBYBKOKRightScoreLabel.numberOfLines = 0;
    }
    return _WBYBKOKRightScoreLabel;
}
- (UILabel *)WBYBKOKVSLabel{
    if (!_WBYBKOKVSLabel) {
        _WBYBKOKVSLabel = [[UILabel alloc] init];
        _WBYBKOKVSLabel.textColor = [UIColor blackColor];
        _WBYBKOKVSLabel.font = [UIFont boldSystemFontOfSize:30];
        _WBYBKOKVSLabel.textAlignment = NSTextAlignmentCenter;
        _WBYBKOKVSLabel.numberOfLines = 0;
        _WBYBKOKVSLabel.text = @":";
    }
    return _WBYBKOKVSLabel;
}
- (UILabel *)WBYBKOKLeftNameLabel{
    if (!_WBYBKOKLeftNameLabel) {
        _WBYBKOKLeftNameLabel = [[UILabel alloc] init];
        _WBYBKOKLeftNameLabel.textColor = [UIColor blackColor];
        _WBYBKOKLeftNameLabel.font = [UIFont systemFontOfSize:18];
        _WBYBKOKLeftNameLabel.textAlignment = NSTextAlignmentCenter;
        _WBYBKOKLeftNameLabel.numberOfLines = 0;
    }
    return _WBYBKOKLeftNameLabel;
}
- (UILabel *)WBYBKOKLeftScoreLabel{
    if (!_WBYBKOKLeftScoreLabel) {
        _WBYBKOKLeftScoreLabel = [[UILabel alloc] init];
        _WBYBKOKLeftScoreLabel.textColor = [UIColor redColor];
        _WBYBKOKLeftScoreLabel.font = [UIFont systemFontOfSize:30];
        _WBYBKOKLeftScoreLabel.textAlignment = NSTextAlignmentCenter;
        _WBYBKOKLeftScoreLabel.numberOfLines = 0;
    }
    return _WBYBKOKLeftScoreLabel;
}
@end
