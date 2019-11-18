//
//  BTTimePortionTableViewCell.m
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import "BTTimePortionTableViewCell.h"
#import "BTScorecardViewModel.h"

@interface BTTimePortionTableViewCell()
@property(nonatomic, strong)UIButton *BTStartGameButton;//开始比赛
@property(nonatomic, strong)UILabel *BTDisplayTimeLengthLabel;//显示比赛时长
@property(nonatomic, strong)UIButton *BTEndGameButton;//结束比赛
@property(nonatomic, assign)BOOL BTisOn;
@property(nonatomic, assign)BOOL BTisStop;
@end
@implementation BTTimePortionTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = [UIColor cyanColor];
        [self BTSetContentView];
        self.BTisStop = YES;
            //类方法会自动释放。
        self.BTTimer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(BTstartTimer) userInfo:nil repeats:YES];
        //需要让定时器暂停
        [self.BTTimer setFireDate:[NSDate distantFuture]];
        [[NSRunLoop currentRunLoop] addTimer:self.BTTimer forMode:NSRunLoopCommonModes];
    }
    return self;
}
#pragma mark - actions
- (void)BTSetContentView{
    [self.contentView addSubview:self.BTStartGameButton];
    [self.contentView addSubview:self.BTDisplayTimeLengthLabel];
    [self.contentView addSubview:self.BTEndGameButton];
    
    [self.BTStartGameButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(50);
        make.top.equalTo(self.contentView).offset(30);
        make.width.mas_equalTo(60);
        make.height.mas_equalTo(60);
        make.bottom.equalTo(self.contentView).offset(-15);
    }];
    [self.BTEndGameButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.equalTo(self.contentView).offset(-50);
        make.top.equalTo(self.contentView).offset(30);
        make.width.mas_equalTo(60);
        make.height.mas_equalTo(60);
    }];
    [self.BTDisplayTimeLengthLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.BTStartGameButton.mas_trailing).offset(15);
        make.centerY.equalTo(self.BTStartGameButton);
        make.trailing.equalTo(self.BTEndGameButton.mas_leading).offset(-15);
        make.height.mas_equalTo(44);
    }];
}
- (void)setBTModel:(BTScorecardViewModel *)BTModel{
    _BTModel = BTModel;
    self.BTDisplayTimeLengthLabel.text = _BTModel.BTTimeStatisticsDateString;
    self.BTIndex = _BTModel.BTIndexTime;
}
-(void)BTstartTimer{
    self.BTIndex = 101;
    self.BTSeconds++;
    if (self.BTSeconds == 60) {
        self.BTMinutes++;
        self.BTSeconds = 0;
    }
    if (self.BTMinutes == 60) {
        self.BTHours++;
        self.BTMinutes = 0;
    }
    NSString *dateString = [NSString stringWithFormat:@"%.2d:%.2d:%.2d",self.BTHours,self.BTMinutes,self.BTSeconds];
    self.BTModel.BTTimeStatisticsDateString = dateString;
    self.BTModel.BTTimeStatisticsDate = [BTUIUtilities BTdateFromString:dateString formate:@"HH:mm:ss"];
    self.BTDisplayTimeLengthLabel.text = dateString;
}
- (void)BTTimeControlAction:(UIButton *)sender{
    if (sender.tag == 99) {
        self.BTSeconds = 0;
        self.BTMinutes = 0;
        self.BTHours = 0;
        self.BTIndex = 0;
        [self.BTTimer setFireDate:[NSDate date]];
        self.BTisStop = NO;
    }else if (sender.tag == 100){
        self.BTIndex = 1;
        [self.BTTimer setFireDate:[NSDate distantFuture]];
        self.BTisStop = YES;
    }
    if (self.BTScorecardTimingB) {
        self.BTScorecardTimingB(self);
    }
}
#pragma mark - 属性懒加载
- (UIButton *)BTStartGameButton{
    if (!_BTStartGameButton) {
        _BTStartGameButton = [[UIButton alloc] init];
        [_BTStartGameButton setBackgroundColor:[UIColor systemGreenColor]];
        [_BTStartGameButton setTitle:NSLocalizedString(@"开始", nil) forState:UIControlStateNormal];
        _BTStartGameButton.titleLabel.font = [UIFont systemFontOfSize:20];
        [_BTStartGameButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        _BTStartGameButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        _BTStartGameButton.layer.cornerRadius = 29.0f;
        _BTStartGameButton.layer.masksToBounds = YES;
        _BTStartGameButton.tag = 99;
        [_BTStartGameButton addTarget:self action:@selector(BTTimeControlAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _BTStartGameButton;
}
- (UILabel *)BTDisplayTimeLengthLabel{
    if (!_BTDisplayTimeLengthLabel) {
        _BTDisplayTimeLengthLabel = [[UILabel alloc] init];
        _BTDisplayTimeLengthLabel.textColor = [UIColor blackColor];
        _BTDisplayTimeLengthLabel.backgroundColor = [UIColor cyanColor];
        _BTDisplayTimeLengthLabel.font = [UIFont boldSystemFontOfSize:25];
        _BTDisplayTimeLengthLabel.textAlignment = NSTextAlignmentCenter;
        _BTDisplayTimeLengthLabel.layer.cornerRadius = 8.0f;
        _BTDisplayTimeLengthLabel.layer.masksToBounds = YES;
        _BTDisplayTimeLengthLabel.layer.borderColor = [UIColor systemRedColor].CGColor;
        _BTDisplayTimeLengthLabel.layer.borderWidth = 2.0f;
        _BTDisplayTimeLengthLabel.numberOfLines = 0;
    }
    return _BTDisplayTimeLengthLabel;
}
- (UIButton *)BTEndGameButton{
    if (!_BTEndGameButton) {
        _BTEndGameButton = [[UIButton alloc] init];
        [_BTEndGameButton setBackgroundColor:[UIColor systemRedColor]];
        [_BTEndGameButton setTitle:NSLocalizedString(@"停止", nil) forState:UIControlStateNormal];
        _BTEndGameButton.titleLabel.font = [UIFont systemFontOfSize:20];
        [_BTEndGameButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        _BTEndGameButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        _BTEndGameButton.layer.cornerRadius = 29.0f;
        _BTEndGameButton.layer.masksToBounds = YES;
        _BTEndGameButton.tag = 100;
        [_BTEndGameButton addTarget:self action:@selector(BTTimeControlAction:) forControlEvents:UIControlEventTouchUpInside];

    }
    return _BTEndGameButton;
}
@end
