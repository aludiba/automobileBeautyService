//
//  PVYWKScorecardOperationTableViewCell.m
//  PocketFootballScore
//
//  Created by bykj on 2019/10/24.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "PVYWKScorecardOperationTableViewCell.h"
@interface PVYWKScorecardOperationTableViewCell()
@property(nonatomic, strong)UIButton *PVYWKResetButton;//重新计时、计分按钮
@property(nonatomic, strong)UIButton *PVYWKChangeButton;//交换按钮
@property(nonatomic, strong)UIButton *PVYWKSaveButton;//保存按钮
@property(nonatomic, assign)BOOL PVYWKisOn;
@property(nonatomic, assign)BOOL PVYWKisStop;
@end
@implementation PVYWKScorecardOperationTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = [UIColor cyanColor];
        [self.contentView addSubview:self.PVYWKResetButton];
        [self.contentView addSubview:self.PVYWKStartButton];
        [self.contentView addSubview:self.PVYWKChangeButton];
//        [self.contentView addSubview:self.PVYWKSaveButton];
        
        [self.PVYWKResetButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(30);
            make.top.equalTo(self.contentView).offset(20);
            make.width.mas_equalTo((PVYWKWIDTH - 120) / 3);
            make.height.mas_equalTo(40);
            make.bottom.equalTo(self.contentView).offset(-20);

        }];
        [self.PVYWKStartButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.PVYWKResetButton.mas_trailing).offset(30);
            make.top.equalTo(self.contentView).offset(20);
            make.width.mas_equalTo((PVYWKWIDTH - 120) / 3);
            make.height.mas_equalTo(40);
        }];
        [self.PVYWKChangeButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.PVYWKStartButton.mas_trailing).offset(30);
            make.top.equalTo(self.contentView).offset(20);
            make.width.mas_equalTo((PVYWKWIDTH - 120) / 3);
            make.height.mas_equalTo(40);
        }];
