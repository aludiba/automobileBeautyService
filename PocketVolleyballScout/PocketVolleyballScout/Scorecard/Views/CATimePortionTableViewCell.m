//
//  CATimePortionTableViewCell.m
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import "CATimePortionTableViewCell.h"
#import "CAScorecardModel.h"
#import "CAScorecardViewModel.h"

@interface CATimePortionTableViewCell()
@property(nonatomic, strong)UIButton *CAStartGameButton;//开始比赛
@property(nonatomic, strong)UILabel *CADisplayTimeLengthLabel;//显示比赛时长
@property(nonatomic, strong)UIButton *CAEndGameButton;//结束比赛
@property(nonatomic, assign)BOOL CAisOn;
@property(nonatomic, assign)BOOL CAisStop;
@end
@implementation CATimePortionTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = [UIColor systemGreenColor];
        [self CASetContentView];
        self.CAisStop = YES;
            //类方法会自动释放。
        self.CATimer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(CAstartTimer) userInfo:nil repeats:YES];
        //需要让定时器暂停
        [self.CATimer setFireDate:[NSDate distantFuture]];
        [[NSRunLoop currentRunLoop] addTimer:self.CATimer forMode:NSRunLoopCommonModes];
    }
    return self;
}
#pragma mark - actions
- (void)CASetContentView{
    [self.contentView addSubview:self.CAStartGameButton];
    [self.contentView addSubview:self.CADisplayTimeLengthLabel];
    [self.contentView addSubview:self.CAEndGameButton];
    
    [self.CAStartGameButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(50);
        make.top.equalTo(self.contentView).offset(20);
        make.width.mas_equalTo(60);
        make.height.mas_equalTo(60);
        make.bottom.equalTo(self.contentView).offset(-5);
    }];
    [self.CAEndGameButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.equalTo(self.contentView).offset(-50);
        make.top.equalTo(self.contentView).offset(20);
        make.width.mas_equalTo(60);
        make.height.mas_equalTo(60);
    }];
    [self.CADisplayTimeLengthLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.CAStartGameButton.mas_trailing).offset(15);
        make.centerY.equalTo(self.CAStartGameButton);
        make.trailing.equalTo(self.CAEndGameButton.mas_leading).offset(-15);
        make.height.mas_equalTo(44);
    }];
}
- (void)setCAModel:(CAScorecardViewModel *)CAModel{
    _CAModel = CAModel;
    self.CADisplayTimeLengthLabel.text = _CAModel.CATimeStatisticsDateString;
    self.CAIndex = _CAModel.CAIndexTime;
}
-(void)CAstartTimer{
    self.CAIndex = 101;
    self.CASeconds++;
    if (self.CASeconds == 60) {
        self.CAMinutes++;
        self.CASeconds = 0;
    }
    if (self.CAMinutes == 60) {
        self.CAHours++;
        self.CAMinutes = 0;
    }
    NSString *dateString = [NSString stringWithFormat:@"%.2d:%.2d:%.2d",self.CAHours,self.CAMinutes,self.CASeconds];
    self.CAModel.CATimeStatisticsDateString = dateString;
    self.CAModel.CATimeStatisticsDate = [CAUIUtilities CAdateFromString:dateString formate:@"HH:mm:ss"];
    self.CAScoreModel.CATotalTimeString = dateString;
    self.CADisplayTimeLengthLabel.text = dateString;
}
- (void)CATimeControlAction:(UIButton *)sender{
    if (sender.tag == 99) {
//        self.CASeconds = 0;
//        self.CAMinutes = 0;
//        self.CAHours = 0;
        self.CAIndex = 0;
        [self.CATimer setFireDate:[NSDate date]];
        self.CAisStop = NO;
    }else if (sender.tag == 100){
        self.CAIndex = 1;
        [self.CATimer setFireDate:[NSDate distantFuture]];
        self.CAisStop = YES;
    }
    if (self.CAScorecardTimingB) {
        self.CAScorecardTimingB(self);
    }
}
#pragma mark - 属性懒加载
- (UIButton *)CAStartGameButton{
    if (!_CAStartGameButton) {
        _CAStartGameButton = [[UIButton alloc] init];
        [_CAStartGameButton setBackgroundColor:[UIColor greenColor]];
        [_CAStartGameButton setTitle:NSLocalizedString(@"开始", nil) forState:UIControlStateNormal];
        _CAStartGameButton.titleLabel.font = [UIFont systemFontOfSize:20];
        [_CAStartGameButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        _CAStartGameButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        _CAStartGameButton.layer.cornerRadius = 14.5f;
        _CAStartGameButton.layer.masksToBounds = YES;
        _CAStartGameButton.tag = 99;
        [_CAStartGameButton addTarget:self action:@selector(CATimeControlAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _CAStartGameButton;
}
- (UILabel *)CADisplayTimeLengthLabel{
    if (!_CADisplayTimeLengthLabel) {
        _CADisplayTimeLengthLabel = [[UILabel alloc] init];
        _CADisplayTimeLengthLabel.textColor = [UIColor whiteColor];
        _CADisplayTimeLengthLabel.backgroundColor = CAH_Color(180, 177, 158, 1);
        _CADisplayTimeLengthLabel.font = [UIFont boldSystemFontOfSize:22];
        _CADisplayTimeLengthLabel.textAlignment = NSTextAlignmentCenter;
        _CADisplayTimeLengthLabel.layer.cornerRadius = 4.0f;
        _CADisplayTimeLengthLabel.layer.masksToBounds = YES;
        _CADisplayTimeLengthLabel.numberOfLines = 0;
    }
    return _CADisplayTimeLengthLabel;
}
- (UIButton *)CAEndGameButton{
    if (!_CAEndGameButton) {
        _CAEndGameButton = [[UIButton alloc] init];
        [_CAEndGameButton setBackgroundColor:[UIColor systemRedColor]];
        [_CAEndGameButton setTitle:NSLocalizedString(@"停止", nil) forState:UIControlStateNormal];
        _CAEndGameButton.titleLabel.font = [UIFont systemFontOfSize:20];
        [_CAEndGameButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        _CAEndGameButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        _CAEndGameButton.layer.cornerRadius = 14.5f;
        _CAEndGameButton.layer.masksToBounds = YES;
        _CAEndGameButton.tag = 100;
        [_CAEndGameButton addTarget:self action:@selector(CATimeControlAction:) forControlEvents:UIControlEventTouchUpInside];

    }
    return _CAEndGameButton;
}
@end
