//
//  WBYBKOKTimePortionTableViewCell.m
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import "WBYBKOKTimePortionTableViewCell.h"
#import "WBYBKOKScorecardViewModel.h"

@interface WBYBKOKTimePortionTableViewCell()
@property(nonatomic, strong)UIButton *WBYBKOKStartGameButton;//开始比赛
@property(nonatomic, strong)UILabel *WBYBKOKDisplayTimeLengthLabel;//显示比赛时长
@property(nonatomic, strong)UIButton *WBYBKOKEndGameButton;//结束比赛
@property(nonatomic, assign)BOOL WBYBKOKisOn;
@property(nonatomic, assign)BOOL WBYBKOKisStop;
@end
@implementation WBYBKOKTimePortionTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = [UIColor whiteColor];
        [self WBYBKOKSetContentView];
        self.WBYBKOKisStop = YES;
            //类方法会自动释放。
        self.WBYBKOKTimer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(WBYBKOKstartTimer) userInfo:nil repeats:YES];
        //需要让定时器暂停
        [self.WBYBKOKTimer setFireDate:[NSDate distantFuture]];
        [[NSRunLoop currentRunLoop] addTimer:self.WBYBKOKTimer forMode:NSRunLoopCommonModes];
    }
    return self;
}
#pragma mark - actions
- (void)WBYBKOKSetContentView{
    [self.contentView addSubview:self.WBYBKOKStartGameButton];
    [self.contentView addSubview:self.WBYBKOKDisplayTimeLengthLabel];
    [self.contentView addSubview:self.WBYBKOKEndGameButton];
    
    [self.WBYBKOKStartGameButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(50);
        make.top.equalTo(self.contentView).offset(30);
        make.width.mas_equalTo(60);
        make.height.mas_equalTo(60);
        make.bottom.equalTo(self.contentView).offset(-15);
    }];
    [self.WBYBKOKEndGameButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.equalTo(self.contentView).offset(-50);
        make.top.equalTo(self.contentView).offset(30);
        make.width.mas_equalTo(60);
        make.height.mas_equalTo(60);
    }];
    [self.WBYBKOKDisplayTimeLengthLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.WBYBKOKStartGameButton.mas_trailing).offset(15);
        make.centerY.equalTo(self.WBYBKOKStartGameButton);
        make.trailing.equalTo(self.WBYBKOKEndGameButton.mas_leading).offset(-15);
        make.height.mas_equalTo(44);
    }];
}
- (void)setWBYBKOKModel:(WBYBKOKScorecardViewModel *)WBYBKOKModel{
    _WBYBKOKModel = WBYBKOKModel;
    if (_WBYBKOKModel.WBYBKOKTimeStatisticsDateString.length) {
        self.WBYBKOKDisplayTimeLengthLabel.text = _WBYBKOKModel.WBYBKOKTimeStatisticsDateString;
    }
    self.WBYBKOKIndex = _WBYBKOKModel.WBYBKOKIndexTime;
}
-(void)WBYBKOKstartTimer{
    self.WBYBKOKIndex = 101;
    self.WBYBKOKSeconds++;
    if (self.WBYBKOKSeconds == 60) {
        self.WBYBKOKMinutes++;
        self.WBYBKOKSeconds = 0;
    }
    if (self.WBYBKOKMinutes == 60) {
        self.WBYBKOKHours++;
        self.WBYBKOKMinutes = 0;
    }
    NSString *dateString = [NSString stringWithFormat:@"%.2d:%.2d:%.2d",self.WBYBKOKHours,self.WBYBKOKMinutes,self.WBYBKOKSeconds];
    self.WBYBKOKModel.WBYBKOKTimeStatisticsDateString = dateString;
    self.WBYBKOKModel.WBYBKOKTimeStatisticsDate = [WBYBKOKUIUtilities WBYBKOKdateFromString:dateString formate:@"HH:mm:ss"];
    NSLog(@"WBYBKOKDisplayTimeLengthLabel:%@",dateString);
    self.WBYBKOKDisplayTimeLengthLabel.text = dateString;
}
- (void)WBYBKOKTimeControlAction:(UIButton *)sender{
    if (sender.tag == 99) {
        self.WBYBKOKSeconds = 0;
        self.WBYBKOKMinutes = 0;
        self.WBYBKOKHours = 0;
        self.WBYBKOKIndex = 0;
        [self.WBYBKOKTimer setFireDate:[NSDate date]];
        self.WBYBKOKisStop = NO;
    }else if (sender.tag == 100){
        self.WBYBKOKIndex = 1;
        [self.WBYBKOKTimer setFireDate:[NSDate distantFuture]];
        self.WBYBKOKisStop = YES;
    }
    if (self.WBYBKOKScorecardTimingB) {
        self.WBYBKOKScorecardTimingB(self);
    }
}
#pragma mark - 属性懒加载
- (UIButton *)WBYBKOKStartGameButton{
    if (!_WBYBKOKStartGameButton) {
        _WBYBKOKStartGameButton = [[UIButton alloc] init];
        [_WBYBKOKStartGameButton setBackgroundColor:[UIColor systemGreenColor]];
        [_WBYBKOKStartGameButton setTitle:NSLocalizedString(@"开始", nil) forState:UIControlStateNormal];
        _WBYBKOKStartGameButton.titleLabel.font = [UIFont systemFontOfSize:20];
        [_WBYBKOKStartGameButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        _WBYBKOKStartGameButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        _WBYBKOKStartGameButton.layer.cornerRadius = 29.0f;
        _WBYBKOKStartGameButton.layer.masksToBounds = YES;
        _WBYBKOKStartGameButton.tag = 99;
        [_WBYBKOKStartGameButton addTarget:self action:@selector(WBYBKOKTimeControlAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _WBYBKOKStartGameButton;
}
- (UILabel *)WBYBKOKDisplayTimeLengthLabel{
    if (!_WBYBKOKDisplayTimeLengthLabel) {
        _WBYBKOKDisplayTimeLengthLabel = [[UILabel alloc] init];
        _WBYBKOKDisplayTimeLengthLabel.textColor = [UIColor blackColor];
        _WBYBKOKDisplayTimeLengthLabel.backgroundColor = [UIColor cyanColor];
        _WBYBKOKDisplayTimeLengthLabel.font = [UIFont boldSystemFontOfSize:18];
        _WBYBKOKDisplayTimeLengthLabel.textAlignment = NSTextAlignmentCenter;
        _WBYBKOKDisplayTimeLengthLabel.layer.cornerRadius = 8.0f;
        _WBYBKOKDisplayTimeLengthLabel.layer.masksToBounds = YES;
        _WBYBKOKDisplayTimeLengthLabel.layer.borderColor = [UIColor systemRedColor].CGColor;
        _WBYBKOKDisplayTimeLengthLabel.layer.borderWidth = 2.0f;
        _WBYBKOKDisplayTimeLengthLabel.numberOfLines = 0;
        _WBYBKOKDisplayTimeLengthLabel.text = @"00:00";
    }
    return _WBYBKOKDisplayTimeLengthLabel;
}
- (UIButton *)WBYBKOKEndGameButton{
    if (!_WBYBKOKEndGameButton) {
        _WBYBKOKEndGameButton = [[UIButton alloc] init];
        [_WBYBKOKEndGameButton setBackgroundColor:[UIColor systemRedColor]];
        [_WBYBKOKEndGameButton setTitle:NSLocalizedString(@"停止", nil) forState:UIControlStateNormal];
        _WBYBKOKEndGameButton.titleLabel.font = [UIFont systemFontOfSize:20];
        [_WBYBKOKEndGameButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        _WBYBKOKEndGameButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        _WBYBKOKEndGameButton.layer.cornerRadius = 29.0f;
        _WBYBKOKEndGameButton.layer.masksToBounds = YES;
        _WBYBKOKEndGameButton.tag = 100;
        [_WBYBKOKEndGameButton addTarget:self action:@selector(WBYBKOKTimeControlAction:) forControlEvents:UIControlEventTouchUpInside];

    }
    return _WBYBKOKEndGameButton;
}
@end
