//
//  CFTimePortionTableViewCell.m
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import "CFTimePortionTableViewCell.h"
#import "CFScorecardViewModel.h"

@interface CFTimePortionTableViewCell()
@property(nonatomic, strong)UIButton *CFStartGameButton;//开始比赛
@property(nonatomic, strong)UILabel *CFDisplayTimeLengthLabel;//显示比赛时长
@property(nonatomic, strong)UIButton *CFEndGameButton;//结束比赛
@property(nonatomic, assign)BOOL CFisOn;
@property(nonatomic, assign)BOOL CFisStop;
@end
@implementation CFTimePortionTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self CFSetContentView];
        
        self.CFisStop = YES;
            //类方法会自动释放。
        self.CFTimer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(CFstartTimer) userInfo:nil repeats:YES];
        //需要让定时器暂停
        [self.CFTimer setFireDate:[NSDate distantFuture]];
        [[NSRunLoop currentRunLoop] addTimer:self.CFTimer forMode:NSRunLoopCommonModes];
    }
    return self;
}
#pragma mark - actions
- (void)CFSetContentView{
    [self.contentView addSubview:self.CFStartGameButton];
    [self.contentView addSubview:self.CFDisplayTimeLengthLabel];
    [self.contentView addSubview:self.CFEndGameButton];
    
    [self.CFStartGameButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(50);
        make.top.equalTo(self.contentView).offset(30);
        make.width.mas_equalTo(60);
        make.height.mas_equalTo(60);
        make.bottom.equalTo(self.contentView).offset(-30);
    }];
    [self.CFEndGameButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.equalTo(self.contentView).offset(-50);
        make.top.equalTo(self.contentView).offset(30);
        make.width.mas_equalTo(60);
        make.height.mas_equalTo(60);
    }];
    [self.CFDisplayTimeLengthLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.CFStartGameButton.mas_trailing).offset(15);
        make.centerY.equalTo(self.CFStartGameButton);
        make.trailing.equalTo(self.CFEndGameButton.mas_leading).offset(-15);
        make.height.mas_equalTo(44);
    }];
}
- (void)setCFModel:(CFScorecardViewModel *)CFModel{
    _CFModel = CFModel;
    self.CFDisplayTimeLengthLabel.text = _CFModel.CFTimeStatisticsDateString;
    self.CFIndex = _CFModel.CFIndexTime;
}
-(void)CFstartTimer{
    self.CFIndex = 101;
    self.CFSeconds++;
    if (self.CFSeconds == 60) {
        self.CFMinutes++;
        self.CFSeconds = 0;
    }
    if (self.CFMinutes == 60) {
        self.CFHours++;
        self.CFMinutes = 0;
    }
    NSString *dateString = [NSString stringWithFormat:@"%.2d:%.2d:%.2d",self.CFHours,self.CFMinutes,self.CFSeconds];
    self.CFModel.CFTimeStatisticsDateString = dateString;
    self.CFModel.CFTimeStatisticsDate = [CFUIUtilities CFdateFromString:dateString formate:@"HH:mm:ss"];
    self.CFDisplayTimeLengthLabel.text = dateString;
}
- (void)CFTimeControlAction:(UIButton *)sender{
    if (sender.tag == 99) {
        self.CFSeconds = 0;
        self.CFMinutes = 0;
        self.CFHours = 0;
        self.CFIndex = 0;
        [self.CFTimer setFireDate:[NSDate date]];
        self.CFisStop = NO;
    }else if (sender.tag == 100){
        self.CFIndex = 1;
        [self.CFTimer setFireDate:[NSDate distantFuture]];
        self.CFisStop = YES;
    }
    if (self.CFScorecardTimingB) {
        self.CFScorecardTimingB(self);
    }
}
#pragma mark - 属性懒加载
- (UIButton *)CFStartGameButton{
    if (!_CFStartGameButton) {
        _CFStartGameButton = [[UIButton alloc] init];
        [_CFStartGameButton setBackgroundColor:[UIColor systemGreenColor]];
        [_CFStartGameButton setTitle:NSLocalizedString(@"开始", nil) forState:UIControlStateNormal];
        _CFStartGameButton.titleLabel.font = [UIFont systemFontOfSize:20];
        [_CFStartGameButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        _CFStartGameButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        _CFStartGameButton.layer.cornerRadius = 29.0f;
        _CFStartGameButton.layer.masksToBounds = YES;
        _CFStartGameButton.tag = 99;
        [_CFStartGameButton addTarget:self action:@selector(CFTimeControlAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _CFStartGameButton;
}
- (UILabel *)CFDisplayTimeLengthLabel{
    if (!_CFDisplayTimeLengthLabel) {
        _CFDisplayTimeLengthLabel = [[UILabel alloc] init];
        _CFDisplayTimeLengthLabel.textColor = [UIColor blackColor];
        _CFDisplayTimeLengthLabel.backgroundColor = [UIColor cyanColor];
        _CFDisplayTimeLengthLabel.font = [UIFont boldSystemFontOfSize:25];
        _CFDisplayTimeLengthLabel.textAlignment = NSTextAlignmentCenter;
        _CFDisplayTimeLengthLabel.layer.cornerRadius = 8.0f;
        _CFDisplayTimeLengthLabel.layer.masksToBounds = YES;
        _CFDisplayTimeLengthLabel.layer.borderColor = [UIColor systemRedColor].CGColor;
        _CFDisplayTimeLengthLabel.layer.borderWidth = 1.5f;
        _CFDisplayTimeLengthLabel.numberOfLines = 0;
    }
    return _CFDisplayTimeLengthLabel;
}
- (UIButton *)CFEndGameButton{
    if (!_CFEndGameButton) {
        _CFEndGameButton = [[UIButton alloc] init];
        [_CFEndGameButton setBackgroundColor:[UIColor systemRedColor]];
        [_CFEndGameButton setTitle:NSLocalizedString(@"停止", nil) forState:UIControlStateNormal];
        _CFEndGameButton.titleLabel.font = [UIFont systemFontOfSize:20];
        [_CFEndGameButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        _CFEndGameButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        _CFEndGameButton.layer.cornerRadius = 29.0f;
        _CFEndGameButton.layer.masksToBounds = YES;
        _CFEndGameButton.tag = 100;
        [_CFEndGameButton addTarget:self action:@selector(CFTimeControlAction:) forControlEvents:UIControlEventTouchUpInside];

    }
    return _CFEndGameButton;
}
@end
