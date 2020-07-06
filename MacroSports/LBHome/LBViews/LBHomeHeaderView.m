//
//  LBHomeHeaderView.m
//  MacroSports
//
//  Created by user on 2020/7/4.
//  Copyright © 2020 macro. All rights reserved.
//

#import "LBHomeHeaderView.h"
@interface LBHomeHeaderView()
@property(nonatomic, strong)UIImageView *LBHeaderImgView;

@property(nonatomic, strong)UIButton *LBTeamBtn;
@property(nonatomic, strong)UILabel *LBTeamLbl;
@property(nonatomic, strong)UIImageView *LBTeamImgView;

@property(nonatomic, strong)UIButton *LBStopwatchBtn;
@property(nonatomic, strong)UILabel *LBStopwatchLbl;
@property(nonatomic, strong)UIImageView *LBStopwatchImgView;

@property(nonatomic, strong)UIImageView *LBCreateGameImgView;
@property(nonatomic, strong)UIButton *LBCreateGameBtn;
@property(nonatomic, strong)UILabel *LBCreateGameLbl;
@property(nonatomic, strong)UIImageView *LBCreateGameImgView1;

@property(nonatomic, strong)UILabel *LBMatchListLbl;
@property(nonatomic, strong)UIButton *LBMoreMatchBtn;
@end
@implementation LBHomeHeaderView
- (instancetype)initWithReuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithReuseIdentifier:reuseIdentifier]) {
        [self setContentView];
        [self setContentLayout];
    }
    return self;
}
- (void)layoutSubviews{
    [super layoutSubviews];
}
#pragma mark - actions
- (void)setContentView{
    [self.contentView addSubview:self.LBHeaderImgView];
    [self.contentView addSubview:self.LBTeamBtn];
    [self.LBTeamBtn addSubview:self.LBTeamLbl];
    [self.LBTeamBtn addSubview:self.LBTeamImgView];
    [self.contentView addSubview:self.LBStopwatchBtn];
    [self.LBStopwatchBtn addSubview:self.LBStopwatchLbl];
    [self.LBStopwatchBtn addSubview:self.LBStopwatchImgView];
    [self.contentView addSubview:self.LBCreateGameBtn];
    [self.LBCreateGameBtn addSubview:self.LBCreateGameLbl];
    [self.LBCreateGameBtn addSubview:self.LBCreateGameImgView];
    [self.LBCreateGameBtn addSubview:self.LBCreateGameImgView1];
    [self.contentView addSubview:self.LBMatchListLbl];
    [self.contentView addSubview:self.LBMoreMatchBtn];
}
- (void)setContentLayout{
    [self.LBHeaderImgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView);
        make.trailing.equalTo(self.contentView);
        make.top.equalTo(self.contentView);
        make.height.mas_equalTo(341.5);
    }];
    [self.LBTeamBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(16);
        make.top.equalTo(self.LBHeaderImgView.mas_bottom).offset(20);
        make.width.mas_equalTo((LBWIDTH - 16 * 3) * 0.5);
        make.height.mas_equalTo(66);
    }];
    [self.LBTeamLbl mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.LBTeamBtn.mas_leading).offset(20);
        make.width.mas_equalTo(40);
        make.centerY.equalTo(self.LBTeamBtn.mas_centerY);
        make.height.mas_equalTo(20);
    }];
    [self.LBTeamImgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.LBTeamLbl.mas_trailing).offset(20);
        make.width.mas_equalTo(40);
        make.centerY.equalTo(self.LBTeamBtn.mas_centerY);
        make.height.mas_equalTo(40);
    }];
    [self.LBStopwatchBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.equalTo(self.contentView).offset(-16);
        make.top.equalTo(self.LBHeaderImgView.mas_bottom).offset(20);
        make.width.mas_equalTo((LBWIDTH - 16 * 3) * 0.5);
        make.height.mas_equalTo(66);
    }];
    [self.LBStopwatchLbl mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.LBStopwatchBtn.mas_leading).offset(20);
        make.width.mas_equalTo(40);
        make.centerY.equalTo(self.LBStopwatchBtn.mas_centerY);
        make.height.mas_equalTo(20);
    }];
    [self.LBStopwatchImgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.LBStopwatchLbl.mas_trailing).offset(20);
        make.width.mas_equalTo(40);
        make.centerY.equalTo(self.LBStopwatchBtn.mas_centerY);
        make.height.mas_equalTo(40);
    }];
    [self.LBCreateGameBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.LBStopwatchBtn.mas_bottom).offset(20);
        make.leading.equalTo(self.contentView).offset(16);
        make.trailing.equalTo(self.contentView).offset(-16);
        make.height.mas_equalTo(66);
        make.bottom.equalTo(self.contentView).offset(-60);
    }];
    [self.LBCreateGameLbl mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.LBCreateGameBtn);
        make.centerY.equalTo(self.LBCreateGameBtn);
        make.width.mas_equalTo(100);
        make.height.mas_equalTo(22);
    }];
    [self.LBCreateGameImgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.LBCreateGameBtn);
        make.trailing.equalTo(self.LBCreateGameLbl.mas_leading).offset(-20);
        make.width.mas_equalTo(40);
        make.height.mas_equalTo(40);
    }];
    [self.LBCreateGameImgView1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.LBCreateGameBtn);
        make.leading.equalTo(self.LBCreateGameLbl.mas_trailing).offset(20);
        make.width.mas_equalTo(40);
        make.height.mas_equalTo(40);
    }];
    [self.LBMatchListLbl mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(16);
        make.top.equalTo(self.LBCreateGameBtn.mas_bottom).offset(20);
        make.width.mas_equalTo(70);
        make.height.mas_equalTo(20);
    }];
    [self.LBMoreMatchBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.equalTo(self.contentView).offset(-16);
        make.top.equalTo(self.LBCreateGameBtn.mas_bottom).offset(20);
        make.width.mas_equalTo(70);
        make.height.mas_equalTo(20);
    }];
}
- (void)LBBtnAction:(UIButton *)sender{
    self.LBIndex = sender.tag;
    if (self.LBHeaderActionBlock) {
        self.LBHeaderActionBlock(self);
    }
}
#pragma mark - 属性懒加载
- (UIImageView *)LBHeaderImgView{
    if (!_LBHeaderImgView) {
        _LBHeaderImgView = [[UIImageView alloc] init];
        _LBHeaderImgView.image = [UIImage imageNamed:@"LB_lvyinchang"];
    }
    return _LBHeaderImgView;
}
- (UIButton *)LBTeamBtn{
    if (!_LBTeamBtn) {
        _LBTeamBtn = [[UIButton alloc] init];
        _LBTeamBtn.tag = 99;
        _LBTeamBtn.backgroundColor = [UIColor systemGreenColor];
        _LBTeamBtn.layer.cornerRadius = 4.0f;
        _LBTeamBtn.layer.masksToBounds = YES;
        [_LBTeamBtn addTarget:self action:@selector(LBBtnAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _LBTeamBtn;
}
- (UILabel *)LBTeamLbl{
    if (!_LBTeamLbl) {
        _LBTeamLbl = [[UILabel alloc] init];
        _LBTeamLbl.textColor = [UIColor blackColor];
        _LBTeamLbl.font = [UIFont boldSystemFontOfSize:18];
        _LBTeamLbl.text = @"球队";
    }
    return _LBTeamLbl;
}
- (UIImageView *)LBTeamImgView{
    if (!_LBTeamImgView) {
        _LBTeamImgView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"LB_iconfont"]];
    }
    return _LBTeamImgView;
}
- (UIButton *)LBStopwatchBtn{
    if (!_LBStopwatchBtn) {
        _LBStopwatchBtn = [[UIButton alloc] init];
        _LBStopwatchBtn.tag = 100;
        _LBStopwatchBtn.backgroundColor = [UIColor systemGreenColor];
        _LBStopwatchBtn.layer.cornerRadius = 4.0f;
        _LBStopwatchBtn.layer.masksToBounds = YES;
        [_LBStopwatchBtn addTarget:self action:@selector(LBBtnAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _LBStopwatchBtn;
}
- (UILabel *)LBStopwatchLbl{
    if (!_LBStopwatchLbl) {
        _LBStopwatchLbl = [[UILabel alloc] init];
        _LBStopwatchLbl.textColor = [UIColor blackColor];
        _LBStopwatchLbl.font = [UIFont boldSystemFontOfSize:18];
        _LBStopwatchLbl.text = @"秒表";
    }
    return _LBStopwatchLbl;
}
- (UIImageView *)LBStopwatchImgView{
    if (!_LBStopwatchImgView) {
        _LBStopwatchImgView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"LB_miaobiao"]];
    }
    return _LBStopwatchImgView;
}
- (UIImageView *)LBCreateGameImgView{
    if (!_LBCreateGameImgView) {
        _LBCreateGameImgView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"LB_zuqiu"]];
    }
    return _LBCreateGameImgView;
}
- (UIButton *)LBCreateGameBtn{
    if (!_LBCreateGameBtn) {
        _LBCreateGameBtn = [[UIButton alloc] init];
        _LBCreateGameBtn.tag = 101;
        _LBCreateGameBtn.backgroundColor = [UIColor systemGreenColor];
        _LBCreateGameBtn.layer.cornerRadius = 4.0f;
        _LBCreateGameBtn.layer.masksToBounds = YES;
        [_LBCreateGameBtn addTarget:self action:@selector(LBBtnAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _LBCreateGameBtn;
}
- (UILabel *)LBCreateGameLbl{
    if (!_LBCreateGameLbl) {
        _LBCreateGameLbl = [[UILabel alloc] init];
        _LBCreateGameLbl.textColor = [UIColor blackColor];
        _LBCreateGameLbl.font = [UIFont boldSystemFontOfSize:18];
        _LBCreateGameLbl.text = @"创建比赛";
        _LBCreateGameLbl.textAlignment = NSTextAlignmentCenter;
    }
    return _LBCreateGameLbl;
}
- (UIImageView *)LBCreateGameImgView1{
    if (!_LBCreateGameImgView1) {
        _LBCreateGameImgView1 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"LB_zuqiu"]];
    }
    return _LBCreateGameImgView1;
}
- (UILabel *)LBMatchListLbl{
    if (!_LBMatchListLbl) {
        _LBMatchListLbl = [[UILabel alloc] init];
        _LBMatchListLbl.font = [UIFont systemFontOfSize:17];
        _LBMatchListLbl.textColor = [UIColor blackColor];
        _LBMatchListLbl.text = @"比赛列表";
    }
    return _LBMatchListLbl;
}
- (UIButton *)LBMoreMatchBtn{
    if (!_LBMoreMatchBtn) {
        _LBMoreMatchBtn = [[UIButton alloc] init];
        _LBMoreMatchBtn.tag = 102;
        _LBMoreMatchBtn.titleLabel.font = [UIFont systemFontOfSize:16];
        _LBMoreMatchBtn.titleLabel.textAlignment = NSTextAlignmentRight;
        [_LBMoreMatchBtn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
        [_LBMoreMatchBtn setTitle:@"更多比赛" forState:UIControlStateNormal];
        [_LBMoreMatchBtn addTarget:self action:@selector(LBBtnAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _LBMoreMatchBtn;
}
@end
