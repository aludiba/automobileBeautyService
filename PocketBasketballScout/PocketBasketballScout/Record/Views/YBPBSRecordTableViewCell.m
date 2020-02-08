//
//  YBPBSRecordTableViewCell.m
//  PocketScout
//
//  Created by bykj on 2019/11/14.
//  Copyright © 2019 com. All rights reserved.
//

#import "YBPBSRecordTableViewCell.h"
#import "YBPBSScorecardModel.h"
@interface YBPBSRecordTableViewCell()
@property(nonatomic, strong)UIView *YBPBSBackView;//背景板
@property(nonatomic, strong)UILabel *YBPBSTitleLabel;//标题
@property(nonatomic, strong)UIButton *YBPBSDeleteButton;//删除
@property(nonatomic, strong)UILabel *YBPBSEndTimeLabel;//结束时间
@property(nonatomic, strong)UILabel *YBPBSElapsedTimeLabel;//总共用时
@property(nonatomic, strong)UILabel *YBPBSRightNameLabel;//右边队伍名称
@property(nonatomic, strong)UILabel *YBPBSRightScoreLabel;//右边队伍得分
@property(nonatomic, strong)UILabel *YBPBSVSLabel;//VS标识
@property(nonatomic, strong)UILabel *YBPBSLeftNameLabel;//左边队伍名称
@property(nonatomic, strong)UILabel *YBPBSLeftScoreLabel;//左边队伍得分
@end
@implementation YBPBSRecordTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self YBPBSSetContentView];
    }
    return self;
}
#pragma mark - actions
- (void)YBPBSSetContentView{
    self.contentView.backgroundColor = [UIColor cyanColor];
    [self.contentView addSubview:self.YBPBSBackView];
    [self.YBPBSBackView addSubview:self.YBPBSTitleLabel];
    [self.YBPBSBackView addSubview:self.YBPBSDeleteButton];
    [self.YBPBSBackView addSubview:self.YBPBSEndTimeLabel];
    [self.YBPBSBackView addSubview:self.YBPBSElapsedTimeLabel];
    [self.YBPBSBackView addSubview:self.YBPBSRightNameLabel];
    [self.YBPBSBackView addSubview:self.YBPBSRightScoreLabel];
    [self.YBPBSBackView addSubview:self.YBPBSVSLabel];
    [self.YBPBSBackView addSubview:self.YBPBSLeftNameLabel];
    [self.YBPBSBackView addSubview:self.YBPBSLeftScoreLabel];
    
    [self.YBPBSBackView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(20);
        make.top.equalTo(self.contentView).offset(10);
        make.trailing.equalTo(self.contentView).offset(-20);
        make.height.mas_equalTo(274);
        make.bottom.equalTo(self.contentView).offset(-10);
    }];
    [self.YBPBSTitleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.YBPBSBackView);
        make.top.equalTo(self.YBPBSBackView).offset(20);
        make.width.mas_equalTo(YBPBSWIDTH - 16 - 16 - 26 - 16);
        make.height.mas_equalTo(50);
    }];
    [self.YBPBSDeleteButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.YBPBSTitleLabel);
        make.trailing.equalTo(self.YBPBSBackView).offset(-16);
        make.width.mas_equalTo(26);
        make.height.mas_equalTo(26);
    }];
    [self.YBPBSEndTimeLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.YBPBSTitleLabel.mas_bottom).offset(20);
        make.leading.equalTo(self.YBPBSBackView).offset(16);
        make.trailing.equalTo(self.YBPBSBackView).offset(-16);
        make.height.mas_equalTo(20);
    }];
    [self.YBPBSElapsedTimeLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.YBPBSEndTimeLabel.mas_bottom).offset(20);
        make.leading.equalTo(self.YBPBSBackView).offset(16);
        make.trailing.equalTo(self.YBPBSBackView).offset(-16);
        make.height.mas_equalTo(20);
    }];
    [self.YBPBSRightNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.YBPBSElapsedTimeLabel.mas_bottom).offset(20);
        make.leading.equalTo(self.YBPBSBackView).offset(16);
        make.width.mas_equalTo((YBPBSWIDTH - 32 - 60) * 0.5);
        make.height.mas_equalTo(20);
    }];
    [self.YBPBSRightScoreLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.YBPBSRightNameLabel.mas_bottom).offset(20);
               make.centerX.equalTo(self.YBPBSRightNameLabel);
               make.width.mas_equalTo((YBPBSWIDTH - 32 - 60) * 0.5);
               make.height.mas_equalTo(44);
    }];
    [self.YBPBSVSLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.YBPBSRightScoreLabel);
        make.centerX.equalTo(self.YBPBSBackView);
        make.width.mas_equalTo(44);
        make.height.mas_equalTo(44);
    }];
    [self.YBPBSLeftNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.YBPBSElapsedTimeLabel.mas_bottom).offset(20);
        make.trailing.equalTo(self.YBPBSBackView).offset(-16);
        make.width.mas_equalTo((YBPBSWIDTH - 32 - 60) * 0.5);
        make.height.mas_equalTo(20);
    }];
    [self.YBPBSLeftScoreLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.YBPBSLeftNameLabel.mas_bottom).offset(20);
               make.centerX.equalTo(self.YBPBSLeftNameLabel);
               make.width.mas_equalTo((YBPBSWIDTH - 32 - 60) * 0.5);
               make.height.mas_equalTo(44);
    }];
}
- (void)setYBPBSModel:(YBPBSScorecardModel *)YBPBSModel{
    _YBPBSModel = YBPBSModel;
    self.YBPBSTitleLabel.text = _YBPBSModel.YBPBSNatureCompetition;
    CGSize size = [self.YBPBSTitleLabel sizeThatFits:CGSizeMake(MAXFLOAT, 30)];
    [self.YBPBSTitleLabel mas_updateConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(size.width);
    }];
    [self.YBPBSTitleLabel layoutIfNeeded];
    [self.contentView layoutSubviews];
    
    self.YBPBSEndTimeLabel.text = [NSString stringWithFormat:@"%@ %@",NSLocalizedString(@"结束时间", nil),_YBPBSModel.YBPBSEndTimeString];
    self.YBPBSElapsedTimeLabel.text = [NSString stringWithFormat:@"%@ %@",NSLocalizedString(@"比赛用时", nil),_YBPBSModel.YBPBSTotalTimeString];
    self.YBPBSRightNameLabel.text = _YBPBSModel.YBPBSTeamRightName;
    self.YBPBSRightScoreLabel.text = [NSString stringWithFormat:@"%ld",_YBPBSModel.YBPBSTeamRightScore];
    self.YBPBSLeftNameLabel.text = _YBPBSModel.YBPBSTeamLeftName;
    self.YBPBSLeftScoreLabel.text = [NSString stringWithFormat:@"%ld",_YBPBSModel.YBPBSTeamLeftScore];
}
#pragma mark - 删除
- (void)YBPBSDeleteButton:(UIButton *)sender{
    if (self.YBPBSRecordDeleteB) {
        self.YBPBSRecordDeleteB(self);
    }
}
#pragma mark - 属性懒加载
- (UIView *)YBPBSBackView{
    if (!_YBPBSBackView) {
        _YBPBSBackView = [[UIView alloc] init];
        _YBPBSBackView.backgroundColor = [UIColor whiteColor];
        _YBPBSBackView.layer.cornerRadius = 4.0f;
        _YBPBSBackView.layer.masksToBounds = YES;
    }
    return _YBPBSBackView;
}
- (UILabel *)YBPBSTitleLabel{
    if (!_YBPBSTitleLabel) {
        _YBPBSTitleLabel = [[UILabel alloc] init];
        _YBPBSTitleLabel.textColor = [UIColor redColor];
        _YBPBSTitleLabel.font = [UIFont boldSystemFontOfSize:40];
        _YBPBSTitleLabel.numberOfLines = 0;
    }
    return _YBPBSTitleLabel;
}
- (UIButton *)YBPBSDeleteButton{
    if (!_YBPBSDeleteButton) {
        _YBPBSDeleteButton = [[UIButton alloc] init];
        [_YBPBSDeleteButton setImage:[UIImage imageNamed:@"YBPBS_delete"] forState:UIControlStateNormal];
        [_YBPBSDeleteButton addTarget:self action:@selector(YBPBSDeleteButton:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _YBPBSDeleteButton;
}
- (UILabel *)YBPBSEndTimeLabel{
    if (!_YBPBSEndTimeLabel) {
        _YBPBSEndTimeLabel = [[UILabel alloc] init];
        _YBPBSEndTimeLabel.textColor = [UIColor blackColor];
        _YBPBSEndTimeLabel.font = [UIFont systemFontOfSize:15];
        _YBPBSEndTimeLabel.textAlignment = NSTextAlignmentCenter;
        _YBPBSEndTimeLabel.numberOfLines = 0;
    }
    return _YBPBSEndTimeLabel;
}
- (UILabel *)YBPBSElapsedTimeLabel{
    if (!_YBPBSElapsedTimeLabel) {
        _YBPBSElapsedTimeLabel = [[UILabel alloc] init];
        _YBPBSElapsedTimeLabel.textColor = [UIColor blackColor];
        _YBPBSElapsedTimeLabel.font = [UIFont systemFontOfSize:15];
        _YBPBSElapsedTimeLabel.textAlignment = NSTextAlignmentCenter;
        _YBPBSElapsedTimeLabel.numberOfLines = 0;
    }
    return _YBPBSElapsedTimeLabel;
}
- (UILabel *)YBPBSRightNameLabel{
    if (!_YBPBSRightNameLabel) {
        _YBPBSRightNameLabel = [[UILabel alloc] init];
        _YBPBSRightNameLabel.textColor = [UIColor blackColor];
        _YBPBSRightNameLabel.font = [UIFont systemFontOfSize:18];
        _YBPBSRightNameLabel.textAlignment = NSTextAlignmentCenter;
        _YBPBSRightNameLabel.numberOfLines = 0;
    }
    return _YBPBSRightNameLabel;
}
- (UILabel *)YBPBSRightScoreLabel{
    if (!_YBPBSRightScoreLabel) {
        _YBPBSRightScoreLabel = [[UILabel alloc] init];
        _YBPBSRightScoreLabel.textColor = [UIColor redColor];
        _YBPBSRightScoreLabel.font = [UIFont systemFontOfSize:30];
        _YBPBSRightScoreLabel.textAlignment = NSTextAlignmentCenter;
        _YBPBSRightScoreLabel.numberOfLines = 0;
    }
    return _YBPBSRightScoreLabel;
}
- (UILabel *)YBPBSVSLabel{
    if (!_YBPBSVSLabel) {
        _YBPBSVSLabel = [[UILabel alloc] init];
        _YBPBSVSLabel.textColor = [UIColor blackColor];
        _YBPBSVSLabel.font = [UIFont boldSystemFontOfSize:30];
        _YBPBSVSLabel.textAlignment = NSTextAlignmentCenter;
        _YBPBSVSLabel.numberOfLines = 0;
        _YBPBSVSLabel.text = @":";
    }
    return _YBPBSVSLabel;
}
- (UILabel *)YBPBSLeftNameLabel{
    if (!_YBPBSLeftNameLabel) {
        _YBPBSLeftNameLabel = [[UILabel alloc] init];
        _YBPBSLeftNameLabel.textColor = [UIColor blackColor];
        _YBPBSLeftNameLabel.font = [UIFont systemFontOfSize:18];
        _YBPBSLeftNameLabel.textAlignment = NSTextAlignmentCenter;
        _YBPBSLeftNameLabel.numberOfLines = 0;
    }
    return _YBPBSLeftNameLabel;
}
- (UILabel *)YBPBSLeftScoreLabel{
    if (!_YBPBSLeftScoreLabel) {
        _YBPBSLeftScoreLabel = [[UILabel alloc] init];
        _YBPBSLeftScoreLabel.textColor = [UIColor redColor];
        _YBPBSLeftScoreLabel.font = [UIFont systemFontOfSize:30];
        _YBPBSLeftScoreLabel.textAlignment = NSTextAlignmentCenter;
        _YBPBSLeftScoreLabel.numberOfLines = 0;
    }
    return _YBPBSLeftScoreLabel;
}
@end
