//
//  CVSRecordTableViewCell.m
//  PocketScout
//
//  Created by bykj on 2019/11/14.
//  Copyright © 2019 com. All rights reserved.
//

#import "CVSRecordTableViewCell.h"
#import "CVSScorecardModel.h"
#import "CVSBureauPointsModel.h"
@interface CVSRecordTableViewCell()
@property(nonatomic, strong)UIView *CVSBackView;//背景板
@property(nonatomic, strong)UILabel *CVSTitleLabel;//标题
@property(nonatomic, strong)UIButton *CVSDeleteButton;//删除
@property(nonatomic, strong)UILabel *CVSEndTimeLabel;//结束时间
@property(nonatomic, strong)UILabel *CVSElapsedTimeLabel;//总共用时
@property(nonatomic, strong)UILabel *CVSRightNameLabel;//右边队伍名称
@property(nonatomic, strong)UILabel *CVSRightScoreLabel;//右边队伍得分
@property(nonatomic, strong)UILabel *CVSVSLabel;//VS标识
@property(nonatomic, strong)UILabel *CVSLeftNameLabel;//左边队伍名称
@property(nonatomic, strong)UILabel *CVSLeftScoreLabel;//左边队伍得分
@property(nonatomic, strong)UILabel *CVSWithScoreLbl;//每局比分
@end
@implementation CVSRecordTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self CVSSetContentView];
    }
    return self;
}
#pragma mark - actions
- (void)CVSSetContentView{
    [self.contentView addSubview:self.CVSBackView];
    [self.CVSBackView addSubview:self.CVSTitleLabel];
    [self.CVSBackView addSubview:self.CVSDeleteButton];
    [self.CVSBackView addSubview:self.CVSEndTimeLabel];
    [self.CVSBackView addSubview:self.CVSElapsedTimeLabel];
    [self.CVSBackView addSubview:self.CVSRightNameLabel];
    [self.CVSBackView addSubview:self.CVSRightScoreLabel];
    [self.CVSBackView addSubview:self.CVSVSLabel];
    [self.CVSBackView addSubview:self.CVSLeftNameLabel];
    [self.CVSBackView addSubview:self.CVSLeftScoreLabel];
    [self.CVSBackView addSubview:self.CVSWithScoreLbl];

    
    [self.CVSBackView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(20);
        make.top.equalTo(self.contentView).offset(10);
        make.trailing.equalTo(self.contentView).offset(-20);
        make.height.mas_equalTo(308);
        make.bottom.equalTo(self.contentView).offset(-10);
    }];
    [self.CVSTitleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.CVSBackView);
        make.top.equalTo(self.CVSBackView).offset(20);
        make.width.mas_equalTo(CVSWIDTH - 16 - 16 - 26 - 16);
        make.height.mas_equalTo(30);
    }];
    [self.CVSDeleteButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.CVSTitleLabel);
        make.trailing.equalTo(self.CVSBackView).offset(-16);
        make.width.mas_equalTo(26);
        make.height.mas_equalTo(26);
    }];
    [self.CVSEndTimeLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.CVSTitleLabel.mas_bottom).offset(20);
        make.leading.equalTo(self.CVSBackView).offset(16);
        make.trailing.equalTo(self.CVSBackView).offset(-16);
        make.height.mas_equalTo(20);
    }];
    [self.CVSElapsedTimeLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.CVSEndTimeLabel.mas_bottom).offset(20);
        make.leading.equalTo(self.CVSBackView).offset(16);
        make.trailing.equalTo(self.CVSBackView).offset(-16);
        make.height.mas_equalTo(20);
    }];
    [self.CVSWithScoreLbl mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.CVSElapsedTimeLabel.mas_bottom).offset(10);
        make.leading.equalTo(self.CVSBackView).offset(16);
        make.trailing.equalTo(self.CVSBackView).offset(-16);
        make.height.mas_equalTo(44);
    }];
    [self.CVSRightNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.CVSWithScoreLbl.mas_bottom).offset(20);
        make.leading.equalTo(self.CVSBackView).offset(16);
        make.width.mas_equalTo((CVSWIDTH - 32 - 60) * 0.5);
        make.height.mas_equalTo(20);
    }];
    [self.CVSRightScoreLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.CVSRightNameLabel.mas_bottom).offset(20);
               make.centerX.equalTo(self.CVSRightNameLabel);
               make.width.mas_equalTo((CVSWIDTH - 32 - 60) * 0.5);
               make.height.mas_equalTo(44);
    }];
    [self.CVSVSLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.CVSRightScoreLabel);
        make.centerX.equalTo(self.CVSBackView);
        make.width.mas_equalTo(44);
        make.height.mas_equalTo(44);
    }];
    [self.CVSLeftNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.CVSWithScoreLbl.mas_bottom).offset(20);
        make.trailing.equalTo(self.CVSBackView).offset(-16);
        make.width.mas_equalTo((CVSWIDTH - 32 - 60) * 0.5);
        make.height.mas_equalTo(20);
    }];
    [self.CVSLeftScoreLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.CVSLeftNameLabel.mas_bottom).offset(20);
               make.centerX.equalTo(self.CVSLeftNameLabel);
               make.width.mas_equalTo((CVSWIDTH - 32 - 60) * 0.5);
               make.height.mas_equalTo(44);
    }];
}
- (void)setCVSModel:(CVSScorecardModel *)CVSModel{
    _CVSModel = CVSModel;
    self.CVSTitleLabel.text = _CVSModel.CVSNatureCompetition;
    CGSize size = [self.CVSTitleLabel sizeThatFits:CGSizeMake(MAXFLOAT, 30)];
    [self.CVSTitleLabel mas_updateConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(size.width);
    }];
    [self.CVSTitleLabel layoutIfNeeded];
    [self.contentView layoutSubviews];
    
    self.CVSEndTimeLabel.text = [NSString stringWithFormat:@"%@ %@",NSLocalizedString(@"结束时间", nil),_CVSModel.CVSEndTimeString];
    self.CVSElapsedTimeLabel.text = [NSString stringWithFormat:@"%@ %@",NSLocalizedString(@"比赛用时", nil),_CVSModel.CVSTotalTimeString];
    self.CVSRightNameLabel.text = _CVSModel.CVSTeamRightName;
    self.CVSRightScoreLabel.text = [NSString stringWithFormat:@"%ld",_CVSModel.CVSTeamRightScore];
    self.CVSLeftNameLabel.text = _CVSModel.CVSTeamLeftName;
    self.CVSLeftScoreLabel.text = [NSString stringWithFormat:@"%ld",_CVSModel.CVSTeamLeftScore];
    
    NSMutableString *withTheScoreString = [[NSMutableString alloc] init];
    for (int i = 0; i < _CVSModel.CVSBureauPointsArray.count; i++) {
        CVSBureauPointsModel *model = _CVSModel.CVSBureauPointsArray[i];
        [withTheScoreString appendString:[NSString stringWithFormat:@"%@ ",model.CVStBureauScoreString]];
    }
    self.CVSWithScoreLbl.text = [NSString stringWithFormat:@"%@:\n%@",NSLocalizedString(@"每局比分", nil),withTheScoreString];
}
#pragma mark - 删除
- (void)CVSDeleteButton:(UIButton *)sender{
    if (self.CVSRecordDeleteB) {
        self.CVSRecordDeleteB(self);
    }
}
#pragma mark - 属性懒加载
- (UIView *)CVSBackView{
    if (!_CVSBackView) {
        _CVSBackView = [[UIView alloc] init];
        _CVSBackView.backgroundColor = [UIColor cyanColor];
        _CVSBackView.layer.cornerRadius = 32.0f;
        _CVSBackView.layer.masksToBounds = YES;
    }
    return _CVSBackView;
}
- (UILabel *)CVSTitleLabel{
    if (!_CVSTitleLabel) {
        _CVSTitleLabel = [[UILabel alloc] init];
        _CVSTitleLabel.textColor = [UIColor redColor];
        _CVSTitleLabel.font = [UIFont boldSystemFontOfSize:25];
        _CVSTitleLabel.numberOfLines = 0;
    }
    return _CVSTitleLabel;
}
- (UIButton *)CVSDeleteButton{
    if (!_CVSDeleteButton) {
        _CVSDeleteButton = [[UIButton alloc] init];
        [_CVSDeleteButton setImage:[UIImage imageNamed:@"CVS_delete"] forState:UIControlStateNormal];
        [_CVSDeleteButton addTarget:self action:@selector(CVSDeleteButton:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _CVSDeleteButton;
}
- (UILabel *)CVSEndTimeLabel{
    if (!_CVSEndTimeLabel) {
        _CVSEndTimeLabel = [[UILabel alloc] init];
        _CVSEndTimeLabel.textColor = [UIColor systemOrangeColor];
        _CVSEndTimeLabel.font = [UIFont systemFontOfSize:15];
        _CVSEndTimeLabel.textAlignment = NSTextAlignmentCenter;
        _CVSEndTimeLabel.numberOfLines = 0;
    }
    return _CVSEndTimeLabel;
}
- (UILabel *)CVSElapsedTimeLabel{
    if (!_CVSElapsedTimeLabel) {
        _CVSElapsedTimeLabel = [[UILabel alloc] init];
        _CVSElapsedTimeLabel.textColor = [UIColor systemOrangeColor];
        _CVSElapsedTimeLabel.font = [UIFont systemFontOfSize:15];
        _CVSElapsedTimeLabel.textAlignment = NSTextAlignmentCenter;
        _CVSElapsedTimeLabel.numberOfLines = 0;
    }
    return _CVSElapsedTimeLabel;
}
- (UILabel *)CVSRightNameLabel{
    if (!_CVSRightNameLabel) {
        _CVSRightNameLabel = [[UILabel alloc] init];
        _CVSRightNameLabel.textColor = [UIColor redColor];
        _CVSRightNameLabel.font = [UIFont systemFontOfSize:18];
        _CVSRightNameLabel.textAlignment = NSTextAlignmentCenter;
        _CVSRightNameLabel.numberOfLines = 0;
    }
    return _CVSRightNameLabel;
}
- (UILabel *)CVSRightScoreLabel{
    if (!_CVSRightScoreLabel) {
        _CVSRightScoreLabel = [[UILabel alloc] init];
        _CVSRightScoreLabel.textColor = [UIColor greenColor];
        _CVSRightScoreLabel.font = [UIFont systemFontOfSize:30];
        _CVSRightScoreLabel.textAlignment = NSTextAlignmentCenter;
        _CVSRightScoreLabel.numberOfLines = 0;
    }
    return _CVSRightScoreLabel;
}
- (UILabel *)CVSVSLabel{
    if (!_CVSVSLabel) {
        _CVSVSLabel = [[UILabel alloc] init];
        _CVSVSLabel.textColor = [UIColor greenColor];
        _CVSVSLabel.font = [UIFont boldSystemFontOfSize:30];
        _CVSVSLabel.textAlignment = NSTextAlignmentCenter;
        _CVSVSLabel.numberOfLines = 0;
        _CVSVSLabel.text = @":";
    }
    return _CVSVSLabel;
}
- (UILabel *)CVSLeftNameLabel{
    if (!_CVSLeftNameLabel) {
        _CVSLeftNameLabel = [[UILabel alloc] init];
        _CVSLeftNameLabel.textColor = [UIColor redColor];
        _CVSLeftNameLabel.font = [UIFont systemFontOfSize:18];
        _CVSLeftNameLabel.textAlignment = NSTextAlignmentCenter;
        _CVSLeftNameLabel.numberOfLines = 0;
    }
    return _CVSLeftNameLabel;
}
- (UILabel *)CVSLeftScoreLabel{
    if (!_CVSLeftScoreLabel) {
        _CVSLeftScoreLabel = [[UILabel alloc] init];
        _CVSLeftScoreLabel.textColor = [UIColor greenColor];
        _CVSLeftScoreLabel.font = [UIFont systemFontOfSize:30];
        _CVSLeftScoreLabel.textAlignment = NSTextAlignmentCenter;
        _CVSLeftScoreLabel.numberOfLines = 0;
    }
    return _CVSLeftScoreLabel;
}
- (UILabel *)CVSWithScoreLbl{
    if (!_CVSWithScoreLbl) {
        _CVSWithScoreLbl = [[UILabel alloc] init];
        _CVSWithScoreLbl.textColor = [UIColor systemOrangeColor];
        _CVSWithScoreLbl.font = [UIFont systemFontOfSize:18];
        _CVSWithScoreLbl.numberOfLines = 0;
        _CVSWithScoreLbl.textAlignment = NSTextAlignmentCenter;
    }
    return _CVSWithScoreLbl;
}
@end
