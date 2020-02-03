//
//  CVSTimePortionTableViewCell.m
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import "CVSTimePortionTableViewCell.h"
#import "CVSScorecardModel.h"
#import "CVSScorecardViewModel.h"

@interface CVSTimePortionTableViewCell()
@property(nonatomic, strong)UIButton *CVSStartGameButton;//开始比赛
@property(nonatomic, strong)UILabel *CVSDisplayTimeLengthLabel;//显示比赛时长
@property(nonatomic, strong)UIButton *CVSEndGameButton;//结束比赛
@property(nonatomic, assign)BOOL CVSisOn;
@property(nonatomic, assign)BOOL CVSisStop;
@end
@implementation CVSTimePortionTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = [UIColor cyanColor];
        [self CVSSetContentView];
        self.CVSisStop = YES;
            //类方法会自动释放。
        self.CVSTimer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(CVSstartTimer) userInfo:nil repeats:YES];
        //需要让定时器暂停
        [self.CVSTimer setFireDate:[NSDate distantFuture]];
        [[NSRunLoop currentRunLoop] addTimer:self.CVSTimer forMode:NSRunLoopCommonModes];
    }
    return self;
}
#pragma mark - actions
- (void)CVSSetContentView{
    [self.contentView addSubview:self.CVSStartGameButton];
    [self.contentView addSubview:self.CVSDisplayTimeLengthLabel];
    [self.contentView addSubview:self.CVSEndGameButton];
    
    [self.CVSStartGameButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(50);
        make.top.equalTo(self.contentView).offset(20);
        make.width.mas_equalTo(60);
        make.height.mas_equalTo(60);
        make.bottom.equalTo(self.contentView).offset(-5);
    }];
    [self.CVSEndGameButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.equalTo(self.contentView).offset(-50);
        make.top.equalTo(self.contentView).offset(20);
        make.width.mas_equalTo(60);
        make.height.mas_equalTo(60);
    }];
    [self.CVSDisplayTimeLengthLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.CVSStartGameButton.mas_trailing).offset(15);
        make.centerY.equalTo(self.CVSStartGameButton);
        make.trailing.equalTo(self.CVSEndGameButton.mas_leading).offset(-15);
        make.height.mas_equalTo(44);
    }];
}
- (void)setCVSModel:(CVSScorecardViewModel *)CVSModel{
    _CVSModel = CVSModel;
    self.CVSDisplayTimeLengthLabel.text = _CVSModel.CVSTimeStatisticsDateString;
    self.CVSIndex = _CVSModel.CVSIndexTime;
}
-(void)CVSstartTimer{
    self.CVSIndex = 101;
    self.CVSSeconds++;
    if (self.CVSSeconds == 60) {
        self.CVSMinutes++;
        self.CVSSeconds = 0;
    }
    if (self.CVSMinutes == 60) {
        self.CVSHours++;
        self.CVSMinutes = 0;
    }
    NSString *dateString = [NSString stringWithFormat:@"%.2d:%.2d:%.2d",self.CVSHours,self.CVSMinutes,self.CVSSeconds];
    self.CVSModel.CVSTimeStatisticsDateString = dateString;
    self.CVSModel.CVSTimeStatisticsDate = [CVSUIUtilities CVSdateFromString:dateString formate:@"HH:mm:ss"];
    self.CVSScoreModel.CVSTotalTimeString = dateString;
    self.CVSDisplayTimeLengthLabel.text = dateString;
}
- (void)CVSTimeControlAction:(UIButton *)sender{
    if (sender.tag == 99) {
//        self.CVSSeconds = 0;
//        self.CVSMinutes = 0;
//        self.CVSHours = 0;
        self.CVSIndex = 0;
        [self.CVSTimer setFireDate:[NSDate date]];
        self.CVSisStop = NO;
    }else if (sender.tag == 100){
        self.CVSIndex = 1;
        [self.CVSTimer setFireDate:[NSDate distantFuture]];
        self.CVSisStop = YES;
    }
    if (self.CVSScorecardTimingB) {
        self.CVSScorecardTimingB(self);
    }
}
#pragma mark - 属性懒加载
- (UIButton *)CVSStartGameButton{
    if (!_CVSStartGameButton) {
        _CVSStartGameButton = [[UIButton alloc] init];
        [_CVSStartGameButton setBackgroundColor:[UIColor systemGreenColor]];
        [_CVSStartGameButton setTitle:NSLocalizedString(@"开始", nil) forState:UIControlStateNormal];
        _CVSStartGameButton.titleLabel.font = [UIFont systemFontOfSize:20];
        [_CVSStartGameButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        _CVSStartGameButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        _CVSStartGameButton.layer.cornerRadius = 14.5f;
        _CVSStartGameButton.layer.masksToBounds = YES;
        _CVSStartGameButton.tag = 99;
        [_CVSStartGameButton addTarget:self action:@selector(CVSTimeControlAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _CVSStartGameButton;
}
- (UILabel *)CVSDisplayTimeLengthLabel{
    if (!_CVSDisplayTimeLengthLabel) {
        _CVSDisplayTimeLengthLabel = [[UILabel alloc] init];
        _CVSDisplayTimeLengthLabel.textColor = [UIColor whiteColor];
        _CVSDisplayTimeLengthLabel.backgroundColor = CVSH_Color(180, 177, 158, 1);
        _CVSDisplayTimeLengthLabel.font = [UIFont boldSystemFontOfSize:25];
        _CVSDisplayTimeLengthLabel.textAlignment = NSTextAlignmentCenter;
        _CVSDisplayTimeLengthLabel.layer.cornerRadius = 4.0f;
        _CVSDisplayTimeLengthLabel.layer.masksToBounds = YES;
        _CVSDisplayTimeLengthLabel.numberOfLines = 0;
    }
    return _CVSDisplayTimeLengthLabel;
}
- (UIButton *)CVSEndGameButton{
    if (!_CVSEndGameButton) {
        _CVSEndGameButton = [[UIButton alloc] init];
        [_CVSEndGameButton setBackgroundColor:[UIColor systemRedColor]];
        [_CVSEndGameButton setTitle:NSLocalizedString(@"停止", nil) forState:UIControlStateNormal];
        _CVSEndGameButton.titleLabel.font = [UIFont systemFontOfSize:20];
        [_CVSEndGameButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        _CVSEndGameButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        _CVSEndGameButton.layer.cornerRadius = 14.5f;
        _CVSEndGameButton.layer.masksToBounds = YES;
        _CVSEndGameButton.tag = 100;
        [_CVSEndGameButton addTarget:self action:@selector(CVSTimeControlAction:) forControlEvents:UIControlEventTouchUpInside];

    }
    return _CVSEndGameButton;
}
@end
