//
//  VTTimePortionTableViewCell.m
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import "VTTimePortionTableViewCell.h"
#import "VTScorecardViewModel.h"

@interface VTTimePortionTableViewCell()
@property(nonatomic, strong)UIButton *VTStartGameButton;//开始比赛
@property(nonatomic, strong)UILabel *VTDisplayTimeLengthLabel;//显示比赛时长
@property(nonatomic, strong)UIButton *VTEndGameButton;//结束比赛
@property(nonatomic, assign)BOOL VTisOn;
@property(nonatomic, assign)BOOL VTisStop;
@end
@implementation VTTimePortionTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = [UIColor cyanColor];
        [self VTSetContentView];
        self.VTisStop = YES;
            //类方法会自动释放。
        self.VTTimer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(VTstartTimer) userInfo:nil repeats:YES];
        //需要让定时器暂停
        [self.VTTimer setFireDate:[NSDate distantFuture]];
        [[NSRunLoop currentRunLoop] addTimer:self.VTTimer forMode:NSRunLoopCommonModes];
    }
    return self;
}
#pragma mark - actions
- (void)VTSetContentView{
    [self.contentView addSubview:self.VTStartGameButton];
    [self.contentView addSubview:self.VTDisplayTimeLengthLabel];
    [self.contentView addSubview:self.VTEndGameButton];
    
    [self.VTStartGameButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(50);
        make.top.equalTo(self.contentView).offset(30);
        make.width.mas_equalTo(60);
        make.height.mas_equalTo(60);
        make.bottom.equalTo(self.contentView).offset(-15);
    }];
    [self.VTEndGameButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.equalTo(self.contentView).offset(-50);
        make.top.equalTo(self.contentView).offset(30);
        make.width.mas_equalTo(60);
        make.height.mas_equalTo(60);
    }];
    [self.VTDisplayTimeLengthLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.VTStartGameButton.mas_trailing).offset(15);
        make.centerY.equalTo(self.VTStartGameButton);
        make.trailing.equalTo(self.VTEndGameButton.mas_leading).offset(-15);
        make.height.mas_equalTo(44);
    }];
}
- (void)setVTModel:(VTScorecardViewModel *)VTModel{
    _VTModel = VTModel;
    self.VTDisplayTimeLengthLabel.text = _VTModel.VTTimeStatisticsDateString;
    self.VTIndex = _VTModel.VTIndexTime;
}
-(void)VTstartTimer{
    self.VTIndex = 101;
    self.VTSeconds++;
    if (self.VTSeconds == 60) {
        self.VTMinutes++;
        self.VTSeconds = 0;
    }
    if (self.VTMinutes == 60) {
        self.VTHours++;
        self.VTMinutes = 0;
    }
    NSString *dateString = [NSString stringWithFormat:@"%.2d:%.2d:%.2d",self.VTHours,self.VTMinutes,self.VTSeconds];
    self.VTModel.VTTimeStatisticsDateString = dateString;
    self.VTModel.VTTimeStatisticsDate = [VTUIUtilities VTdateFromString:dateString formate:@"HH:mm:ss"];
    self.VTDisplayTimeLengthLabel.text = dateString;
}
- (void)VTTimeControlAction:(UIButton *)sender{
    if (sender.tag == 99) {
        self.VTSeconds = 0;
        self.VTMinutes = 0;
        self.VTHours = 0;
        self.VTIndex = 0;
        [self.VTTimer setFireDate:[NSDate date]];
        self.VTisStop = NO;
    }else if (sender.tag == 100){
        self.VTIndex = 1;
        [self.VTTimer setFireDate:[NSDate distantFuture]];
        self.VTisStop = YES;
    }
    if (self.VTScorecardTimingB) {
        self.VTScorecardTimingB(self);
    }
}
#pragma mark - 属性懒加载
- (UIButton *)VTStartGameButton{
    if (!_VTStartGameButton) {
        _VTStartGameButton = [[UIButton alloc] init];
        [_VTStartGameButton setBackgroundColor:[UIColor systemGreenColor]];
        [_VTStartGameButton setTitle:NSLocalizedString(@"开始", nil) forState:UIControlStateNormal];
        _VTStartGameButton.titleLabel.font = [UIFont systemFontOfSize:20];
        [_VTStartGameButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        _VTStartGameButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        _VTStartGameButton.layer.cornerRadius = 14.5f;
        _VTStartGameButton.layer.masksToBounds = YES;
        _VTStartGameButton.tag = 99;
        [_VTStartGameButton addTarget:self action:@selector(VTTimeControlAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _VTStartGameButton;
}
- (UILabel *)VTDisplayTimeLengthLabel{
    if (!_VTDisplayTimeLengthLabel) {
        _VTDisplayTimeLengthLabel = [[UILabel alloc] init];
        _VTDisplayTimeLengthLabel.textColor = [UIColor whiteColor];
        _VTDisplayTimeLengthLabel.backgroundColor = VTH_Color(180, 177, 158, 1);
        _VTDisplayTimeLengthLabel.font = [UIFont boldSystemFontOfSize:25];
        _VTDisplayTimeLengthLabel.textAlignment = NSTextAlignmentCenter;
        _VTDisplayTimeLengthLabel.layer.cornerRadius = 4.0f;
        _VTDisplayTimeLengthLabel.layer.masksToBounds = YES;
        _VTDisplayTimeLengthLabel.numberOfLines = 0;
    }
    return _VTDisplayTimeLengthLabel;
}
- (UIButton *)VTEndGameButton{
    if (!_VTEndGameButton) {
        _VTEndGameButton = [[UIButton alloc] init];
        [_VTEndGameButton setBackgroundColor:[UIColor systemRedColor]];
        [_VTEndGameButton setTitle:NSLocalizedString(@"停止", nil) forState:UIControlStateNormal];
        _VTEndGameButton.titleLabel.font = [UIFont systemFontOfSize:20];
        [_VTEndGameButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        _VTEndGameButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        _VTEndGameButton.layer.cornerRadius = 14.5f;
        _VTEndGameButton.layer.masksToBounds = YES;
        _VTEndGameButton.tag = 100;
        [_VTEndGameButton addTarget:self action:@selector(VTTimeControlAction:) forControlEvents:UIControlEventTouchUpInside];

    }
    return _VTEndGameButton;
}
@end
