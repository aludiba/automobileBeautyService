//
//  KTTimePortionTableViewCell.m
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import "KTTimePortionTableViewCell.h"
#import "KTScorecardViewModel.h"

@interface KTTimePortionTableViewCell()
@property(nonatomic, strong)UIButton *KTStartGameButton;//开始比赛
@property(nonatomic, strong)UILabel *KTDisplayTimeLengthLabel;//显示比赛时长
@property(nonatomic, strong)UIButton *KTEndGameButton;//结束比赛
@property(nonatomic, assign)BOOL KTisOn;
@property(nonatomic, assign)BOOL KTisStop;
@end
@implementation KTTimePortionTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self KTSetContentView];
        
        self.KTisStop = YES;
            //类方法会自动释放。
        self.KTTimer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(KTstartTimer) userInfo:nil repeats:YES];
        //需要让定时器暂停
        [self.KTTimer setFireDate:[NSDate distantFuture]];
        [[NSRunLoop currentRunLoop] addTimer:self.KTTimer forMode:NSRunLoopCommonModes];
    }
    return self;
}
#pragma mark - actions
- (void)KTSetContentView{
    [self.contentView addSubview:self.KTStartGameButton];
    [self.contentView addSubview:self.KTDisplayTimeLengthLabel];
    [self.contentView addSubview:self.KTEndGameButton];
    
    [self.KTStartGameButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(50);
        make.top.equalTo(self.contentView).offset(30);
        make.width.mas_equalTo(60);
        make.height.mas_equalTo(60);
        make.bottom.equalTo(self.contentView).offset(-30);
    }];
    [self.KTEndGameButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.equalTo(self.contentView).offset(-50);
        make.top.equalTo(self.contentView).offset(30);
        make.width.mas_equalTo(60);
        make.height.mas_equalTo(60);
    }];
    [self.KTDisplayTimeLengthLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.KTStartGameButton.mas_trailing).offset(15);
        make.centerY.equalTo(self.KTStartGameButton);
        make.trailing.equalTo(self.KTEndGameButton.mas_leading).offset(-15);
        make.height.mas_equalTo(44);
    }];
}
- (void)setKTModel:(KTScorecardViewModel *)KTModel{
    _KTModel = KTModel;
    self.KTDisplayTimeLengthLabel.text = _KTModel.KTTimeStatisticsDateString;
    self.KTIndex = _KTModel.KTIndexTime;
}
-(void)KTstartTimer{
    self.KTIndex = 101;
    self.KTSeconds++;
    if (self.KTSeconds == 60) {
        self.KTMinutes++;
        self.KTSeconds = 0;
    }
    if (self.KTMinutes == 60) {
        self.KTHours++;
        self.KTMinutes = 0;
    }
    NSString *dateString = [NSString stringWithFormat:@"%.2d:%.2d:%.2d",self.KTHours,self.KTMinutes,self.KTSeconds];
    self.KTModel.KTTimeStatisticsDateString = dateString;
    self.KTModel.KTTimeStatisticsDate = [KTUIUtilities KTdateFromString:dateString formate:@"HH:mm:ss"];
    self.KTDisplayTimeLengthLabel.text = dateString;
}
- (void)KTTimeControlAction:(UIButton *)sender{
    if (sender.tag == 99) {
        self.KTSeconds = 0;
        self.KTMinutes = 0;
        self.KTHours = 0;
        self.KTIndex = 0;
        [self.KTTimer setFireDate:[NSDate date]];
        self.KTisStop = NO;
    }else if (sender.tag == 100){
        self.KTIndex = 1;
        [self.KTTimer setFireDate:[NSDate distantFuture]];
        self.KTisStop = YES;
    }
    if (self.KTScorecardTimingB) {
        self.KTScorecardTimingB(self);
    }
}
#pragma mark - 属性懒加载
- (UIButton *)KTStartGameButton{
    if (!_KTStartGameButton) {
        _KTStartGameButton = [[UIButton alloc] init];
        [_KTStartGameButton setBackgroundColor:[UIColor systemGreenColor]];
        [_KTStartGameButton setTitle:NSLocalizedString(@"开始", nil) forState:UIControlStateNormal];
        _KTStartGameButton.titleLabel.font = [UIFont systemFontOfSize:20];
        [_KTStartGameButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        _KTStartGameButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        _KTStartGameButton.layer.cornerRadius = 29.0f;
        _KTStartGameButton.layer.masksToBounds = YES;
        _KTStartGameButton.tag = 99;
        [_KTStartGameButton addTarget:self action:@selector(KTTimeControlAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _KTStartGameButton;
}
- (UILabel *)KTDisplayTimeLengthLabel{
    if (!_KTDisplayTimeLengthLabel) {
        _KTDisplayTimeLengthLabel = [[UILabel alloc] init];
        _KTDisplayTimeLengthLabel.textColor = [UIColor blackColor];
        _KTDisplayTimeLengthLabel.backgroundColor = [UIColor cyanColor];
        _KTDisplayTimeLengthLabel.font = [UIFont boldSystemFontOfSize:25];
        _KTDisplayTimeLengthLabel.textAlignment = NSTextAlignmentCenter;
        _KTDisplayTimeLengthLabel.layer.cornerRadius = 8.0f;
        _KTDisplayTimeLengthLabel.layer.masksToBounds = YES;
        _KTDisplayTimeLengthLabel.layer.borderColor = [UIColor systemRedColor].CGColor;
        _KTDisplayTimeLengthLabel.layer.borderWidth = 1.5f;
        _KTDisplayTimeLengthLabel.numberOfLines = 0;
    }
    return _KTDisplayTimeLengthLabel;
}
- (UIButton *)KTEndGameButton{
    if (!_KTEndGameButton) {
        _KTEndGameButton = [[UIButton alloc] init];
        [_KTEndGameButton setBackgroundColor:[UIColor systemRedColor]];
        [_KTEndGameButton setTitle:NSLocalizedString(@"停止", nil) forState:UIControlStateNormal];
        _KTEndGameButton.titleLabel.font = [UIFont systemFontOfSize:20];
        [_KTEndGameButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        _KTEndGameButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        _KTEndGameButton.layer.cornerRadius = 29.0f;
        _KTEndGameButton.layer.masksToBounds = YES;
        _KTEndGameButton.tag = 100;
        [_KTEndGameButton addTarget:self action:@selector(KTTimeControlAction:) forControlEvents:UIControlEventTouchUpInside];

    }
    return _KTEndGameButton;
}
@end
