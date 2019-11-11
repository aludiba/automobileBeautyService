//
//  PVScorecardOperationTableViewCell.m
//  PocketFootballScore
//
//  Created by bykj on 2019/10/24.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "PVScorecardOperationTableViewCell.h"
@interface PVScorecardOperationTableViewCell()
@property(nonatomic, strong)UIButton *PVResetButton;//重新计时、计分按钮
@property(nonatomic, strong)UIButton *PVChangeButton;//交换按钮
@property(nonatomic, strong)UIButton *PVSaveButton;//保存按钮
@property(nonatomic, assign)BOOL PVisOn;
@property(nonatomic, assign)BOOL PVisStop;
@end
@implementation PVScorecardOperationTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = [UIColor cyanColor];
        [self.contentView addSubview:self.PVResetButton];
        [self.contentView addSubview:self.PVStartButton];
        [self.contentView addSubview:self.PVChangeButton];
//        [self.contentView addSubview:self.PVSaveButton];
        
        [self.PVResetButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(30);
            make.top.equalTo(self.contentView).offset(20);
            make.width.mas_equalTo((PVWIDTH - 120) / 3);
            make.height.mas_equalTo(40);
            make.bottom.equalTo(self.contentView).offset(-20);

        }];
        [self.PVStartButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.PVResetButton.mas_trailing).offset(30);
            make.top.equalTo(self.contentView).offset(20);
            make.width.mas_equalTo((PVWIDTH - 120) / 3);
            make.height.mas_equalTo(40);
        }];
        [self.PVChangeButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.PVStartButton.mas_trailing).offset(30);
            make.top.equalTo(self.contentView).offset(20);
            make.width.mas_equalTo((PVWIDTH - 120) / 3);
            make.height.mas_equalTo(40);
        }];
//        [self.PVSaveButton mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.leading.equalTo(self.PVChangeButton.mas_trailing).offset(20);
//            make.top.equalTo(self.contentView).offset(20);
//            make.width.mas_equalTo((PVWIDTH - 100) / 4);
//            make.height.mas_equalTo(40);
//        }];
        
        self.PVisStop = YES;
            //类方法会自动释放。
        self.PVtimer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(PVstartTimer) userInfo:nil repeats:YES];
        //需要让定时器暂停
        [self.PVtimer setFireDate:[NSDate distantFuture]];
        [[NSRunLoop currentRunLoop] addTimer:self.PVtimer forMode:NSRunLoopCommonModes];
    }
    return self;
}
-(void)PVstartTimer{
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
    if (self.PVScorecardOperationB) {
        self.PVScorecardOperationB(self);
    }
}
#pragma mark - action
- (void)PVbtnClick:(UIButton *)sender{
    self.index = sender.tag;
    if (sender.tag == 100) {
        self.seconds = 0;
        self.minutes = 0;
        self.hours = 0;
        [self.PVStartButton setTitle:NSLocalizedString(@"开始", nil) forState:UIControlStateNormal];
        [self.PVtimer setFireDate:[NSDate distantFuture]];
        self.PVisStop = YES;
        if (self.PVScorecardOperationB) {
            self.PVScorecardOperationB(self);
        }
    }else if (sender.tag == 101){
        if (self.PVisStop) {
          [self.PVStartButton setTitle:NSLocalizedString(@"停止", nil) forState:UIControlStateNormal];
           [_PVtimer setFireDate:[NSDate date]];
           self.PVisStop = NO;
           self.startOrStopType = scorecardOperationStartOrStopTypeStart;
        }else{
            [self.PVStartButton setTitle:NSLocalizedString(@"开始", nil) forState:UIControlStateNormal];
            [self.PVtimer setFireDate:[NSDate distantFuture]];
            self.PVisStop = YES;
            self.startOrStopType = scorecardOperationStartOrStopTypeStop;
        }
        if (self.PVScorecardOperationB) {
            self.PVScorecardOperationB(self);
        }
    }else if (sender.tag == 102){
        if (self.PVScorecardOperationB) {
            self.PVScorecardOperationB(self);
        }
    }else if (sender.tag == 103){
        if (self.PVScorecardOperationB) {
            self.PVScorecardOperationB(self);
        }
    }
   
}
#pragma mark - 属性懒加载
- (UIButton *)PVResetButton{
    if (!_PVResetButton) {
        _PVResetButton = [[UIButton alloc] init];
        _PVResetButton.tag = 100;
        _PVResetButton.backgroundColor = [UIColor systemGreenColor];
        [_PVResetButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_PVResetButton.titleLabel setFont:[UIFont systemFontOfSize:18]];
        _PVResetButton.layer.cornerRadius = 20.0f;
        _PVResetButton.layer.masksToBounds = YES;
        [_PVResetButton addTarget:self action:@selector(PVbtnClick:) forControlEvents:UIControlEventTouchUpInside];
        [_PVResetButton setTitle:NSLocalizedString(@"重来", nil) forState:UIControlStateNormal];
    }
    return _PVResetButton;
}
- (UIButton *)PVStartButton{
    if (!_PVStartButton) {
        _PVStartButton = [[UIButton alloc] init];
        _PVStartButton.tag = 101;
        _PVStartButton.backgroundColor = [UIColor systemGreenColor];
        [_PVStartButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_PVStartButton.titleLabel setFont:[UIFont systemFontOfSize:18]];
        _PVStartButton.layer.cornerRadius = 20.0f;
        _PVStartButton.layer.masksToBounds = YES;
        [_PVStartButton addTarget:self action:@selector(PVbtnClick:) forControlEvents:UIControlEventTouchUpInside];
        [_PVStartButton setTitle:NSLocalizedString(@"开始", nil) forState:UIControlStateNormal];
    }
    return _PVStartButton;
}
- (UIButton *)PVChangeButton{
    if (!_PVChangeButton) {
        _PVChangeButton = [[UIButton alloc] init];
        _PVChangeButton.tag = 102;
        _PVChangeButton.backgroundColor = [UIColor systemGreenColor];
        [_PVChangeButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_PVChangeButton.titleLabel setFont:[UIFont systemFontOfSize:18]];
        _PVChangeButton.layer.cornerRadius = 20.0f;
        _PVChangeButton.layer.masksToBounds = YES;
        [_PVChangeButton addTarget:self action:@selector(PVbtnClick:) forControlEvents:UIControlEventTouchUpInside];
        [_PVChangeButton setTitle:NSLocalizedString(@"交换", nil) forState:UIControlStateNormal];
    }
    return _PVChangeButton;
}
- (UIButton *)PVSaveButton{
    if (!_PVSaveButton) {
        _PVSaveButton = [[UIButton alloc] init];
        _PVSaveButton.tag = 103;
        _PVSaveButton.backgroundColor = [UIColor systemGreenColor];
        [_PVSaveButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_PVSaveButton.titleLabel setFont:[UIFont systemFontOfSize:18]];
        _PVSaveButton.layer.cornerRadius = 20.0f;
        _PVSaveButton.layer.masksToBounds = YES;
        [_PVSaveButton addTarget:self action:@selector(PVbtnClick:) forControlEvents:UIControlEventTouchUpInside];
        [_PVSaveButton setTitle:NSLocalizedString(@"保存", nil) forState:UIControlStateNormal];
    }
    return _PVSaveButton;
}
@end
