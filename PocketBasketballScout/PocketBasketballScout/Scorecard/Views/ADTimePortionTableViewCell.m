//
//  ADTimePortionTableViewCell.m
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import "ADTimePortionTableViewCell.h"
#import "ADScorecardViewModel.h"

@interface ADTimePortionTableViewCell()
@property(nonatomic, strong)UIButton *ADStartGameButton;//开始比赛
@property(nonatomic, strong)UILabel *ADDisplayTimeLengthLabel;//显示比赛时长
@property(nonatomic, strong)UIButton *ADEndGameButton;//结束比赛
@property(nonatomic, assign)BOOL ADisOn;
@property(nonatomic, assign)BOOL ADisStop;
@end
@implementation ADTimePortionTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = [UIColor whiteColor];
        [self ADSetContentView];
        self.ADisStop = YES;
            //类方法会自动释放。
        self.ADTimer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(ADstartTimer) userInfo:nil repeats:YES];
        //需要让定时器暂停
        [self.ADTimer setFireDate:[NSDate distantFuture]];
        [[NSRunLoop currentRunLoop] addTimer:self.ADTimer forMode:NSRunLoopCommonModes];
    }
    return self;
}
#pragma mark - actions
- (void)ADSetContentView{
    [self.contentView addSubview:self.ADStartGameButton];
    [self.contentView addSubview:self.ADDisplayTimeLengthLabel];
    [self.contentView addSubview:self.ADEndGameButton];
    
    [self.ADStartGameButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(50);
        make.top.equalTo(self.contentView).offset(30);
        make.width.mas_equalTo(60);
        make.height.mas_equalTo(60);
        make.bottom.equalTo(self.contentView).offset(-15);
    }];
    [self.ADEndGameButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.equalTo(self.contentView).offset(-50);
        make.top.equalTo(self.contentView).offset(30);
        make.width.mas_equalTo(60);
        make.height.mas_equalTo(60);
    }];
    [self.ADDisplayTimeLengthLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.ADStartGameButton.mas_trailing).offset(15);
        make.centerY.equalTo(self.ADStartGameButton);
        make.trailing.equalTo(self.ADEndGameButton.mas_leading).offset(-15);
        make.height.mas_equalTo(44);
    }];
}
- (void)setADModel:(ADScorecardViewModel *)ADModel{
    _ADModel = ADModel;
    if (_ADModel.ADTimeStatisticsDateString.length) {
        self.ADDisplayTimeLengthLabel.text = _ADModel.ADTimeStatisticsDateString;
    }
    self.ADIndex = _ADModel.ADIndexTime;
}
-(void)ADstartTimer{
    self.ADIndex = 101;
    self.ADSeconds++;
    if (self.ADSeconds == 60) {
        self.ADMinutes++;
        self.ADSeconds = 0;
    }
    if (self.ADMinutes == 60) {
        self.ADHours++;
        self.ADMinutes = 0;
    }
    NSString *dateString = [NSString stringWithFormat:@"%.2d:%.2d:%.2d",self.ADHours,self.ADMinutes,self.ADSeconds];
    self.ADModel.ADTimeStatisticsDateString = dateString;
    self.ADModel.ADTimeStatisticsDate = [ADUIUtilities ADdateFromString:dateString formate:@"HH:mm:ss"];
    NSLog(@"ADDisplayTimeLengthLabel:%@",dateString);
    self.ADDisplayTimeLengthLabel.text = dateString;
}
- (void)ADTimeControlAction:(UIButton *)sender{
    if (sender.tag == 99) {
        self.ADSeconds = 0;
        self.ADMinutes = 0;
        self.ADHours = 0;
        self.ADIndex = 0;
        [self.ADTimer setFireDate:[NSDate date]];
        self.ADisStop = NO;
    }else if (sender.tag == 100){
        self.ADIndex = 1;
        [self.ADTimer setFireDate:[NSDate distantFuture]];
        self.ADisStop = YES;
    }
    if (self.ADScorecardTimingB) {
        self.ADScorecardTimingB(self);
    }
}
#pragma mark - 属性懒加载
- (UIButton *)ADStartGameButton{
    if (!_ADStartGameButton) {
        _ADStartGameButton = [[UIButton alloc] init];
        [_ADStartGameButton setBackgroundColor:[UIColor systemGreenColor]];
        [_ADStartGameButton setTitle:@"Start" forState:UIControlStateNormal];
        _ADStartGameButton.titleLabel.font = [UIFont systemFontOfSize:20];
        [_ADStartGameButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        _ADStartGameButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        _ADStartGameButton.layer.cornerRadius = 29.0f;
        _ADStartGameButton.layer.masksToBounds = YES;
        _ADStartGameButton.tag = 99;
        [_ADStartGameButton addTarget:self action:@selector(ADTimeControlAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _ADStartGameButton;
}
- (UILabel *)ADDisplayTimeLengthLabel{
    if (!_ADDisplayTimeLengthLabel) {
        _ADDisplayTimeLengthLabel = [[UILabel alloc] init];
        _ADDisplayTimeLengthLabel.textColor = [UIColor blackColor];
        _ADDisplayTimeLengthLabel.backgroundColor = [UIColor cyanColor];
        _ADDisplayTimeLengthLabel.font = [UIFont boldSystemFontOfSize:18];
        _ADDisplayTimeLengthLabel.textAlignment = NSTextAlignmentCenter;
        _ADDisplayTimeLengthLabel.layer.cornerRadius = 8.0f;
        _ADDisplayTimeLengthLabel.layer.masksToBounds = YES;
        _ADDisplayTimeLengthLabel.layer.borderColor = [UIColor systemRedColor].CGColor;
        _ADDisplayTimeLengthLabel.layer.borderWidth = 2.0f;
        _ADDisplayTimeLengthLabel.numberOfLines = 0;
        _ADDisplayTimeLengthLabel.text = @"00:00";
    }
    return _ADDisplayTimeLengthLabel;
}
- (UIButton *)ADEndGameButton{
    if (!_ADEndGameButton) {
        _ADEndGameButton = [[UIButton alloc] init];
        [_ADEndGameButton setBackgroundColor:[UIColor systemRedColor]];
        [_ADEndGameButton setTitle:@"Stop" forState:UIControlStateNormal];
        _ADEndGameButton.titleLabel.font = [UIFont systemFontOfSize:20];
        [_ADEndGameButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        _ADEndGameButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        _ADEndGameButton.layer.cornerRadius = 29.0f;
        _ADEndGameButton.layer.masksToBounds = YES;
        _ADEndGameButton.tag = 100;
        [_ADEndGameButton addTarget:self action:@selector(ADTimeControlAction:) forControlEvents:UIControlEventTouchUpInside];

    }
    return _ADEndGameButton;
}
@end
