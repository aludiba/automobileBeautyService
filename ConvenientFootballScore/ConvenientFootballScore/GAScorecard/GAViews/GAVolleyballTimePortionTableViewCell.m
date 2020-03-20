//
//  GAVolleyballTimePortionTableViewCell.m
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import "GAVolleyballTimePortionTableViewCell.h"
#import "GAVolleyballScorecardModel.h"
#import "GAVolleyballScorecardViewModel.h"

@interface GAVolleyballTimePortionTableViewCell()
@property(nonatomic, strong)UIButton *GAStartGameButton;//开始比赛
@property(nonatomic, strong)UILabel *GADisplayTimeLengthLabel;//显示比赛时长
@property(nonatomic, strong)UIButton *GAEndGameButton;//结束比赛
@property(nonatomic, assign)BOOL GAisOn;
@property(nonatomic, assign)BOOL GAisStop;
@end
@implementation GAVolleyballTimePortionTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = [UIColor greenColor];
        [self GASetContentView];
        self.GAisStop = YES;
            //类方法会自动释放。
        self.GATimer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(GAstartTimer) userInfo:nil repeats:YES];
        //需要让定时器暂停
        [self.GATimer setFireDate:[NSDate distantFuture]];
        [[NSRunLoop currentRunLoop] addTimer:self.GATimer forMode:NSRunLoopCommonModes];
    }
    return self;
}
#pragma mark - actions
- (void)GASetContentView{
    [self.contentView addSubview:self.GAStartGameButton];
    [self.contentView addSubview:self.GADisplayTimeLengthLabel];
    [self.contentView addSubview:self.GAEndGameButton];
    
    [self.GAStartGameButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(50);
        make.top.equalTo(self.contentView).offset(20);
        make.width.mas_equalTo(60);
        make.height.mas_equalTo(60);
        make.bottom.equalTo(self.contentView).offset(-5);
    }];
    [self.GAEndGameButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.equalTo(self.contentView).offset(-50);
        make.top.equalTo(self.contentView).offset(20);
        make.width.mas_equalTo(60);
        make.height.mas_equalTo(60);
    }];
    [self.GADisplayTimeLengthLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.GAStartGameButton.mas_trailing).offset(15);
        make.centerY.equalTo(self.GAStartGameButton);
        make.trailing.equalTo(self.GAEndGameButton.mas_leading).offset(-15);
        make.height.mas_equalTo(44);
    }];
}
- (void)setGAModel:(GAVolleyballScorecardViewModel *)GAModel{
    _GAModel = GAModel;
    self.GADisplayTimeLengthLabel.text = _GAModel.GATimeStatisticsDateString;
    self.GAIndex = _GAModel.GAIndexTime;
}
-(void)GAstartTimer{
    self.GAIndex = 101;
    self.GASeconds++;
    if (self.GASeconds == 60) {
        self.GAMinutes++;
        self.GASeconds = 0;
    }
    if (self.GAMinutes == 60) {
        self.GAHours++;
        self.GAMinutes = 0;
    }
    NSString *dateString = [NSString stringWithFormat:@"%.2d:%.2d:%.2d",self.GAHours,self.GAMinutes,self.GASeconds];
    self.GAModel.GATimeStatisticsDateString = dateString;
    self.GAModel.GATimeStatisticsDate = [GAUIUtilities GAdateFromString:dateString formate:@"HH:mm:ss"];
    self.GAScoreModel.GATotalTimeString = dateString;
    self.GADisplayTimeLengthLabel.text = dateString;
}
- (void)GATimeControlAction:(UIButton *)sender{
    if (sender.tag == 99) {
//        self.GASeconds = 0;
//        self.GAMinutes = 0;
//        self.GAHours = 0;
        self.GAIndex = 0;
        [self.GATimer setFireDate:[NSDate date]];
        self.GAisStop = NO;
    }else if (sender.tag == 100){
        self.GAIndex = 1;
        [self.GATimer setFireDate:[NSDate distantFuture]];
        self.GAisStop = YES;
    }
    if (self.GAScorecardTimingB) {
        self.GAScorecardTimingB(self);
    }
}
#pragma mark - 属性懒加载
- (UIButton *)GAStartGameButton{
    if (!_GAStartGameButton) {
        _GAStartGameButton = [[UIButton alloc] init];
        [_GAStartGameButton setBackgroundColor:[UIColor blackColor]];
        [_GAStartGameButton setTitle:NSLocalizedString(@"开始", nil) forState:UIControlStateNormal];
        _GAStartGameButton.titleLabel.font = [UIFont systemFontOfSize:20];
        [_GAStartGameButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        _GAStartGameButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        _GAStartGameButton.layer.cornerRadius = 4.0f;
        _GAStartGameButton.layer.masksToBounds = YES;
        _GAStartGameButton.tag = 99;
        [_GAStartGameButton addTarget:self action:@selector(GATimeControlAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _GAStartGameButton;
}
- (UILabel *)GADisplayTimeLengthLabel{
    if (!_GADisplayTimeLengthLabel) {
        _GADisplayTimeLengthLabel = [[UILabel alloc] init];
        _GADisplayTimeLengthLabel.textColor = [UIColor whiteColor];
        _GADisplayTimeLengthLabel.backgroundColor = [UIColor systemGreenColor];
        _GADisplayTimeLengthLabel.font = [UIFont boldSystemFontOfSize:22];
        _GADisplayTimeLengthLabel.textAlignment = NSTextAlignmentCenter;
        _GADisplayTimeLengthLabel.layer.cornerRadius = 4.0f;
        _GADisplayTimeLengthLabel.layer.masksToBounds = YES;
        _GADisplayTimeLengthLabel.numberOfLines = 0;
    }
    return _GADisplayTimeLengthLabel;
}
- (UIButton *)GAEndGameButton{
    if (!_GAEndGameButton) {
        _GAEndGameButton = [[UIButton alloc] init];
        [_GAEndGameButton setBackgroundColor:[UIColor blackColor]];
        [_GAEndGameButton setTitle:NSLocalizedString(@"停止", nil) forState:UIControlStateNormal];
        _GAEndGameButton.titleLabel.font = [UIFont systemFontOfSize:20];
        [_GAEndGameButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        _GAEndGameButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        _GAEndGameButton.layer.cornerRadius = 4.0f;
        _GAEndGameButton.layer.masksToBounds = YES;
        _GAEndGameButton.tag = 100;
        [_GAEndGameButton addTarget:self action:@selector(GATimeControlAction:) forControlEvents:UIControlEventTouchUpInside];

    }
    return _GAEndGameButton;
}
@end
