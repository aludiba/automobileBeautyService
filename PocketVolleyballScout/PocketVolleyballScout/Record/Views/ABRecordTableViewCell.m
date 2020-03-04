//
//  ABRecordTableViewCell.m
//  PocketScout
//
//  Created by bykj on 2019/11/14.
//  Copyright © 2019 com. All rights reserved.
//

#import "ABRecordTableViewCell.h"
#import "ABScorecardModel.h"
#import "ABBureauPointsModel.h"
@interface ABRecordTableViewCell()
@property(nonatomic, strong)UIView *ABBackView;//背景板
@property(nonatomic, strong)UILabel *ABTitleLabel;//标题
@property(nonatomic, strong)UIButton *ABDeleteButton;//删除
@property(nonatomic, strong)UILabel *ABEndTimeLabel;//结束时间
@property(nonatomic, strong)UILabel *ABElapsedTimeLabel;//总共用时
@property(nonatomic, strong)UILabel *ABRightNameLabel;//右边队伍名称
@property(nonatomic, strong)UILabel *ABRightScoreLabel;//右边队伍得分
@property(nonatomic, strong)UILabel *ABVSLabel;//VS标识
@property(nonatomic, strong)UILabel *ABLeftNameLabel;//左边队伍名称
@property(nonatomic, strong)UILabel *ABLeftScoreLabel;//左边队伍得分
@property(nonatomic, strong)UILabel *ABWithScoreLbl;//每局比分
@end
@implementation ABRecordTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = [UIColor greenColor];
        [self ABSetContentView];
    }
    return self;
}
#pragma mark - actions
- (void)ABSetContentView{
    [self.contentView addSubview:self.ABBackView];
    [self.ABBackView addSubview:self.ABTitleLabel];
    [self.ABBackView addSubview:self.ABDeleteButton];
    [self.ABBackView addSubview:self.ABEndTimeLabel];
    [self.ABBackView addSubview:self.ABElapsedTimeLabel];
    [self.ABBackView addSubview:self.ABRightNameLabel];
    [self.ABBackView addSubview:self.ABRightScoreLabel];
    [self.ABBackView addSubview:self.ABVSLabel];
    [self.ABBackView addSubview:self.ABLeftNameLabel];
    [self.ABBackView addSubview:self.ABLeftScoreLabel];
    [self.ABBackView addSubview:self.ABWithScoreLbl];

    
    [self.ABBackView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(20);
        make.top.equalTo(self.contentView).offset(10);
        make.trailing.equalTo(self.contentView).offset(-20);
        make.height.mas_equalTo(308);
        make.bottom.equalTo(self.contentView).offset(-10);
    }];
    [self.ABTitleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.ABBackView);
        make.top.equalTo(self.ABBackView).offset(20);
        make.width.mas_equalTo(ABWIDTH - 16 - 16 - 26 - 16);
        make.height.mas_equalTo(30);
    }];
    [self.ABDeleteButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.ABTitleLabel);
        make.trailing.equalTo(self.ABBackView).offset(-16);
        make.width.mas_equalTo(26);
        make.height.mas_equalTo(26);
    }];
    [self.ABEndTimeLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.ABTitleLabel.mas_bottom).offset(20);
        make.leading.equalTo(self.ABBackView).offset(16);
        make.trailing.equalTo(self.ABBackView).offset(-16);
        make.height.mas_equalTo(20);
    }];
    [self.ABElapsedTimeLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.ABEndTimeLabel.mas_bottom).offset(20);
        make.leading.equalTo(self.ABBackView).offset(16);
        make.trailing.equalTo(self.ABBackView).offset(-16);
        make.height.mas_equalTo(20);
    }];
    [self.ABWithScoreLbl mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.ABElapsedTimeLabel.mas_bottom).offset(10);
        make.leading.equalTo(self.ABBackView).offset(16);
        make.trailing.equalTo(self.ABBackView).offset(-16);
        make.height.mas_equalTo(44);
    }];
    [self.ABRightNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.ABWithScoreLbl.mas_bottom).offset(20);
        make.leading.equalTo(self.ABBackView).offset(16);
        make.width.mas_equalTo((ABWIDTH - 32 - 60) * 0.5);
        make.height.mas_equalTo(20);
    }];
    [self.ABRightScoreLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.ABRightNameLabel.mas_bottom).offset(20);
               make.centerX.equalTo(self.ABRightNameLabel);
               make.width.mas_equalTo((ABWIDTH - 32 - 60) * 0.5);
               make.height.mas_equalTo(44);
    }];
    [self.ABVSLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.ABRightScoreLabel);
        make.centerX.equalTo(self.ABBackView);
        make.width.mas_equalTo(44);
        make.height.mas_equalTo(44);
    }];
    [self.ABLeftNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.ABWithScoreLbl.mas_bottom).offset(20);
        make.trailing.equalTo(self.ABBackView).offset(-16);
        make.width.mas_equalTo((ABWIDTH - 32 - 60) * 0.5);
        make.height.mas_equalTo(20);
    }];
    [self.ABLeftScoreLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.ABLeftNameLabel.mas_bottom).offset(20);
               make.centerX.equalTo(self.ABLeftNameLabel);
               make.width.mas_equalTo((ABWIDTH - 32 - 60) * 0.5);
               make.height.mas_equalTo(44);
    }];
}
- (void)setABModel:(ABScorecardModel *)ABModel{
    _ABModel = ABModel;
    self.ABTitleLabel.text = _ABModel.ABNatureCompetition;
    CGSize size = [self.ABTitleLabel sizeThatFits:CGSizeMake(MAXFLOAT, 30)];
    [self.ABTitleLabel mas_updateConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(size.width);
    }];
    [self.ABTitleLabel layoutIfNeeded];
    [self.contentView layoutSubviews];
    
    self.ABEndTimeLabel.text = [NSString stringWithFormat:@"%@ %@",NSLocalizedString(@"结束时间", nil),_ABModel.ABEndTimeString];
    self.ABElapsedTimeLabel.text = [NSString stringWithFormat:@"%@ %@",NSLocalizedString(@"比赛用时", nil),_ABModel.ABTotalTimeString];
    self.ABRightNameLabel.text = _ABModel.ABTeamRightName;
    self.ABRightScoreLabel.text = [NSString stringWithFormat:@"%ld",_ABModel.ABTeamRightScore];
    self.ABLeftNameLabel.text = _ABModel.ABTeamLeftName;
    self.ABLeftScoreLabel.text = [NSString stringWithFormat:@"%ld",_ABModel.ABTeamLeftScore];
    
    NSMutableString *withTheScoreString = [[NSMutableString alloc] init];
    for (int i = 0; i < _ABModel.ABBureauPointsArray.count; i++) {
        ABBureauPointsModel *model = _ABModel.ABBureauPointsArray[i];
        [withTheScoreString appendString:[NSString stringWithFormat:@"%@ ",model.ABtBureauScoreString]];
    }
    self.ABWithScoreLbl.text = [NSString stringWithFormat:@"%@:\n%@",NSLocalizedString(@"每局比分", nil),withTheScoreString];
}
#pragma mark - 删除
- (void)ABDeleteButton:(UIButton *)sender{
    if (self.ABRecordDeleteB) {
        self.ABRecordDeleteB(self);
    }
}
#pragma mark - 属性懒加载
- (UIView *)ABBackView{
    if (!_ABBackView) {
        _ABBackView = [[UIView alloc] init];
        _ABBackView.backgroundColor = [UIColor systemGreenColor];
        _ABBackView.layer.cornerRadius = 16.0f;
        _ABBackView.layer.masksToBounds = YES;
    }
    return _ABBackView;
}
- (UILabel *)ABTitleLabel{
    if (!_ABTitleLabel) {
        _ABTitleLabel = [[UILabel alloc] init];
        _ABTitleLabel.textColor = [UIColor redColor];
        _ABTitleLabel.font = [UIFont boldSystemFontOfSize:25];
        _ABTitleLabel.numberOfLines = 0;
    }
    return _ABTitleLabel;
}
- (UIButton *)ABDeleteButton{
    if (!_ABDeleteButton) {
        _ABDeleteButton = [[UIButton alloc] init];
        [_ABDeleteButton setImage:[UIImage imageNamed:@"AB_delete"] forState:UIControlStateNormal];
        [_ABDeleteButton addTarget:self action:@selector(ABDeleteButton:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _ABDeleteButton;
}
- (UILabel *)ABEndTimeLabel{
    if (!_ABEndTimeLabel) {
        _ABEndTimeLabel = [[UILabel alloc] init];
        _ABEndTimeLabel.textColor = [UIColor systemOrangeColor];
        _ABEndTimeLabel.font = [UIFont systemFontOfSize:15];
        _ABEndTimeLabel.textAlignment = NSTextAlignmentCenter;
        _ABEndTimeLabel.numberOfLines = 0;
    }
    return _ABEndTimeLabel;
}
- (UILabel *)ABElapsedTimeLabel{
    if (!_ABElapsedTimeLabel) {
        _ABElapsedTimeLabel = [[UILabel alloc] init];
        _ABElapsedTimeLabel.textColor = [UIColor systemOrangeColor];
        _ABElapsedTimeLabel.font = [UIFont systemFontOfSize:15];
        _ABElapsedTimeLabel.textAlignment = NSTextAlignmentCenter;
        _ABElapsedTimeLabel.numberOfLines = 0;
    }
    return _ABElapsedTimeLabel;
}
- (UILabel *)ABRightNameLabel{
    if (!_ABRightNameLabel) {
        _ABRightNameLabel = [[UILabel alloc] init];
        _ABRightNameLabel.textColor = [UIColor redColor];
        _ABRightNameLabel.font = [UIFont systemFontOfSize:18];
        _ABRightNameLabel.textAlignment = NSTextAlignmentCenter;
        _ABRightNameLabel.numberOfLines = 0;
    }
    return _ABRightNameLabel;
}
- (UILabel *)ABRightScoreLabel{
    if (!_ABRightScoreLabel) {
        _ABRightScoreLabel = [[UILabel alloc] init];
        _ABRightScoreLabel.textColor = [UIColor greenColor];
        _ABRightScoreLabel.font = [UIFont systemFontOfSize:30];
        _ABRightScoreLabel.textAlignment = NSTextAlignmentCenter;
        _ABRightScoreLabel.numberOfLines = 0;
    }
    return _ABRightScoreLabel;
}
- (UILabel *)ABVSLabel{
    if (!_ABVSLabel) {
        _ABVSLabel = [[UILabel alloc] init];
        _ABVSLabel.textColor = [UIColor greenColor];
        _ABVSLabel.font = [UIFont boldSystemFontOfSize:30];
        _ABVSLabel.textAlignment = NSTextAlignmentCenter;
        _ABVSLabel.numberOfLines = 0;
        _ABVSLabel.text = @":";
    }
    return _ABVSLabel;
}
- (UILabel *)ABLeftNameLabel{
    if (!_ABLeftNameLabel) {
        _ABLeftNameLabel = [[UILabel alloc] init];
        _ABLeftNameLabel.textColor = [UIColor redColor];
        _ABLeftNameLabel.font = [UIFont systemFontOfSize:18];
        _ABLeftNameLabel.textAlignment = NSTextAlignmentCenter;
        _ABLeftNameLabel.numberOfLines = 0;
    }
    return _ABLeftNameLabel;
}
- (UILabel *)ABLeftScoreLabel{
    if (!_ABLeftScoreLabel) {
        _ABLeftScoreLabel = [[UILabel alloc] init];
        _ABLeftScoreLabel.textColor = [UIColor greenColor];
        _ABLeftScoreLabel.font = [UIFont systemFontOfSize:30];
        _ABLeftScoreLabel.textAlignment = NSTextAlignmentCenter;
        _ABLeftScoreLabel.numberOfLines = 0;
    }
    return _ABLeftScoreLabel;
}
- (UILabel *)ABWithScoreLbl{
    if (!_ABWithScoreLbl) {
        _ABWithScoreLbl = [[UILabel alloc] init];
        _ABWithScoreLbl.textColor = [UIColor systemOrangeColor];
        _ABWithScoreLbl.font = [UIFont systemFontOfSize:18];
        _ABWithScoreLbl.numberOfLines = 0;
        _ABWithScoreLbl.textAlignment = NSTextAlignmentCenter;
    }
    return _ABWithScoreLbl;
}
@end
