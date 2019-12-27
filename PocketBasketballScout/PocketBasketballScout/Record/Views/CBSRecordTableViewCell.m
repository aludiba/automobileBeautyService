//
//  CBSRecordTableViewCell.m
//  PocketScout
//
//  Created by bykj on 2019/11/14.
//  Copyright © 2019 com. All rights reserved.
//

#import "CBSRecordTableViewCell.h"
#import "CBSScorecardModel.h"
@interface CBSRecordTableViewCell()
@property(nonatomic, strong)UIView *CBSBackView;//背景板
@property(nonatomic, strong)UILabel *CBSTitleLabel;//标题
@property(nonatomic, strong)UIButton *CBSDeleteButton;//删除
@property(nonatomic, strong)UILabel *CBSEndTimeLabel;//结束时间
@property(nonatomic, strong)UILabel *CBSElapsedTimeLabel;//总共用时
@property(nonatomic, strong)UILabel *CBSRightNameLabel;//右边队伍名称
@property(nonatomic, strong)UILabel *CBSRightScoreLabel;//右边队伍得分
@property(nonatomic, strong)UILabel *CBSVSLabel;//VS标识
@property(nonatomic, strong)UILabel *CBSLeftNameLabel;//左边队伍名称
@property(nonatomic, strong)UILabel *CBSLeftScoreLabel;//左边队伍得分
@end
@implementation CBSRecordTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self CBSSetContentView];
    }
    return self;
}
#pragma mark - actions
- (void)CBSSetContentView{
    self.contentView.backgroundColor = [UIColor cyanColor];
    [self.contentView addSubview:self.CBSBackView];
    [self.CBSBackView addSubview:self.CBSTitleLabel];
    [self.CBSBackView addSubview:self.CBSDeleteButton];
    [self.CBSBackView addSubview:self.CBSEndTimeLabel];
    [self.CBSBackView addSubview:self.CBSElapsedTimeLabel];
    [self.CBSBackView addSubview:self.CBSRightNameLabel];
    [self.CBSBackView addSubview:self.CBSRightScoreLabel];
    [self.CBSBackView addSubview:self.CBSVSLabel];
    [self.CBSBackView addSubview:self.CBSLeftNameLabel];
    [self.CBSBackView addSubview:self.CBSLeftScoreLabel];
    
    [self.CBSBackView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(20);
        make.top.equalTo(self.contentView).offset(10);
        make.trailing.equalTo(self.contentView).offset(-20);
        make.height.mas_equalTo(274);
        make.bottom.equalTo(self.contentView).offset(-10);
    }];
    [self.CBSTitleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.CBSBackView);
        make.top.equalTo(self.CBSBackView).offset(20);
        make.width.mas_equalTo(CBSWIDTH - 16 - 16 - 26 - 16);
        make.height.mas_equalTo(50);
    }];
    [self.CBSDeleteButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.CBSTitleLabel);
        make.trailing.equalTo(self.CBSBackView).offset(-16);
        make.width.mas_equalTo(26);
        make.height.mas_equalTo(26);
    }];
    [self.CBSEndTimeLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.CBSTitleLabel.mas_bottom).offset(20);
        make.leading.equalTo(self.CBSBackView).offset(16);
        make.trailing.equalTo(self.CBSBackView).offset(-16);
        make.height.mas_equalTo(20);
    }];
    [self.CBSElapsedTimeLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.CBSEndTimeLabel.mas_bottom).offset(20);
        make.leading.equalTo(self.CBSBackView).offset(16);
        make.trailing.equalTo(self.CBSBackView).offset(-16);
        make.height.mas_equalTo(20);
    }];
    [self.CBSRightNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.CBSElapsedTimeLabel.mas_bottom).offset(20);
        make.leading.equalTo(self.CBSBackView).offset(16);
        make.width.mas_equalTo((CBSWIDTH - 32 - 60) * 0.5);
        make.height.mas_equalTo(20);
    }];
    [self.CBSRightScoreLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.CBSRightNameLabel.mas_bottom).offset(20);
               make.centerX.equalTo(self.CBSRightNameLabel);
               make.width.mas_equalTo((CBSWIDTH - 32 - 60) * 0.5);
               make.height.mas_equalTo(44);
    }];
    [self.CBSVSLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.CBSRightScoreLabel);
        make.centerX.equalTo(self.CBSBackView);
        make.width.mas_equalTo(44);
        make.height.mas_equalTo(44);
    }];
    [self.CBSLeftNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.CBSElapsedTimeLabel.mas_bottom).offset(20);
        make.trailing.equalTo(self.CBSBackView).offset(-16);
        make.width.mas_equalTo((CBSWIDTH - 32 - 60) * 0.5);
        make.height.mas_equalTo(20);
    }];
    [self.CBSLeftScoreLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.CBSLeftNameLabel.mas_bottom).offset(20);
               make.centerX.equalTo(self.CBSLeftNameLabel);
               make.width.mas_equalTo((CBSWIDTH - 32 - 60) * 0.5);
               make.height.mas_equalTo(44);
    }];
}
- (void)setCBSModel:(CBSScorecardModel *)CBSModel{
    _CBSModel = CBSModel;
    self.CBSTitleLabel.text = _CBSModel.CBSNatureCompetition;
    CGSize size = [self.CBSTitleLabel sizeThatFits:CGSizeMake(MAXFLOAT, 30)];
    [self.CBSTitleLabel mas_updateConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(size.width);
    }];
    [self.CBSTitleLabel layoutIfNeeded];
    [self.contentView layoutSubviews];
    
    self.CBSEndTimeLabel.text = [NSString stringWithFormat:@"%@ %@",NSLocalizedString(@"结束时间", nil),_CBSModel.CBSEndTimeString];
    self.CBSElapsedTimeLabel.text = [NSString stringWithFormat:@"%@ %@",NSLocalizedString(@"比赛用时", nil),_CBSModel.CBSTotalTimeString];
    self.CBSRightNameLabel.text = _CBSModel.CBSTeamRightName;
    self.CBSRightScoreLabel.text = [NSString stringWithFormat:@"%ld",_CBSModel.CBSTeamRightScore];
    self.CBSLeftNameLabel.text = _CBSModel.CBSTeamLeftName;
    self.CBSLeftScoreLabel.text = [NSString stringWithFormat:@"%ld",_CBSModel.CBSTeamLeftScore];
}
#pragma mark - 删除
- (void)CBSDeleteButton:(UIButton *)sender{
    if (self.CBSRecordDeleteB) {
        self.CBSRecordDeleteB(self);
    }
}
#pragma mark - 属性懒加载
- (UIView *)CBSBackView{
    if (!_CBSBackView) {
        _CBSBackView = [[UIView alloc] init];
        _CBSBackView.backgroundColor = [UIColor whiteColor];
        _CBSBackView.layer.cornerRadius = 4.0f;
        _CBSBackView.layer.masksToBounds = YES;
    }
    return _CBSBackView;
}
- (UILabel *)CBSTitleLabel{
    if (!_CBSTitleLabel) {
        _CBSTitleLabel = [[UILabel alloc] init];
        _CBSTitleLabel.textColor = [UIColor redColor];
        _CBSTitleLabel.font = [UIFont boldSystemFontOfSize:40];
        _CBSTitleLabel.numberOfLines = 0;
    }
    return _CBSTitleLabel;
}
- (UIButton *)CBSDeleteButton{
    if (!_CBSDeleteButton) {
        _CBSDeleteButton = [[UIButton alloc] init];
        [_CBSDeleteButton setImage:[UIImage imageNamed:@"CBS_delete"] forState:UIControlStateNormal];
        [_CBSDeleteButton addTarget:self action:@selector(CBSDeleteButton:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _CBSDeleteButton;
}
- (UILabel *)CBSEndTimeLabel{
    if (!_CBSEndTimeLabel) {
        _CBSEndTimeLabel = [[UILabel alloc] init];
        _CBSEndTimeLabel.textColor = [UIColor blackColor];
        _CBSEndTimeLabel.font = [UIFont systemFontOfSize:15];
        _CBSEndTimeLabel.textAlignment = NSTextAlignmentCenter;
        _CBSEndTimeLabel.numberOfLines = 0;
    }
    return _CBSEndTimeLabel;
}
- (UILabel *)CBSElapsedTimeLabel{
    if (!_CBSElapsedTimeLabel) {
        _CBSElapsedTimeLabel = [[UILabel alloc] init];
        _CBSElapsedTimeLabel.textColor = [UIColor blackColor];
        _CBSElapsedTimeLabel.font = [UIFont systemFontOfSize:15];
        _CBSElapsedTimeLabel.textAlignment = NSTextAlignmentCenter;
        _CBSElapsedTimeLabel.numberOfLines = 0;
    }
    return _CBSElapsedTimeLabel;
}
- (UILabel *)CBSRightNameLabel{
    if (!_CBSRightNameLabel) {
        _CBSRightNameLabel = [[UILabel alloc] init];
        _CBSRightNameLabel.textColor = [UIColor blackColor];
        _CBSRightNameLabel.font = [UIFont systemFontOfSize:18];
        _CBSRightNameLabel.textAlignment = NSTextAlignmentCenter;
        _CBSRightNameLabel.numberOfLines = 0;
    }
    return _CBSRightNameLabel;
}
- (UILabel *)CBSRightScoreLabel{
    if (!_CBSRightScoreLabel) {
        _CBSRightScoreLabel = [[UILabel alloc] init];
        _CBSRightScoreLabel.textColor = [UIColor redColor];
        _CBSRightScoreLabel.font = [UIFont systemFontOfSize:30];
        _CBSRightScoreLabel.textAlignment = NSTextAlignmentCenter;
        _CBSRightScoreLabel.numberOfLines = 0;
    }
    return _CBSRightScoreLabel;
}
- (UILabel *)CBSVSLabel{
    if (!_CBSVSLabel) {
        _CBSVSLabel = [[UILabel alloc] init];
        _CBSVSLabel.textColor = [UIColor blackColor];
        _CBSVSLabel.font = [UIFont boldSystemFontOfSize:30];
        _CBSVSLabel.textAlignment = NSTextAlignmentCenter;
        _CBSVSLabel.numberOfLines = 0;
        _CBSVSLabel.text = @":";
    }
    return _CBSVSLabel;
}
- (UILabel *)CBSLeftNameLabel{
    if (!_CBSLeftNameLabel) {
        _CBSLeftNameLabel = [[UILabel alloc] init];
        _CBSLeftNameLabel.textColor = [UIColor blackColor];
        _CBSLeftNameLabel.font = [UIFont systemFontOfSize:18];
        _CBSLeftNameLabel.textAlignment = NSTextAlignmentCenter;
        _CBSLeftNameLabel.numberOfLines = 0;
    }
    return _CBSLeftNameLabel;
}
- (UILabel *)CBSLeftScoreLabel{
    if (!_CBSLeftScoreLabel) {
        _CBSLeftScoreLabel = [[UILabel alloc] init];
        _CBSLeftScoreLabel.textColor = [UIColor redColor];
        _CBSLeftScoreLabel.font = [UIFont systemFontOfSize:30];
        _CBSLeftScoreLabel.textAlignment = NSTextAlignmentCenter;
        _CBSLeftScoreLabel.numberOfLines = 0;
    }
    return _CBSLeftScoreLabel;
}
@end
