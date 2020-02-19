//
//  ZLBasketballTimePortionTableViewCell.m
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import "ZLBasketballTimePortionTableViewCell.h"
#import "ZLBasketballScorecardViewModel.h"

@interface ZLBasketballTimePortionTableViewCell()
@property(nonatomic, strong)UIButton *ZLStartGameButton;//开始比赛
@property(nonatomic, strong)UILabel *ZLDisplayTimeLengthLabel;//显示比赛时长
@property(nonatomic, strong)UIButton *ZLEndGameButton;//结束比赛
@property(nonatomic, assign)BOOL ZLisOn;
@property(nonatomic, assign)BOOL ZLisStop;
@end
@implementation ZLBasketballTimePortionTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = [UIColor greenColor];
        [self ZLSetContentView];
        self.ZLisStop = YES;
            //类方法会自动释放。
        self.ZLTimer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(ZLstartTimer) userInfo:nil repeats:YES];
        //需要让定时器暂停
        [self.ZLTimer setFireDate:[NSDate distantFuture]];
        [[NSRunLoop currentRunLoop] addTimer:self.ZLTimer forMode:NSRunLoopCommonModes];
    }
    return self;
}
#pragma mark - actions
- (void)ZLSetContentView{
    [self.contentView addSubview:self.ZLStartGameButton];
    [self.contentView addSubview:self.ZLDisplayTimeLengthLabel];
    [self.contentView addSubview:self.ZLEndGameButton];
    
    [self.ZLStartGameButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(50);
        make.top.equalTo(self.contentView).offset(30);
        make.width.mas_equalTo(60);
        make.height.mas_equalTo(60);
        make.bottom.equalTo(self.contentView).offset(-15);
    }];
    [self.ZLEndGameButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.equalTo(self.contentView).offset(-50);
        make.top.equalTo(self.contentView).offset(30);
        make.width.mas_equalTo(60);
        make.height.mas_equalTo(60);
    }];
    [self.ZLDisplayTimeLengthLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.ZLStartGameButton.mas_trailing).offset(15);
        make.centerY.equalTo(self.ZLStartGameButton);
        make.trailing.equalTo(self.ZLEndGameButton.mas_leading).offset(-15);
        make.height.mas_equalTo(44);
    }];
}
- (void)setZLModel:(ZLBasketballScorecardViewModel *)ZLModel{
    _ZLModel = ZLModel;
    if (_ZLModel.ZLTimeStatisticsDateString.length) {
        self.ZLDisplayTimeLengthLabel.text = _ZLModel.ZLTimeStatisticsDateString;
    }
    self.ZLIndex = _ZLModel.ZLIndexTime;
}
-(void)ZLstartTimer{
    self.ZLIndex = 101;
    self.ZLSeconds++;
    if (self.ZLSeconds == 60) {
        self.ZLMinutes++;
        self.ZLSeconds = 0;
    }
    if (self.ZLMinutes == 60) {
        self.ZLHours++;
        self.ZLMinutes = 0;
    }
    NSString *dateString = [NSString stringWithFormat:@"%.2d:%.2d:%.2d",self.ZLHours,self.ZLMinutes,self.ZLSeconds];
    self.ZLModel.ZLTimeStatisticsDateString = dateString;
    self.ZLModel.ZLTimeStatisticsDate = [ZLUIUtilities ZLdateFromString:dateString formate:@"HH:mm:ss"];
    NSLog(@"ZLDisplayTimeLengthLabel:%@",dateString);
    self.ZLDisplayTimeLengthLabel.text = dateString;
}
- (void)ZLTimeControlAction:(UIButton *)sender{
    if (sender.tag == 99) {
        self.ZLSeconds = 0;
        self.ZLMinutes = 0;
        self.ZLHours = 0;
        self.ZLIndex = 0;
        [self.ZLTimer setFireDate:[NSDate date]];
        self.ZLisStop = NO;
    }else if (sender.tag == 100){
        self.ZLIndex = 1;
        [self.ZLTimer setFireDate:[NSDate distantFuture]];
        self.ZLisStop = YES;
    }
    if (self.ZLScorecardTimingB) {
        self.ZLScorecardTimingB(self);
    }
}
#pragma mark - 属性懒加载
- (UIButton *)ZLStartGameButton{
    if (!_ZLStartGameButton) {
        _ZLStartGameButton = [[UIButton alloc] init];
        [_ZLStartGameButton setBackgroundColor:[UIColor systemGreenColor]];
        [_ZLStartGameButton setTitle:NSLocalizedString(@"开始", nil) forState:UIControlStateNormal];
        _ZLStartGameButton.titleLabel.font = [UIFont systemFontOfSize:20];
        [_ZLStartGameButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        _ZLStartGameButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        _ZLStartGameButton.layer.cornerRadius = 29.0f;
        _ZLStartGameButton.layer.masksToBounds = YES;
        _ZLStartGameButton.tag = 99;
        [_ZLStartGameButton addTarget:self action:@selector(ZLTimeControlAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _ZLStartGameButton;
}
- (UILabel *)ZLDisplayTimeLengthLabel{
    if (!_ZLDisplayTimeLengthLabel) {
        _ZLDisplayTimeLengthLabel = [[UILabel alloc] init];
        _ZLDisplayTimeLengthLabel.textColor = [UIColor blackColor];
        _ZLDisplayTimeLengthLabel.backgroundColor = [UIColor cyanColor];
        _ZLDisplayTimeLengthLabel.font = [UIFont boldSystemFontOfSize:18];
        _ZLDisplayTimeLengthLabel.textAlignment = NSTextAlignmentCenter;
        _ZLDisplayTimeLengthLabel.layer.cornerRadius = 8.0f;
        _ZLDisplayTimeLengthLabel.layer.masksToBounds = YES;
        _ZLDisplayTimeLengthLabel.layer.borderColor = [UIColor systemRedColor].CGColor;
        _ZLDisplayTimeLengthLabel.layer.borderWidth = 2.0f;
        _ZLDisplayTimeLengthLabel.numberOfLines = 0;
        _ZLDisplayTimeLengthLabel.text = @"00:00";
    }
    return _ZLDisplayTimeLengthLabel;
}
- (UIButton *)ZLEndGameButton{
    if (!_ZLEndGameButton) {
        _ZLEndGameButton = [[UIButton alloc] init];
        [_ZLEndGameButton setBackgroundColor:[UIColor systemRedColor]];
        [_ZLEndGameButton setTitle:NSLocalizedString(@"停止", nil) forState:UIControlStateNormal];
        _ZLEndGameButton.titleLabel.font = [UIFont systemFontOfSize:20];
        [_ZLEndGameButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        _ZLEndGameButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        _ZLEndGameButton.layer.cornerRadius = 29.0f;
        _ZLEndGameButton.layer.masksToBounds = YES;
        _ZLEndGameButton.tag = 100;
        [_ZLEndGameButton addTarget:self action:@selector(ZLTimeControlAction:) forControlEvents:UIControlEventTouchUpInside];

    }
    return _ZLEndGameButton;
}
@end
