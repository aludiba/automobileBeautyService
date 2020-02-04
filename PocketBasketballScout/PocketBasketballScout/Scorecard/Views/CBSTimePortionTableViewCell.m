//
//  CBSTimePortionTableViewCell.m
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import "CBSTimePortionTableViewCell.h"
#import "CBSScorecardViewModel.h"

@interface CBSTimePortionTableViewCell()
@property(nonatomic, strong)UIButton *CBSStartGameButton;//开始比赛
@property(nonatomic, strong)UILabel *CBSDisplayTimeLengthLabel;//显示比赛时长
@property(nonatomic, strong)UIButton *CBSEndGameButton;//结束比赛
@property(nonatomic, assign)BOOL CBSisOn;
@property(nonatomic, assign)BOOL CBSisStop;
@end
@implementation CBSTimePortionTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = [UIColor whiteColor];
        [self CBSSetContentView];
        self.CBSisStop = YES;
            //类方法会自动释放。
        self.CBSTimer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(CBSstartTimer) userInfo:nil repeats:YES];
        //需要让定时器暂停
        [self.CBSTimer setFireDate:[NSDate distantFuture]];
        [[NSRunLoop currentRunLoop] addTimer:self.CBSTimer forMode:NSRunLoopCommonModes];
    }
    return self;
}
#pragma mark - actions
- (void)CBSSetContentView{
    [self.contentView addSubview:self.CBSStartGameButton];
    [self.contentView addSubview:self.CBSDisplayTimeLengthLabel];
    [self.contentView addSubview:self.CBSEndGameButton];
    
    [self.CBSStartGameButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(50);
        make.top.equalTo(self.contentView).offset(30);
        make.width.mas_equalTo(60);
        make.height.mas_equalTo(60);
        make.bottom.equalTo(self.contentView).offset(-15);
    }];
    [self.CBSEndGameButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.equalTo(self.contentView).offset(-50);
        make.top.equalTo(self.contentView).offset(30);
        make.width.mas_equalTo(60);
        make.height.mas_equalTo(60);
    }];
    [self.CBSDisplayTimeLengthLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.CBSStartGameButton.mas_trailing).offset(15);
        make.centerY.equalTo(self.CBSStartGameButton);
        make.trailing.equalTo(self.CBSEndGameButton.mas_leading).offset(-15);
        make.height.mas_equalTo(44);
    }];
}
- (void)setCBSModel:(CBSScorecardViewModel *)CBSModel{
    _CBSModel = CBSModel;
    if (_CBSModel.CBSTimeStatisticsDateString.length) {
        self.CBSDisplayTimeLengthLabel.text = _CBSModel.CBSTimeStatisticsDateString;
    }
    self.CBSIndex = _CBSModel.CBSIndexTime;
}
-(void)CBSstartTimer{
    self.CBSIndex = 101;
    self.CBSSeconds++;
    if (self.CBSSeconds == 60) {
        self.CBSMinutes++;
        self.CBSSeconds = 0;
    }
    if (self.CBSMinutes == 60) {
        self.CBSHours++;
        self.CBSMinutes = 0;
    }
    NSString *dateString = [NSString stringWithFormat:@"%.2d:%.2d:%.2d",self.CBSHours,self.CBSMinutes,self.CBSSeconds];
    self.CBSModel.CBSTimeStatisticsDateString = dateString;
    self.CBSModel.CBSTimeStatisticsDate = [CBSUIUtilities CBSdateFromString:dateString formate:@"HH:mm:ss"];
    NSLog(@"CBSDisplayTimeLengthLabel:%@",dateString);
    self.CBSDisplayTimeLengthLabel.text = dateString;
}
- (void)CBSTimeControlAction:(UIButton *)sender{
    if (sender.tag == 99) {
        self.CBSSeconds = 0;
        self.CBSMinutes = 0;
        self.CBSHours = 0;
        self.CBSIndex = 0;
        [self.CBSTimer setFireDate:[NSDate date]];
        self.CBSisStop = NO;
    }else if (sender.tag == 100){
        self.CBSIndex = 1;
        [self.CBSTimer setFireDate:[NSDate distantFuture]];
        self.CBSisStop = YES;
    }
    if (self.CBSScorecardTimingB) {
        self.CBSScorecardTimingB(self);
    }
}
#pragma mark - 属性懒加载
- (UIButton *)CBSStartGameButton{
    if (!_CBSStartGameButton) {
        _CBSStartGameButton = [[UIButton alloc] init];
        [_CBSStartGameButton setBackgroundColor:[UIColor systemGreenColor]];
        [_CBSStartGameButton setTitle:NSLocalizedString(@"开始", nil) forState:UIControlStateNormal];
        _CBSStartGameButton.titleLabel.font = [UIFont systemFontOfSize:20];
        [_CBSStartGameButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        _CBSStartGameButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        _CBSStartGameButton.layer.cornerRadius = 29.0f;
        _CBSStartGameButton.layer.masksToBounds = YES;
        _CBSStartGameButton.tag = 99;
        [_CBSStartGameButton addTarget:self action:@selector(CBSTimeControlAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _CBSStartGameButton;
}
- (UILabel *)CBSDisplayTimeLengthLabel{
    if (!_CBSDisplayTimeLengthLabel) {
        _CBSDisplayTimeLengthLabel = [[UILabel alloc] init];
        _CBSDisplayTimeLengthLabel.textColor = [UIColor blackColor];
        _CBSDisplayTimeLengthLabel.backgroundColor = [UIColor cyanColor];
        _CBSDisplayTimeLengthLabel.font = [UIFont boldSystemFontOfSize:18];
        _CBSDisplayTimeLengthLabel.textAlignment = NSTextAlignmentCenter;
        _CBSDisplayTimeLengthLabel.layer.cornerRadius = 8.0f;
        _CBSDisplayTimeLengthLabel.layer.masksToBounds = YES;
        _CBSDisplayTimeLengthLabel.layer.borderColor = [UIColor systemRedColor].CGColor;
        _CBSDisplayTimeLengthLabel.layer.borderWidth = 2.0f;
        _CBSDisplayTimeLengthLabel.numberOfLines = 0;
        _CBSDisplayTimeLengthLabel.text = @"00:00";
    }
    return _CBSDisplayTimeLengthLabel;
}
- (UIButton *)CBSEndGameButton{
    if (!_CBSEndGameButton) {
        _CBSEndGameButton = [[UIButton alloc] init];
        [_CBSEndGameButton setBackgroundColor:[UIColor systemRedColor]];
        [_CBSEndGameButton setTitle:NSLocalizedString(@"停止", nil) forState:UIControlStateNormal];
        _CBSEndGameButton.titleLabel.font = [UIFont systemFontOfSize:20];
        [_CBSEndGameButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        _CBSEndGameButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        _CBSEndGameButton.layer.cornerRadius = 29.0f;
        _CBSEndGameButton.layer.masksToBounds = YES;
        _CBSEndGameButton.tag = 100;
        [_CBSEndGameButton addTarget:self action:@selector(CBSTimeControlAction:) forControlEvents:UIControlEventTouchUpInside];

    }
    return _CBSEndGameButton;
}
@end
