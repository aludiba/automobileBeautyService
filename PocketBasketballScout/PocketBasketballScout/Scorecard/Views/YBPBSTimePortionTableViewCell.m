//
//  YBPBSTimePortionTableViewCell.m
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import "YBPBSTimePortionTableViewCell.h"
#import "YBPBSScorecardViewModel.h"

@interface YBPBSTimePortionTableViewCell()
@property(nonatomic, strong)UIButton *YBPBSStartGameButton;//开始比赛
@property(nonatomic, strong)UILabel *YBPBSDisplayTimeLengthLabel;//显示比赛时长
@property(nonatomic, strong)UIButton *YBPBSEndGameButton;//结束比赛
@property(nonatomic, assign)BOOL YBPBSisOn;
@property(nonatomic, assign)BOOL YBPBSisStop;
@end
@implementation YBPBSTimePortionTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = [UIColor whiteColor];
        [self YBPBSSetContentView];
        self.YBPBSisStop = YES;
            //类方法会自动释放。
        self.YBPBSTimer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(YBPBSstartTimer) userInfo:nil repeats:YES];
        //需要让定时器暂停
        [self.YBPBSTimer setFireDate:[NSDate distantFuture]];
        [[NSRunLoop currentRunLoop] addTimer:self.YBPBSTimer forMode:NSRunLoopCommonModes];
    }
    return self;
}
#pragma mark - actions
- (void)YBPBSSetContentView{
    [self.contentView addSubview:self.YBPBSStartGameButton];
    [self.contentView addSubview:self.YBPBSDisplayTimeLengthLabel];
    [self.contentView addSubview:self.YBPBSEndGameButton];
    
    [self.YBPBSStartGameButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(50);
        make.top.equalTo(self.contentView).offset(30);
        make.width.mas_equalTo(60);
        make.height.mas_equalTo(60);
        make.bottom.equalTo(self.contentView).offset(-15);
    }];
    [self.YBPBSEndGameButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.equalTo(self.contentView).offset(-50);
        make.top.equalTo(self.contentView).offset(30);
        make.width.mas_equalTo(60);
        make.height.mas_equalTo(60);
    }];
    [self.YBPBSDisplayTimeLengthLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.YBPBSStartGameButton.mas_trailing).offset(15);
        make.centerY.equalTo(self.YBPBSStartGameButton);
        make.trailing.equalTo(self.YBPBSEndGameButton.mas_leading).offset(-15);
        make.height.mas_equalTo(44);
    }];
}
- (void)setYBPBSModel:(YBPBSScorecardViewModel *)YBPBSModel{
    _YBPBSModel = YBPBSModel;
    if (_YBPBSModel.YBPBSTimeStatisticsDateString.length) {
        self.YBPBSDisplayTimeLengthLabel.text = _YBPBSModel.YBPBSTimeStatisticsDateString;
    }
    self.YBPBSIndex = _YBPBSModel.YBPBSIndexTime;
}
-(void)YBPBSstartTimer{
    self.YBPBSIndex = 101;
    self.YBPBSSeconds++;
    if (self.YBPBSSeconds == 60) {
        self.YBPBSMinutes++;
        self.YBPBSSeconds = 0;
    }
    if (self.YBPBSMinutes == 60) {
        self.YBPBSHours++;
        self.YBPBSMinutes = 0;
    }
    NSString *dateString = [NSString stringWithFormat:@"%.2d:%.2d:%.2d",self.YBPBSHours,self.YBPBSMinutes,self.YBPBSSeconds];
    self.YBPBSModel.YBPBSTimeStatisticsDateString = dateString;
    self.YBPBSModel.YBPBSTimeStatisticsDate = [YBPBSUIUtilities YBPBSdateFromString:dateString formate:@"HH:mm:ss"];
    NSLog(@"YBPBSDisplayTimeLengthLabel:%@",dateString);
    self.YBPBSDisplayTimeLengthLabel.text = dateString;
}
- (void)YBPBSTimeControlAction:(UIButton *)sender{
    if (sender.tag == 99) {
        self.YBPBSSeconds = 0;
        self.YBPBSMinutes = 0;
        self.YBPBSHours = 0;
        self.YBPBSIndex = 0;
        [self.YBPBSTimer setFireDate:[NSDate date]];
        self.YBPBSisStop = NO;
    }else if (sender.tag == 100){
        self.YBPBSIndex = 1;
        [self.YBPBSTimer setFireDate:[NSDate distantFuture]];
        self.YBPBSisStop = YES;
    }
    if (self.YBPBSScorecardTimingB) {
        self.YBPBSScorecardTimingB(self);
    }
}
#pragma mark - 属性懒加载
- (UIButton *)YBPBSStartGameButton{
    if (!_YBPBSStartGameButton) {
        _YBPBSStartGameButton = [[UIButton alloc] init];
        [_YBPBSStartGameButton setBackgroundColor:[UIColor systemGreenColor]];
        [_YBPBSStartGameButton setTitle:NSLocalizedString(@"开始", nil) forState:UIControlStateNormal];
        _YBPBSStartGameButton.titleLabel.font = [UIFont systemFontOfSize:20];
        [_YBPBSStartGameButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        _YBPBSStartGameButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        _YBPBSStartGameButton.layer.cornerRadius = 29.0f;
        _YBPBSStartGameButton.layer.masksToBounds = YES;
        _YBPBSStartGameButton.tag = 99;
        [_YBPBSStartGameButton addTarget:self action:@selector(YBPBSTimeControlAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _YBPBSStartGameButton;
}
- (UILabel *)YBPBSDisplayTimeLengthLabel{
    if (!_YBPBSDisplayTimeLengthLabel) {
        _YBPBSDisplayTimeLengthLabel = [[UILabel alloc] init];
        _YBPBSDisplayTimeLengthLabel.textColor = [UIColor blackColor];
        _YBPBSDisplayTimeLengthLabel.backgroundColor = [UIColor cyanColor];
        _YBPBSDisplayTimeLengthLabel.font = [UIFont boldSystemFontOfSize:18];
        _YBPBSDisplayTimeLengthLabel.textAlignment = NSTextAlignmentCenter;
        _YBPBSDisplayTimeLengthLabel.layer.cornerRadius = 8.0f;
        _YBPBSDisplayTimeLengthLabel.layer.masksToBounds = YES;
        _YBPBSDisplayTimeLengthLabel.layer.borderColor = [UIColor systemRedColor].CGColor;
        _YBPBSDisplayTimeLengthLabel.layer.borderWidth = 2.0f;
        _YBPBSDisplayTimeLengthLabel.numberOfLines = 0;
        _YBPBSDisplayTimeLengthLabel.text = @"00:00";
    }
    return _YBPBSDisplayTimeLengthLabel;
}
- (UIButton *)YBPBSEndGameButton{
    if (!_YBPBSEndGameButton) {
        _YBPBSEndGameButton = [[UIButton alloc] init];
        [_YBPBSEndGameButton setBackgroundColor:[UIColor systemRedColor]];
        [_YBPBSEndGameButton setTitle:NSLocalizedString(@"停止", nil) forState:UIControlStateNormal];
        _YBPBSEndGameButton.titleLabel.font = [UIFont systemFontOfSize:20];
        [_YBPBSEndGameButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        _YBPBSEndGameButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        _YBPBSEndGameButton.layer.cornerRadius = 29.0f;
        _YBPBSEndGameButton.layer.masksToBounds = YES;
        _YBPBSEndGameButton.tag = 100;
        [_YBPBSEndGameButton addTarget:self action:@selector(YBPBSTimeControlAction:) forControlEvents:UIControlEventTouchUpInside];

    }
    return _YBPBSEndGameButton;
}
@end
