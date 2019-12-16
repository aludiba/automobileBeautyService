//
//  CFRecordTableViewCell.m
//
//  Created by bykj on 2019/11/14.
//  Copyright © 2019 com. All rights reserved.
//

#import "CFRecordTableViewCell.h"
#import "CFScorecardModel.h"
@interface CFRecordTableViewCell()
@property(nonatomic, strong)UIView *CFBackView;//背景板
@property(nonatomic, strong)UILabel *CFTitleLabel;//标题
@property(nonatomic, strong)UIButton *CFDeleteButton;//删除
@property(nonatomic, strong)UILabel *CFEndTimeLabel;//结束时间
@property(nonatomic, strong)UILabel *CFElapsedTimeLabel;//总共用时
@property(nonatomic, strong)UILabel *CFRightNameLabel;//右边队伍名称
@property(nonatomic, strong)UILabel *CFRightScoreLabel;//右边队伍得分
@property(nonatomic, strong)UILabel *CFVSLabel;//VS标识
@property(nonatomic, strong)UILabel *CFLeftNameLabel;//左边队伍名称
@property(nonatomic, strong)UILabel *CFLeftScoreLabel;//左边队伍得分
@end
@implementation CFRecordTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = [UIColor cyanColor];
        [self CFSetContentView];
    }
    return self;
}
#pragma mark - actions
- (void)CFSetContentView{
    [self.contentView addSubview:self.CFBackView];
    [self.CFBackView addSubview:self.CFTitleLabel];
    [self.CFBackView addSubview:self.CFDeleteButton];
    [self.CFBackView addSubview:self.CFEndTimeLabel];
    [self.CFBackView addSubview:self.CFElapsedTimeLabel];
    [self.CFBackView addSubview:self.CFRightNameLabel];
    [self.CFBackView addSubview:self.CFRightScoreLabel];
    [self.CFBackView addSubview:self.CFVSLabel];
    [self.CFBackView addSubview:self.CFLeftNameLabel];
    [self.CFBackView addSubview:self.CFLeftScoreLabel];
    
    [self.CFBackView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(20);
        make.top.equalTo(self.contentView).offset(10);
        make.trailing.equalTo(self.contentView).offset(-20);
        make.height.mas_equalTo(254);
        make.bottom.equalTo(self.contentView).offset(-10);
    }];
    [self.CFTitleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.CFBackView);
        make.top.equalTo(self.CFBackView).offset(20);
        make.width.mas_equalTo(CFWIDTH - 16 - 16 - 26 - 16);
        make.height.mas_equalTo(30);
    }];
    [self.CFDeleteButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.CFTitleLabel);
        make.trailing.equalTo(self.CFBackView).offset(-16);
        make.width.mas_equalTo(26);
        make.height.mas_equalTo(26);
    }];
    [self.CFEndTimeLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.CFTitleLabel.mas_bottom).offset(20);
        make.leading.equalTo(self.CFBackView).offset(16);
        make.trailing.equalTo(self.CFBackView).offset(-16);
        make.height.mas_equalTo(20);
    }];
    [self.CFElapsedTimeLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.CFEndTimeLabel.mas_bottom).offset(20);
        make.leading.equalTo(self.CFBackView).offset(16);
        make.trailing.equalTo(self.CFBackView).offset(-16);
        make.height.mas_equalTo(20);
    }];
    [self.CFRightNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.CFElapsedTimeLabel.mas_bottom).offset(20);
        make.leading.equalTo(self.CFBackView).offset(16);
        make.width.mas_equalTo((CFWIDTH - 32 - 60) * 0.5);
        make.height.mas_equalTo(20);
    }];
    [self.CFRightScoreLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.CFRightNameLabel.mas_bottom).offset(20);
               make.centerX.equalTo(self.CFRightNameLabel);
               make.width.mas_equalTo((CFWIDTH - 32 - 60) * 0.5);
               make.height.mas_equalTo(44);
    }];
    [self.CFVSLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.CFRightScoreLabel);
        make.centerX.equalTo(self.CFBackView);
        make.width.mas_equalTo(44);
        make.height.mas_equalTo(44);
    }];
    [self.CFLeftNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.CFElapsedTimeLabel.mas_bottom).offset(20);
        make.trailing.equalTo(self.CFBackView).offset(-16);
        make.width.mas_equalTo((CFWIDTH - 32 - 60) * 0.5);
        make.height.mas_equalTo(20);
    }];
    [self.CFLeftScoreLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.CFLeftNameLabel.mas_bottom).offset(20);
               make.centerX.equalTo(self.CFLeftNameLabel);
               make.width.mas_equalTo((CFWIDTH - 32 - 60) * 0.5);
               make.height.mas_equalTo(44);
    }];
}
- (void)setCFModel:(CFScorecardModel *)CFModel{
    _CFModel = CFModel;
    self.CFTitleLabel.text = _CFModel.CFNatureCompetition;
    CGSize size = [self.CFTitleLabel sizeThatFits:CGSizeMake(MAXFLOAT, 30)];
    [self.CFTitleLabel mas_updateConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(size.width);
    }];
    [self.CFTitleLabel layoutIfNeeded];
    [self.contentView layoutSubviews];
    
    self.CFEndTimeLabel.text = [NSString stringWithFormat:@"%@ %@",NSLocalizedString(@"结束时间", nil),_CFModel.CFEndTimeString];
    self.CFElapsedTimeLabel.text = [NSString stringWithFormat:@"%@ %@",NSLocalizedString(@"比赛用时", nil),_CFModel.CFTotalTimeString];
    self.CFRightNameLabel.text = _CFModel.CFTeamRightName;
    self.CFRightScoreLabel.text = [NSString stringWithFormat:@"%ld",_CFModel.CFTeamRightScore];
    self.CFLeftNameLabel.text = _CFModel.CFTeamLeftName;
    self.CFLeftScoreLabel.text = [NSString stringWithFormat:@"%ld",_CFModel.CFTeamLeftScore];
}
#pragma mark - 删除
- (void)CFDeleteButton:(UIButton *)sender{
    if (self.CFRecordDeleteB) {
        self.CFRecordDeleteB(self);
    }
}
#pragma mark - 属性懒加载
- (UIView *)CFBackView{
    if (!_CFBackView) {
        _CFBackView = [[UIView alloc] init];
        _CFBackView.backgroundColor = [UIColor whiteColor];
        _CFBackView.layer.cornerRadius = 16.0f;
        _CFBackView.layer.masksToBounds = YES;
    }
    return _CFBackView;
}
- (UILabel *)CFTitleLabel{
    if (!_CFTitleLabel) {
        _CFTitleLabel = [[UILabel alloc] init];
        _CFTitleLabel.textColor = [UIColor redColor];
        _CFTitleLabel.font = [UIFont boldSystemFontOfSize:25];
        _CFTitleLabel.numberOfLines = 0;
    }
    return _CFTitleLabel;
}
- (UIButton *)CFDeleteButton{
    if (!_CFDeleteButton) {
        _CFDeleteButton = [[UIButton alloc] init];
        [_CFDeleteButton setImage:[UIImage imageNamed:@"CF_delete"] forState:UIControlStateNormal];
        [_CFDeleteButton addTarget:self action:@selector(CFDeleteButton:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _CFDeleteButton;
}
- (UILabel *)CFEndTimeLabel{
    if (!_CFEndTimeLabel) {
        _CFEndTimeLabel = [[UILabel alloc] init];
        _CFEndTimeLabel.textColor = [UIColor blackColor];
        _CFEndTimeLabel.font = [UIFont systemFontOfSize:15];
        _CFEndTimeLabel.textAlignment = NSTextAlignmentCenter;
        _CFEndTimeLabel.numberOfLines = 0;
    }
    return _CFEndTimeLabel;
}
- (UILabel *)CFElapsedTimeLabel{
    if (!_CFElapsedTimeLabel) {
        _CFElapsedTimeLabel = [[UILabel alloc] init];
        _CFElapsedTimeLabel.textColor = [UIColor blackColor];
        _CFElapsedTimeLabel.font = [UIFont systemFontOfSize:15];
        _CFElapsedTimeLabel.textAlignment = NSTextAlignmentCenter;
        _CFElapsedTimeLabel.numberOfLines = 0;
    }
    return _CFElapsedTimeLabel;
}
- (UILabel *)CFRightNameLabel{
    if (!_CFRightNameLabel) {
        _CFRightNameLabel = [[UILabel alloc] init];
        _CFRightNameLabel.textColor = [UIColor systemRedColor];
        _CFRightNameLabel.font = [UIFont systemFontOfSize:18];
        _CFRightNameLabel.textAlignment = NSTextAlignmentCenter;
        _CFRightNameLabel.numberOfLines = 0;
    }
    return _CFRightNameLabel;
}
- (UILabel *)CFRightScoreLabel{
    if (!_CFRightScoreLabel) {
        _CFRightScoreLabel = [[UILabel alloc] init];
        _CFRightScoreLabel.textColor = [UIColor systemGreenColor];
        _CFRightScoreLabel.font = [UIFont systemFontOfSize:30];
        _CFRightScoreLabel.textAlignment = NSTextAlignmentCenter;
        _CFRightScoreLabel.numberOfLines = 0;
    }
    return _CFRightScoreLabel;
}
- (UILabel *)CFVSLabel{
    if (!_CFVSLabel) {
        _CFVSLabel = [[UILabel alloc] init];
        _CFVSLabel.textColor = [UIColor systemGreenColor];
        _CFVSLabel.font = [UIFont boldSystemFontOfSize:30];
        _CFVSLabel.textAlignment = NSTextAlignmentCenter;
        _CFVSLabel.numberOfLines = 0;
        _CFVSLabel.text = @":";
    }
    return _CFVSLabel;
}
- (UILabel *)CFLeftNameLabel{
    if (!_CFLeftNameLabel) {
        _CFLeftNameLabel = [[UILabel alloc] init];
        _CFLeftNameLabel.textColor = [UIColor systemRedColor];
        _CFLeftNameLabel.font = [UIFont systemFontOfSize:18];
        _CFLeftNameLabel.textAlignment = NSTextAlignmentCenter;
        _CFLeftNameLabel.numberOfLines = 0;
    }
    return _CFLeftNameLabel;
}
- (UILabel *)CFLeftScoreLabel{
    if (!_CFLeftScoreLabel) {
        _CFLeftScoreLabel = [[UILabel alloc] init];
        _CFLeftScoreLabel.textColor = [UIColor systemGreenColor];
        _CFLeftScoreLabel.font = [UIFont systemFontOfSize:30];
        _CFLeftScoreLabel.textAlignment = NSTextAlignmentCenter;
        _CFLeftScoreLabel.numberOfLines = 0;
    }
    return _CFLeftScoreLabel;
}
@end
