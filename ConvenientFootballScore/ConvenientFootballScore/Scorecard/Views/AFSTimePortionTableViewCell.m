//
//  AFSTimePortionTableViewCell.m
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import "AFSTimePortionTableViewCell.h"
#import "AFSScorecardViewModel.h"

@interface AFSTimePortionTableViewCell()
@property(nonatomic, strong)UIButton *AFSStartGameButton;//开始比赛
@property(nonatomic, strong)UILabel *AFSDisplayTimeLengthLabel;//显示比赛时长
@property(nonatomic, strong)UIButton *AFSEndGameButton;//结束比赛
@property(nonatomic, assign)BOOL AFSisOn;
@property(nonatomic, assign)BOOL AFSisStop;
@end
@implementation AFSTimePortionTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self AFSSetContentView];
        
        self.AFSisStop = YES;
            //类方法会自动释放。
        self.AFSTimer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(AFSstartTimer) userInfo:nil repeats:YES];
        //需要让定时器暂停
        [self.AFSTimer setFireDate:[NSDate distantFuture]];
        [[NSRunLoop currentRunLoop] addTimer:self.AFSTimer forMode:NSRunLoopCommonModes];
    }
    return self;
}
#pragma mark - actions
- (void)AFSSetContentView{
    [self.contentView addSubview:self.AFSStartGameButton];
    [self.contentView addSubview:self.AFSDisplayTimeLengthLabel];
    [self.contentView addSubview:self.AFSEndGameButton];
    
    [self.AFSStartGameButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(50);
        make.top.equalTo(self.contentView).offset(30);
        make.width.mas_equalTo(60);
        make.height.mas_equalTo(60);
        make.bottom.equalTo(self.contentView).offset(-30);
    }];
    [self.AFSEndGameButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.equalTo(self.contentView).offset(-50);
        make.top.equalTo(self.contentView).offset(30);
        make.width.mas_equalTo(60);
        make.height.mas_equalTo(60);
    }];
    [self.AFSDisplayTimeLengthLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.AFSStartGameButton.mas_trailing).offset(15);
        make.centerY.equalTo(self.AFSStartGameButton);
        make.trailing.equalTo(self.AFSEndGameButton.mas_leading).offset(-15);
        make.height.mas_equalTo(44);
    }];
}
- (void)setAFSModel:(AFSScorecardViewModel *)AFSModel{
    _AFSModel = AFSModel;
    self.AFSDisplayTimeLengthLabel.text = _AFSModel.AFSTimeStatisticsDateString;
    self.AFSIndex = _AFSModel.AFSIndexTime;
}
-(void)AFSstartTimer{
    self.AFSIndex = 101;
    self.AFSSeconds++;
    if (self.AFSSeconds == 60) {
        self.AFSMinutes++;
        self.AFSSeconds = 0;
    }
    if (self.AFSMinutes == 60) {
        self.AFSHours++;
        self.AFSMinutes = 0;
    }
    NSString *dateString = [NSString stringWithFormat:@"%.2d:%.2d:%.2d",self.AFSHours,self.AFSMinutes,self.AFSSeconds];
    self.AFSModel.AFSTimeStatisticsDateString = dateString;
    self.AFSModel.AFSTimeStatisticsDate = [AFSUIUtilities AFSdateFromString:dateString formate:@"HH:mm:ss"];
    self.AFSDisplayTimeLengthLabel.text = dateString;
}
- (void)AFSTimeControlAction:(UIButton *)sender{
    if (sender.tag == 99) {
        self.AFSSeconds = 0;
        self.AFSMinutes = 0;
        self.AFSHours = 0;
        self.AFSIndex = 0;
        [self.AFSTimer setFireDate:[NSDate date]];
        self.AFSisStop = NO;
    }else if (sender.tag == 100){
        self.AFSIndex = 1;
        [self.AFSTimer setFireDate:[NSDate distantFuture]];
        self.AFSisStop = YES;
    }
    if (self.AFSScorecardTimingB) {
        self.AFSScorecardTimingB(self);
    }
}
#pragma mark - 属性懒加载
- (UIButton *)AFSStartGameButton{
    if (!_AFSStartGameButton) {
        _AFSStartGameButton = [[UIButton alloc] init];
        [_AFSStartGameButton setBackgroundColor:[UIColor systemGreenColor]];
        [_AFSStartGameButton setTitle:NSLocalizedString(@"开始", nil) forState:UIControlStateNormal];
        _AFSStartGameButton.titleLabel.font = [UIFont systemFontOfSize:20];
        [_AFSStartGameButton setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
        _AFSStartGameButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        _AFSStartGameButton.layer.cornerRadius = 8.0f;
        _AFSStartGameButton.layer.masksToBounds = YES;
        _AFSStartGameButton.tag = 99;
        [_AFSStartGameButton addTarget:self action:@selector(AFSTimeControlAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _AFSStartGameButton;
}
- (UILabel *)AFSDisplayTimeLengthLabel{
    if (!_AFSDisplayTimeLengthLabel) {
        _AFSDisplayTimeLengthLabel = [[UILabel alloc] init];
        _AFSDisplayTimeLengthLabel.backgroundColor = [UIColor systemGreenColor];
        _AFSDisplayTimeLengthLabel.textColor = [UIColor whiteColor];
        _AFSDisplayTimeLengthLabel.font = [UIFont boldSystemFontOfSize:25];
        _AFSDisplayTimeLengthLabel.textAlignment = NSTextAlignmentCenter;
        _AFSDisplayTimeLengthLabel.layer.cornerRadius = 8.0f;
        _AFSDisplayTimeLengthLabel.layer.masksToBounds = YES;
        _AFSDisplayTimeLengthLabel.numberOfLines = 0;
    }
    return _AFSDisplayTimeLengthLabel;
}
- (UIButton *)AFSEndGameButton{
    if (!_AFSEndGameButton) {
        _AFSEndGameButton = [[UIButton alloc] init];
        [_AFSEndGameButton setBackgroundColor:[UIColor systemGreenColor]];
        [_AFSEndGameButton setTitle:NSLocalizedString(@"停止", nil) forState:UIControlStateNormal];
        _AFSEndGameButton.titleLabel.font = [UIFont systemFontOfSize:20];
        [_AFSEndGameButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        _AFSEndGameButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        _AFSEndGameButton.layer.cornerRadius = 8.0f;
        _AFSEndGameButton.layer.masksToBounds = YES;
        _AFSEndGameButton.tag = 100;
        [_AFSEndGameButton addTarget:self action:@selector(AFSTimeControlAction:) forControlEvents:UIControlEventTouchUpInside];

    }
    return _AFSEndGameButton;
}
@end
