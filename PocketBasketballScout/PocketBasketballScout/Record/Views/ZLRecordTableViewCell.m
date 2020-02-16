//
//  ZLRecordTableViewCell.m
//  PocketScout
//
//  Created by bykj on 2019/11/14.
//  Copyright © 2019 com. All rights reserved.
//

#import "ZLRecordTableViewCell.h"
#import "ZLScorecardModel.h"
@interface ZLRecordTableViewCell()
@property(nonatomic, strong)UIView *ZLBackView;//背景板
@property(nonatomic, strong)UILabel *ZLTitleLabel;//标题
@property(nonatomic, strong)UIButton *ZLDeleteButton;//删除
@property(nonatomic, strong)UILabel *ZLEndTimeLabel;//结束时间
@property(nonatomic, strong)UILabel *ZLElapsedTimeLabel;//总共用时
@property(nonatomic, strong)UILabel *ZLRightNameLabel;//右边队伍名称
@property(nonatomic, strong)UILabel *ZLRightScoreLabel;//右边队伍得分
@property(nonatomic, strong)UILabel *ZLVSLabel;//VS标识
@property(nonatomic, strong)UILabel *ZLLeftNameLabel;//左边队伍名称
@property(nonatomic, strong)UILabel *ZLLeftScoreLabel;//左边队伍得分
@end
@implementation ZLRecordTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self ZLSetContentView];
    }
    return self;
}
#pragma mark - actions
- (void)ZLSetContentView{
    self.contentView.backgroundColor = [UIColor cyanColor];
    [self.contentView addSubview:self.ZLBackView];
    [self.ZLBackView addSubview:self.ZLTitleLabel];
    [self.ZLBackView addSubview:self.ZLDeleteButton];
    [self.ZLBackView addSubview:self.ZLEndTimeLabel];
    [self.ZLBackView addSubview:self.ZLElapsedTimeLabel];
    [self.ZLBackView addSubview:self.ZLRightNameLabel];
    [self.ZLBackView addSubview:self.ZLRightScoreLabel];
    [self.ZLBackView addSubview:self.ZLVSLabel];
    [self.ZLBackView addSubview:self.ZLLeftNameLabel];
    [self.ZLBackView addSubview:self.ZLLeftScoreLabel];
    
    [self.ZLBackView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(20);
        make.top.equalTo(self.contentView).offset(10);
        make.trailing.equalTo(self.contentView).offset(-20);
        make.height.mas_equalTo(274);
        make.bottom.equalTo(self.contentView).offset(-10);
    }];
    [self.ZLTitleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.ZLBackView);
        make.top.equalTo(self.ZLBackView).offset(20);
        make.width.mas_equalTo(ZLWIDTH - 16 - 16 - 26 - 16);
        make.height.mas_equalTo(50);
    }];
    [self.ZLDeleteButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.ZLTitleLabel);
        make.trailing.equalTo(self.ZLBackView).offset(-16);
        make.width.mas_equalTo(26);
        make.height.mas_equalTo(26);
    }];
    [self.ZLEndTimeLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.ZLTitleLabel.mas_bottom).offset(20);
        make.leading.equalTo(self.ZLBackView).offset(16);
        make.trailing.equalTo(self.ZLBackView).offset(-16);
        make.height.mas_equalTo(20);
    }];
    [self.ZLElapsedTimeLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.ZLEndTimeLabel.mas_bottom).offset(20);
        make.leading.equalTo(self.ZLBackView).offset(16);
        make.trailing.equalTo(self.ZLBackView).offset(-16);
        make.height.mas_equalTo(20);
    }];
    [self.ZLRightNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.ZLElapsedTimeLabel.mas_bottom).offset(20);
        make.leading.equalTo(self.ZLBackView).offset(16);
        make.width.mas_equalTo((ZLWIDTH - 32 - 60) * 0.5);
        make.height.mas_equalTo(20);
    }];
    [self.ZLRightScoreLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.ZLRightNameLabel.mas_bottom).offset(20);
               make.centerX.equalTo(self.ZLRightNameLabel);
               make.width.mas_equalTo((ZLWIDTH - 32 - 60) * 0.5);
               make.height.mas_equalTo(44);
    }];
    [self.ZLVSLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.ZLRightScoreLabel);
        make.centerX.equalTo(self.ZLBackView);
        make.width.mas_equalTo(44);
        make.height.mas_equalTo(44);
    }];
    [self.ZLLeftNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.ZLElapsedTimeLabel.mas_bottom).offset(20);
        make.trailing.equalTo(self.ZLBackView).offset(-16);
        make.width.mas_equalTo((ZLWIDTH - 32 - 60) * 0.5);
        make.height.mas_equalTo(20);
    }];
    [self.ZLLeftScoreLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.ZLLeftNameLabel.mas_bottom).offset(20);
               make.centerX.equalTo(self.ZLLeftNameLabel);
               make.width.mas_equalTo((ZLWIDTH - 32 - 60) * 0.5);
               make.height.mas_equalTo(44);
    }];
}
- (void)setZLModel:(ZLScorecardModel *)ZLModel{
    _ZLModel = ZLModel;
    self.ZLTitleLabel.text = _ZLModel.ZLNatureCompetition;
    CGSize size = [self.ZLTitleLabel sizeThatFits:CGSizeMake(MAXFLOAT, 30)];
    [self.ZLTitleLabel mas_updateConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(size.width);
    }];
    [self.ZLTitleLabel layoutIfNeeded];
    [self.contentView layoutSubviews];
    
    self.ZLEndTimeLabel.text = [NSString stringWithFormat:@"%@ %@",NSLocalizedString(@"结束时间", nil),_ZLModel.ZLEndTimeString];
    self.ZLElapsedTimeLabel.text = [NSString stringWithFormat:@"%@ %@",NSLocalizedString(@"比赛用时", nil),_ZLModel.ZLTotalTimeString];
    self.ZLRightNameLabel.text = _ZLModel.ZLTeamRightName;
    self.ZLRightScoreLabel.text = [NSString stringWithFormat:@"%ld",_ZLModel.ZLTeamRightScore];
    self.ZLLeftNameLabel.text = _ZLModel.ZLTeamLeftName;
    self.ZLLeftScoreLabel.text = [NSString stringWithFormat:@"%ld",_ZLModel.ZLTeamLeftScore];
}
#pragma mark - 删除
- (void)ZLDeleteButton:(UIButton *)sender{
    if (self.ZLRecordDeleteB) {
        self.ZLRecordDeleteB(self);
    }
}
#pragma mark - 属性懒加载
- (UIView *)ZLBackView{
    if (!_ZLBackView) {
        _ZLBackView = [[UIView alloc] init];
        _ZLBackView.backgroundColor = [UIColor whiteColor];
        _ZLBackView.layer.cornerRadius = 4.0f;
        _ZLBackView.layer.masksToBounds = YES;
    }
    return _ZLBackView;
}
- (UILabel *)ZLTitleLabel{
    if (!_ZLTitleLabel) {
        _ZLTitleLabel = [[UILabel alloc] init];
        _ZLTitleLabel.textColor = [UIColor redColor];
        _ZLTitleLabel.font = [UIFont boldSystemFontOfSize:40];
        _ZLTitleLabel.numberOfLines = 0;
    }
    return _ZLTitleLabel;
}
- (UIButton *)ZLDeleteButton{
    if (!_ZLDeleteButton) {
        _ZLDeleteButton = [[UIButton alloc] init];
        [_ZLDeleteButton setImage:[UIImage imageNamed:@"ZL_delete"] forState:UIControlStateNormal];
        [_ZLDeleteButton addTarget:self action:@selector(ZLDeleteButton:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _ZLDeleteButton;
}
- (UILabel *)ZLEndTimeLabel{
    if (!_ZLEndTimeLabel) {
        _ZLEndTimeLabel = [[UILabel alloc] init];
        _ZLEndTimeLabel.textColor = [UIColor blackColor];
        _ZLEndTimeLabel.font = [UIFont systemFontOfSize:15];
        _ZLEndTimeLabel.textAlignment = NSTextAlignmentCenter;
        _ZLEndTimeLabel.numberOfLines = 0;
    }
    return _ZLEndTimeLabel;
}
- (UILabel *)ZLElapsedTimeLabel{
    if (!_ZLElapsedTimeLabel) {
        _ZLElapsedTimeLabel = [[UILabel alloc] init];
        _ZLElapsedTimeLabel.textColor = [UIColor blackColor];
        _ZLElapsedTimeLabel.font = [UIFont systemFontOfSize:15];
        _ZLElapsedTimeLabel.textAlignment = NSTextAlignmentCenter;
        _ZLElapsedTimeLabel.numberOfLines = 0;
    }
    return _ZLElapsedTimeLabel;
}
- (UILabel *)ZLRightNameLabel{
    if (!_ZLRightNameLabel) {
        _ZLRightNameLabel = [[UILabel alloc] init];
        _ZLRightNameLabel.textColor = [UIColor blackColor];
        _ZLRightNameLabel.font = [UIFont systemFontOfSize:18];
        _ZLRightNameLabel.textAlignment = NSTextAlignmentCenter;
        _ZLRightNameLabel.numberOfLines = 0;
    }
    return _ZLRightNameLabel;
}
- (UILabel *)ZLRightScoreLabel{
    if (!_ZLRightScoreLabel) {
        _ZLRightScoreLabel = [[UILabel alloc] init];
        _ZLRightScoreLabel.textColor = [UIColor redColor];
        _ZLRightScoreLabel.font = [UIFont systemFontOfSize:30];
        _ZLRightScoreLabel.textAlignment = NSTextAlignmentCenter;
        _ZLRightScoreLabel.numberOfLines = 0;
    }
    return _ZLRightScoreLabel;
}
- (UILabel *)ZLVSLabel{
    if (!_ZLVSLabel) {
        _ZLVSLabel = [[UILabel alloc] init];
        _ZLVSLabel.textColor = [UIColor blackColor];
        _ZLVSLabel.font = [UIFont boldSystemFontOfSize:30];
        _ZLVSLabel.textAlignment = NSTextAlignmentCenter;
        _ZLVSLabel.numberOfLines = 0;
        _ZLVSLabel.text = @":";
    }
    return _ZLVSLabel;
}
- (UILabel *)ZLLeftNameLabel{
    if (!_ZLLeftNameLabel) {
        _ZLLeftNameLabel = [[UILabel alloc] init];
        _ZLLeftNameLabel.textColor = [UIColor blackColor];
        _ZLLeftNameLabel.font = [UIFont systemFontOfSize:18];
        _ZLLeftNameLabel.textAlignment = NSTextAlignmentCenter;
        _ZLLeftNameLabel.numberOfLines = 0;
    }
    return _ZLLeftNameLabel;
}
- (UILabel *)ZLLeftScoreLabel{
    if (!_ZLLeftScoreLabel) {
        _ZLLeftScoreLabel = [[UILabel alloc] init];
        _ZLLeftScoreLabel.textColor = [UIColor redColor];
        _ZLLeftScoreLabel.font = [UIFont systemFontOfSize:30];
        _ZLLeftScoreLabel.textAlignment = NSTextAlignmentCenter;
        _ZLLeftScoreLabel.numberOfLines = 0;
    }
    return _ZLLeftScoreLabel;
}
@end
