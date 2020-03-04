//
//  ABTimePortionTableViewCell.m
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import "ABTimePortionTableViewCell.h"
#import "ABScorecardModel.h"
#import "ABScorecardViewModel.h"

@interface ABTimePortionTableViewCell()
@property(nonatomic, strong)UIButton *ABStartGameButton;//开始比赛
@property(nonatomic, strong)UILabel *ABDisplayTimeLengthLabel;//显示比赛时长
@property(nonatomic, strong)UIButton *ABEndGameButton;//结束比赛
@property(nonatomic, assign)BOOL ABisOn;
@property(nonatomic, assign)BOOL ABisStop;
@end
@implementation ABTimePortionTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = [UIColor cyanColor];
        [self ABSetContentView];
        self.ABisStop = YES;
            //类方法会自动释放。
        self.ABTimer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(ABstartTimer) userInfo:nil repeats:YES];
        //需要让定时器暂停
        [self.ABTimer setFireDate:[NSDate distantFuture]];
        [[NSRunLoop currentRunLoop] addTimer:self.ABTimer forMode:NSRunLoopCommonModes];
    }
    return self;
}
#pragma mark - actions
- (void)ABSetContentView{
    [self.contentView addSubview:self.ABStartGameButton];
    [self.contentView addSubview:self.ABDisplayTimeLengthLabel];
    [self.contentView addSubview:self.ABEndGameButton];
    
    [self.ABStartGameButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(50);
        make.top.equalTo(self.contentView).offset(20);
        make.width.mas_equalTo(60);
        make.height.mas_equalTo(60);
        make.bottom.equalTo(self.contentView).offset(-5);
    }];
    [self.ABEndGameButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.equalTo(self.contentView).offset(-50);
        make.top.equalTo(self.contentView).offset(20);
        make.width.mas_equalTo(60);
        make.height.mas_equalTo(60);
    }];
    [self.ABDisplayTimeLengthLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.ABStartGameButton.mas_trailing).offset(15);
        make.centerY.equalTo(self.ABStartGameButton);
        make.trailing.equalTo(self.ABEndGameButton.mas_leading).offset(-15);
        make.height.mas_equalTo(44);
    }];
}
- (void)setABModel:(ABScorecardViewModel *)ABModel{
    _ABModel = ABModel;
    self.ABDisplayTimeLengthLabel.text = _ABModel.ABTimeStatisticsDateString;
    self.ABIndex = _ABModel.ABIndexTime;
}
-(void)ABstartTimer{
    self.ABIndex = 101;
    self.ABSeconds++;
    if (self.ABSeconds == 60) {
        self.ABMinutes++;
        self.ABSeconds = 0;
    }
    if (self.ABMinutes == 60) {
        self.ABHours++;
        self.ABMinutes = 0;
    }
    NSString *dateString = [NSString stringWithFormat:@"%.2d:%.2d:%.2d",self.ABHours,self.ABMinutes,self.ABSeconds];
    self.ABModel.ABTimeStatisticsDateString = dateString;
    self.ABModel.ABTimeStatisticsDate = [ABUIUtilities ABdateFromString:dateString formate:@"HH:mm:ss"];
    self.ABScoreModel.ABTotalTimeString = dateString;
    self.ABDisplayTimeLengthLabel.text = dateString;
}
- (void)ABTimeControlAction:(UIButton *)sender{
    if (sender.tag == 99) {
//        self.ABSeconds = 0;
//        self.ABMinutes = 0;
//        self.ABHours = 0;
        self.ABIndex = 0;
        [self.ABTimer setFireDate:[NSDate date]];
        self.ABisStop = NO;
    }else if (sender.tag == 100){
        self.ABIndex = 1;
        [self.ABTimer setFireDate:[NSDate distantFuture]];
        self.ABisStop = YES;
    }
    if (self.ABScorecardTimingB) {
        self.ABScorecardTimingB(self);
    }
}
#pragma mark - 属性懒加载
- (UIButton *)ABStartGameButton{
    if (!_ABStartGameButton) {
        _ABStartGameButton = [[UIButton alloc] init];
        [_ABStartGameButton setBackgroundColor:[UIColor systemGreenColor]];
        [_ABStartGameButton setTitle:NSLocalizedString(@"开始", nil) forState:UIControlStateNormal];
        _ABStartGameButton.titleLabel.font = [UIFont systemFontOfSize:20];
        [_ABStartGameButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        _ABStartGameButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        _ABStartGameButton.layer.cornerRadius = 14.5f;
        _ABStartGameButton.layer.masksToBounds = YES;
        _ABStartGameButton.tag = 99;
        [_ABStartGameButton addTarget:self action:@selector(ABTimeControlAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _ABStartGameButton;
}
- (UILabel *)ABDisplayTimeLengthLabel{
    if (!_ABDisplayTimeLengthLabel) {
        _ABDisplayTimeLengthLabel = [[UILabel alloc] init];
        _ABDisplayTimeLengthLabel.textColor = [UIColor whiteColor];
        _ABDisplayTimeLengthLabel.backgroundColor = ABH_Color(180, 177, 158, 1);
        _ABDisplayTimeLengthLabel.font = [UIFont boldSystemFontOfSize:22];
        _ABDisplayTimeLengthLabel.textAlignment = NSTextAlignmentCenter;
        _ABDisplayTimeLengthLabel.layer.cornerRadius = 4.0f;
        _ABDisplayTimeLengthLabel.layer.masksToBounds = YES;
        _ABDisplayTimeLengthLabel.numberOfLines = 0;
    }
    return _ABDisplayTimeLengthLabel;
}
- (UIButton *)ABEndGameButton{
    if (!_ABEndGameButton) {
        _ABEndGameButton = [[UIButton alloc] init];
        [_ABEndGameButton setBackgroundColor:[UIColor systemRedColor]];
        [_ABEndGameButton setTitle:NSLocalizedString(@"停止", nil) forState:UIControlStateNormal];
        _ABEndGameButton.titleLabel.font = [UIFont systemFontOfSize:20];
        [_ABEndGameButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        _ABEndGameButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        _ABEndGameButton.layer.cornerRadius = 14.5f;
        _ABEndGameButton.layer.masksToBounds = YES;
        _ABEndGameButton.tag = 100;
        [_ABEndGameButton addTarget:self action:@selector(ABTimeControlAction:) forControlEvents:UIControlEventTouchUpInside];

    }
    return _ABEndGameButton;
}
@end
