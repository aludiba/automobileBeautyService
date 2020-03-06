//
//  CARecordTableViewCell.m
//  PocketScout
//
//  Created by bykj on 2019/11/14.
//  Copyright © 2019 com. All rights reserved.
//

#import "CARecordTableViewCell.h"
#import "CAScorecardModel.h"
#import "CABureauPointsModel.h"
@interface CARecordTableViewCell()
@property(nonatomic, strong)UIView *CABackView;//背景板
@property(nonatomic, strong)UILabel *CATitleLabel;//标题
@property(nonatomic, strong)UIButton *CADeleteButton;//删除
@property(nonatomic, strong)UILabel *CAEndTimeLabel;//结束时间
@property(nonatomic, strong)UILabel *CAElapsedTimeLabel;//总共用时
@property(nonatomic, strong)UILabel *CARightNameLabel;//右边队伍名称
@property(nonatomic, strong)UILabel *CARightScoreLabel;//右边队伍得分
@property(nonatomic, strong)UILabel *CAVSLabel;//VS标识
@property(nonatomic, strong)UILabel *CALeftNameLabel;//左边队伍名称
@property(nonatomic, strong)UILabel *CALeftScoreLabel;//左边队伍得分
@property(nonatomic, strong)UILabel *CAWithScoreLbl;//每局比分
@end
@implementation CARecordTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = [UIColor greenColor];
        [self CASetContentView];
    }
    return self;
}
#pragma mark - actions
- (void)CASetContentView{
    [self.contentView addSubview:self.CABackView];
    [self.CABackView addSubview:self.CATitleLabel];
    [self.CABackView addSubview:self.CADeleteButton];
    [self.CABackView addSubview:self.CAEndTimeLabel];
    [self.CABackView addSubview:self.CAElapsedTimeLabel];
    [self.CABackView addSubview:self.CARightNameLabel];
    [self.CABackView addSubview:self.CARightScoreLabel];
    [self.CABackView addSubview:self.CAVSLabel];
    [self.CABackView addSubview:self.CALeftNameLabel];
    [self.CABackView addSubview:self.CALeftScoreLabel];
    [self.CABackView addSubview:self.CAWithScoreLbl];

    
    [self.CABackView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(20);
        make.top.equalTo(self.contentView).offset(10);
        make.trailing.equalTo(self.contentView).offset(-20);
        make.height.mas_equalTo(308);
        make.bottom.equalTo(self.contentView).offset(-10);
    }];
    [self.CATitleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.CABackView);
        make.top.equalTo(self.CABackView).offset(20);
        make.width.mas_equalTo(CAWIDTH - 16 - 16 - 26 - 16);
        make.height.mas_equalTo(30);
    }];
    [self.CADeleteButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.CATitleLabel);
        make.trailing.equalTo(self.CABackView).offset(-16);
        make.width.mas_equalTo(26);
        make.height.mas_equalTo(26);
    }];
    [self.CAEndTimeLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.CATitleLabel.mas_bottom).offset(20);
        make.leading.equalTo(self.CABackView).offset(16);
        make.trailing.equalTo(self.CABackView).offset(-16);
        make.height.mas_equalTo(20);
    }];
    [self.CAElapsedTimeLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.CAEndTimeLabel.mas_bottom).offset(20);
        make.leading.equalTo(self.CABackView).offset(16);
        make.trailing.equalTo(self.CABackView).offset(-16);
        make.height.mas_equalTo(20);
    }];
    [self.CAWithScoreLbl mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.CAElapsedTimeLabel.mas_bottom).offset(10);
        make.leading.equalTo(self.CABackView).offset(16);
        make.trailing.equalTo(self.CABackView).offset(-16);
        make.height.mas_equalTo(44);
    }];
    [self.CARightNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.CAWithScoreLbl.mas_bottom).offset(20);
        make.leading.equalTo(self.CABackView).offset(16);
        make.width.mas_equalTo((CAWIDTH - 32 - 60) * 0.5);
        make.height.mas_equalTo(20);
    }];
    [self.CARightScoreLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.CARightNameLabel.mas_bottom).offset(20);
               make.centerX.equalTo(self.CARightNameLabel);
               make.width.mas_equalTo((CAWIDTH - 32 - 60) * 0.5);
               make.height.mas_equalTo(44);
    }];
    [self.CAVSLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.CARightScoreLabel);
        make.centerX.equalTo(self.CABackView);
        make.width.mas_equalTo(44);
        make.height.mas_equalTo(44);
    }];
    [self.CALeftNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.CAWithScoreLbl.mas_bottom).offset(20);
        make.trailing.equalTo(self.CABackView).offset(-16);
        make.width.mas_equalTo((CAWIDTH - 32 - 60) * 0.5);
        make.height.mas_equalTo(20);
    }];
    [self.CALeftScoreLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.CALeftNameLabel.mas_bottom).offset(20);
               make.centerX.equalTo(self.CALeftNameLabel);
               make.width.mas_equalTo((CAWIDTH - 32 - 60) * 0.5);
               make.height.mas_equalTo(44);
    }];
}
- (void)setCAModel:(CAScorecardModel *)CAModel{
    _CAModel = CAModel;
    self.CATitleLabel.text = _CAModel.CANatureCompetition;
    CGSize size = [self.CATitleLabel sizeThatFits:CGSizeMake(MAXFLOAT, 30)];
    [self.CATitleLabel mas_updateConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(size.width);
    }];
    [self.CATitleLabel layoutIfNeeded];
    [self.contentView layoutSubviews];
    
    self.CAEndTimeLabel.text = [NSString stringWithFormat:@"%@ %@",NSLocalizedString(@"结束时间", nil),_CAModel.CAEndTimeString];
    self.CAElapsedTimeLabel.text = [NSString stringWithFormat:@"%@ %@",NSLocalizedString(@"比赛用时", nil),_CAModel.CATotalTimeString];
    self.CARightNameLabel.text = _CAModel.CATeamRightName;
    self.CARightScoreLabel.text = [NSString stringWithFormat:@"%ld",_CAModel.CATeamRightScore];
    self.CALeftNameLabel.text = _CAModel.CATeamLeftName;
    self.CALeftScoreLabel.text = [NSString stringWithFormat:@"%ld",_CAModel.CATeamLeftScore];
    
    NSMutableString *withTheScoreString = [[NSMutableString alloc] init];
    for (int i = 0; i < _CAModel.CABureauPointsArray.count; i++) {
        CABureauPointsModel *model = _CAModel.CABureauPointsArray[i];
        [withTheScoreString appendString:[NSString stringWithFormat:@"%@ ",model.CAtBureauScoreString]];
    }
    self.CAWithScoreLbl.text = [NSString stringWithFormat:@"%@:\n%@",NSLocalizedString(@"每局比分", nil),withTheScoreString];
}
#pragma mark - 删除
- (void)CADeleteButton:(UIButton *)sender{
    if (self.CARecordDeleteB) {
        self.CARecordDeleteB(self);
    }
}
#pragma mark - 属性懒加载
- (UIView *)CABackView{
    if (!_CABackView) {
        _CABackView = [[UIView alloc] init];
        _CABackView.backgroundColor = [UIColor systemRedColor];
        _CABackView.layer.cornerRadius = 16.0f;
        _CABackView.layer.masksToBounds = YES;
    }
    return _CABackView;
}
- (UILabel *)CATitleLabel{
    if (!_CATitleLabel) {
        _CATitleLabel = [[UILabel alloc] init];
        _CATitleLabel.textColor = [UIColor redColor];
        _CATitleLabel.font = [UIFont boldSystemFontOfSize:25];
        _CATitleLabel.numberOfLines = 0;
    }
    return _CATitleLabel;
}
- (UIButton *)CADeleteButton{
    if (!_CADeleteButton) {
        _CADeleteButton = [[UIButton alloc] init];
        [_CADeleteButton setImage:[UIImage imageNamed:@"CA_delete"] forState:UIControlStateNormal];
        [_CADeleteButton addTarget:self action:@selector(CADeleteButton:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _CADeleteButton;
}
- (UILabel *)CAEndTimeLabel{
    if (!_CAEndTimeLabel) {
        _CAEndTimeLabel = [[UILabel alloc] init];
        _CAEndTimeLabel.textColor = [UIColor systemOrangeColor];
        _CAEndTimeLabel.font = [UIFont systemFontOfSize:15];
        _CAEndTimeLabel.textAlignment = NSTextAlignmentCenter;
        _CAEndTimeLabel.numberOfLines = 0;
    }
    return _CAEndTimeLabel;
}
- (UILabel *)CAElapsedTimeLabel{
    if (!_CAElapsedTimeLabel) {
        _CAElapsedTimeLabel = [[UILabel alloc] init];
        _CAElapsedTimeLabel.textColor = [UIColor systemOrangeColor];
        _CAElapsedTimeLabel.font = [UIFont systemFontOfSize:15];
        _CAElapsedTimeLabel.textAlignment = NSTextAlignmentCenter;
        _CAElapsedTimeLabel.numberOfLines = 0;
    }
    return _CAElapsedTimeLabel;
}
- (UILabel *)CARightNameLabel{
    if (!_CARightNameLabel) {
        _CARightNameLabel = [[UILabel alloc] init];
        _CARightNameLabel.textColor = [UIColor redColor];
        _CARightNameLabel.font = [UIFont systemFontOfSize:18];
        _CARightNameLabel.textAlignment = NSTextAlignmentCenter;
        _CARightNameLabel.numberOfLines = 0;
    }
    return _CARightNameLabel;
}
- (UILabel *)CARightScoreLabel{
    if (!_CARightScoreLabel) {
        _CARightScoreLabel = [[UILabel alloc] init];
        _CARightScoreLabel.textColor = [UIColor greenColor];
        _CARightScoreLabel.font = [UIFont systemFontOfSize:30];
        _CARightScoreLabel.textAlignment = NSTextAlignmentCenter;
        _CARightScoreLabel.numberOfLines = 0;
    }
    return _CARightScoreLabel;
}
- (UILabel *)CAVSLabel{
    if (!_CAVSLabel) {
        _CAVSLabel = [[UILabel alloc] init];
        _CAVSLabel.textColor = [UIColor greenColor];
        _CAVSLabel.font = [UIFont boldSystemFontOfSize:30];
        _CAVSLabel.textAlignment = NSTextAlignmentCenter;
        _CAVSLabel.numberOfLines = 0;
        _CAVSLabel.text = @":";
    }
    return _CAVSLabel;
}
- (UILabel *)CALeftNameLabel{
    if (!_CALeftNameLabel) {
        _CALeftNameLabel = [[UILabel alloc] init];
        _CALeftNameLabel.textColor = [UIColor redColor];
        _CALeftNameLabel.font = [UIFont systemFontOfSize:18];
        _CALeftNameLabel.textAlignment = NSTextAlignmentCenter;
        _CALeftNameLabel.numberOfLines = 0;
    }
    return _CALeftNameLabel;
}
- (UILabel *)CALeftScoreLabel{
    if (!_CALeftScoreLabel) {
        _CALeftScoreLabel = [[UILabel alloc] init];
        _CALeftScoreLabel.textColor = [UIColor greenColor];
        _CALeftScoreLabel.font = [UIFont systemFontOfSize:30];
        _CALeftScoreLabel.textAlignment = NSTextAlignmentCenter;
        _CALeftScoreLabel.numberOfLines = 0;
    }
    return _CALeftScoreLabel;
}
- (UILabel *)CAWithScoreLbl{
    if (!_CAWithScoreLbl) {
        _CAWithScoreLbl = [[UILabel alloc] init];
        _CAWithScoreLbl.textColor = [UIColor systemOrangeColor];
        _CAWithScoreLbl.font = [UIFont systemFontOfSize:18];
        _CAWithScoreLbl.numberOfLines = 0;
        _CAWithScoreLbl.textAlignment = NSTextAlignmentCenter;
    }
    return _CAWithScoreLbl;
}
@end