//        [self.PVYWKSaveButton mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.leading.equalTo(self.PVYWKChangeButton.mas_trailing).offset(20);
//            make.top.equalTo(self.contentView).offset(20);
//            make.width.mas_equalTo((PVYWKWIDTH - 100) / 4);
//            make.height.mas_equalTo(40);
//        }];
        
        self.PVYWKisStop = YES;
            //类方法会自动释放。
        self.PVYWKtimer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(PVYWKstartTimer) userInfo:nil repeats:YES];
        //需要让定时器暂停
        [self.PVYWKtimer setFireDate:[NSDate distantFuture]];
        [[NSRunLoop currentRunLoop] addTimer:self.PVYWKtimer forMode:NSRunLoopCommonModes];
    }
    return self;
}
-(void)PVYWKstartTimer{
    self.index = 101;
    self.seconds++;
    if (self.seconds == 60) {
        self.minutes++;
        self.seconds = 0;
    }
    if (self.minutes == 60) {
        self.hours++;
        self.minutes = 0;
    }
    if (self.PVYWKScorecardOperationB) {
        self.PVYWKScorecardOperationB(self);
    }
}
#pragma mark - action
- (void)PVYWKbtnClick:(UIButton *)sender{
    self.index = sender.tag;
    if (sender.tag == 100) {
        self.seconds = 0;
        self.minutes = 0;
        self.hours = 0;
        [self.PVYWKStartButton setTitle:NSLocalizedString(@"开始", nil) forState:UIControlStateNormal];
        [self.PVYWKtimer setFireDate:[NSDate distantFuture]];
        self.PVYWKisStop = YES;
        if (self.PVYWKScorecardOperationB) {
            self.PVYWKScorecardOperationB(self);
        }
    }else if (sender.tag == 101){
        if (self.PVYWKisStop) {
          [self.PVYWKStartButton setTitle:NSLocalizedString(@"停止", nil) forState:UIControlStateNormal];
           [_PVYWKtimer setFireDate:[NSDate date]];
           self.PVYWKisStop = NO;
           self.startOrStopType = scorecardOperationStartOrStopTypeStart;
        }else{
            [self.PVYWKStartButton setTitle:NSLocalizedString(@"开始", nil) forState:UIControlStateNormal];
            [self.PVYWKtimer setFireDate:[NSDate distantFuture]];
            self.PVYWKisStop = YES;
            self.startOrStopType = scorecardOperationStartOrStopTypeStop;
        }
        if (self.PVYWKScorecardOperationB) {
            self.PVYWKScorecardOperationB(self);
        }
    }else if (sender.tag == 102){
        if (self.PVYWKScorecardOperationB) {
            self.PVYWKScorecardOperationB(self);
        }
    }else if (sender.tag == 103){
        if (self.PVYWKScorecardOperationB) {
            self.PVYWKScorecardOperationB(self);
        }
    }
   
}
#pragma mark - 属性懒加载
- (UIButton *)PVYWKResetButton{
    if (!_PVYWKResetButton) {
        _PVYWKResetButton = [[UIButton alloc] init];
        _PVYWKResetButton.tag = 100;
        _PVYWKResetButton.backgroundColor = [UIColor systemGreenColor];
        [_PVYWKResetButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_PVYWKResetButton.titleLabel setFont:[UIFont systemFontOfSize:18]];
        _PVYWKResetButton.layer.cornerRadius = 20.0f;
        _PVYWKResetButton.layer.masksToBounds = YES;
        [_PVYWKResetButton addTarget:self action:@selector(PVYWKbtnClick:) forControlEvents:UIControlEventTouchUpInside];
        [_PVYWKResetButton setTitle:NSLocalizedString(@"重来", nil) forState:UIControlStateNormal];
    }
    return _PVYWKResetButton;
}
- (UIButton *)PVYWKStartButton{
    if (!_PVYWKStartButton) {
        _PVYWKStartButton = [[UIButton alloc] init];
        _PVYWKStartButton.tag = 101;
        _PVYWKStartButton.backgroundColor = [UIColor systemGreenColor];
        [_PVYWKStartButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_PVYWKStartButton.titleLabel setFont:[UIFont systemFontOfSize:18]];
        _PVYWKStartButton.layer.cornerRadius = 20.0f;
        _PVYWKStartButton.layer.masksToBounds = YES;
        [_PVYWKStartButton addTarget:self action:@selector(PVYWKbtnClick:) forControlEvents:UIControlEventTouchUpInside];
        [_PVYWKStartButton setTitle:NSLocalizedString(@"开始", nil) forState:UIControlStateNormal];
    }
    return _PVYWKStartButton;
}
- (UIButton *)PVYWKChangeButton{
    if (!_PVYWKChangeButton) {
        _PVYWKChangeButton = [[UIButton alloc] init];
        _PVYWKChangeButton.tag = 102;
        _PVYWKChangeButton.backgroundColor = [UIColor systemGreenColor];
        [_PVYWKChangeButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_PVYWKChangeButton.titleLabel setFont:[UIFont systemFontOfSize:18]];
        _PVYWKChangeButton.layer.cornerRadius = 20.0f;
        _PVYWKChangeButton.layer.masksToBounds = YES;
        [_PVYWKChangeButton addTarget:self action:@selector(PVYWKbtnClick:) forControlEvents:UIControlEventTouchUpInside];
        [_PVYWKChangeButton setTitle:NSLocalizedString(@"交换", nil) forState:UIControlStateNormal];
    }
    return _PVYWKChangeButton;
}
- (UIButton *)PVYWKSaveButton{
    if (!_PVYWKSaveButton) {
        _PVYWKSaveButton = [[UIButton alloc] init];
        _PVYWKSaveButton.tag = 103;
        _PVYWKSaveButton.backgroundColor = [UIColor systemGreenColor];
        [_PVYWKSaveButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_PVYWKSaveButton.titleLabel setFont:[UIFont systemFontOfSize:18]];
        _PVYWKSaveButton.layer.cornerRadius = 20.0f;
        _PVYWKSaveButton.layer.masksToBounds = YES;
        [_PVYWKSaveButton addTarget:self action:@selector(PVYWKbtnClick:) forControlEvents:UIControlEventTouchUpInside];
        [_PVYWKSaveButton setTitle:NSLocalizedString(@"保存", nil) forState:UIControlStateNormal];
    }
    return _PVYWKSaveButton;
}
@end
