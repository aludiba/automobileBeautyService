//
//  PFScorecardOperationTableViewCell.m
//  PocketFootballScore
//
//  Created by bykj on 2019/10/24.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "PFScorecardOperationTableViewCell.h"
@interface PFScorecardOperationTableViewCell()
@property(nonatomic, strong)UIButton *PFResetButton;//重新计时、计分按钮
@property(nonatomic, strong)UIButton *PFChangeButton;//交换按钮
@property(nonatomic, strong)UIButton *PFSaveButton;//保存按钮
@property(nonatomic, assign)BOOL PFisOn;
@property(nonatomic, assign)BOOL PFisStop;
@end
@implementation PFScorecardOperationTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = [UIColor cyanColor];
        [self.contentView addSubview:self.PFResetButton];
        [self.contentView addSubview:self.PFStartButton];
        [self.contentView addSubview:self.PFChangeButton];
        [self.contentView addSubview:self.PFSaveButton];
        
        [self.PFResetButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(20);
            make.top.equalTo(self.contentView).offset(20);
            make.width.mas_equalTo((PFWIDTH - 100) / 4);
            make.height.mas_equalTo(40);
            make.bottom.equalTo(self.contentView).offset(-20);

        }];
        [self.PFStartButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.PFResetButton.mas_trailing).offset(20);
            make.top.equalTo(self.contentView).offset(20);
            make.width.mas_equalTo((PFWIDTH - 100) / 4);
            make.height.mas_equalTo(40);
        }];
        [self.PFChangeButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.PFStartButton.mas_trailing).offset(20);
            make.top.equalTo(self.contentView).offset(20);
            make.width.mas_equalTo((PFWIDTH - 100) / 4);
            make.height.mas_equalTo(40);
        }];
        [self.PFSaveButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.PFChangeButton.mas_trailing).offset(20);
            make.top.equalTo(self.contentView).offset(20);
            make.width.mas_equalTo((PFWIDTH - 100) / 4);
            make.height.mas_equalTo(40);
        }];
        
        self.PFisStop = YES;
            //类方法会自动释放。
        self.PFtimer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(PFstartTimer) userInfo:nil repeats:YES];
        //需要让定时器暂停
        [self.PFtimer setFireDate:[NSDate distantFuture]];
        [[NSRunLoop currentRunLoop] addTimer:self.PFtimer forMode:NSRunLoopCommonModes];
    }
    return self;
}
-(void)PFstartTimer{
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
    if (self.PFScorecardOperationB) {
        self.PFScorecardOperationB(self);
    }
}
#pragma mark - action
- (void)PFbtnClick:(UIButton *)sender{
    self.index = sender.tag;
    if (sender.tag == 100) {
        self.seconds = 0;
        self.minutes = 0;
        self.hours = 0;
        [self.PFStartButton setTitle:NSLocalizedString(@"开始", nil) forState:UIControlStateNormal];
        [self.PFtimer setFireDate:[NSDate distantFuture]];
        self.PFisStop = YES;
        if (self.PFScorecardOperationB) {
            self.PFScorecardOperationB(self);
        }
    }else if (sender.tag == 101){
        if (self.PFisStop) {
          [self.PFStartButton setTitle:NSLocalizedString(@"停止", nil) forState:UIControlStateNormal];
           [_PFtimer setFireDate:[NSDate date]];
           self.PFisStop = NO;
        }else{
            [self.PFStartButton setTitle:NSLocalizedString(@"开始", nil) forState:UIControlStateNormal];
            [self.PFtimer setFireDate:[NSDate distantFuture]];
            self.PFisStop = YES;
        }
    }else if (sender.tag == 102){
        if (self.PFScorecardOperationB) {
            self.PFScorecardOperationB(self);
        }
    }else if (sender.tag == 103){
        if (self.PFScorecardOperationB) {
            self.PFScorecardOperationB(self);
        }
    }
   
}
#pragma mark - 属性懒加载
- (UIButton *)PFResetButton{
    if (!_PFResetButton) {
        _PFResetButton = [[UIButton alloc] init];
        _PFResetButton.tag = 100;
        _PFResetButton.backgroundColor = [UIColor systemGreenColor];
        [_PFResetButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_PFResetButton.titleLabel setFont:[UIFont systemFontOfSize:18]];
        _PFResetButton.layer.cornerRadius = 20.0f;
        _PFResetButton.layer.masksToBounds = YES;
        [_PFResetButton addTarget:self action:@selector(PFbtnClick:) forControlEvents:UIControlEventTouchUpInside];
        [_PFResetButton setTitle:NSLocalizedString(@"重来", nil) forState:UIControlStateNormal];
    }
    return _PFResetButton;
}
- (UIButton *)PFStartButton{
    if (!_PFStartButton) {
        _PFStartButton = [[UIButton alloc] init];
        _PFStartButton.tag = 101;
        _PFStartButton.backgroundColor = [UIColor systemGreenColor];
        [_PFStartButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_PFStartButton.titleLabel setFont:[UIFont systemFontOfSize:18]];
        _PFStartButton.layer.cornerRadius = 20.0f;
        _PFStartButton.layer.masksToBounds = YES;
        [_PFStartButton addTarget:self action:@selector(PFbtnClick:) forControlEvents:UIControlEventTouchUpInside];
        [_PFStartButton setTitle:NSLocalizedString(@"开始", nil) forState:UIControlStateNormal];
    }
    return _PFStartButton;
}
- (UIButton *)PFChangeButton{
    if (!_PFChangeButton) {
        _PFChangeButton = [[UIButton alloc] init];
        _PFChangeButton.tag = 102;
        _PFChangeButton.backgroundColor = [UIColor systemGreenColor];
        [_PFChangeButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_PFChangeButton.titleLabel setFont:[UIFont systemFontOfSize:18]];
        _PFChangeButton.layer.cornerRadius = 20.0f;
        _PFChangeButton.layer.masksToBounds = YES;
        [_PFChangeButton addTarget:self action:@selector(PFbtnClick:) forControlEvents:UIControlEventTouchUpInside];
        [_PFChangeButton setTitle:NSLocalizedString(@"交换", nil) forState:UIControlStateNormal];
    }
    return _PFChangeButton;
}
- (UIButton *)PFSaveButton{
    if (!_PFSaveButton) {
        _PFSaveButton = [[UIButton alloc] init];
        _PFSaveButton.tag = 103;
        _PFSaveButton.backgroundColor = [UIColor systemGreenColor];
        [_PFSaveButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_PFSaveButton.titleLabel setFont:[UIFont systemFontOfSize:18]];
        _PFSaveButton.layer.cornerRadius = 20.0f;
        _PFSaveButton.layer.masksToBounds = YES;
        [_PFSaveButton addTarget:self action:@selector(PFbtnClick:) forControlEvents:UIControlEventTouchUpInside];
        [_PFSaveButton setTitle:NSLocalizedString(@"保存", nil) forState:UIControlStateNormal];
    }
    return _PFSaveButton;
}
@end
