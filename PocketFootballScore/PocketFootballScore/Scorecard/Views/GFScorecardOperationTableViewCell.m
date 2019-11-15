//
//  GFScorecardOperationTableViewCell.m
//  PocketFootballScore
//
//  Created by bykj on 2019/10/24.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "GFScorecardOperationTableViewCell.h"
@interface GFScorecardOperationTableViewCell()
@property(nonatomic, strong)UIButton *GFResetButton;//重新计时、计分按钮
@property(nonatomic, strong)UIButton *GFChangeButton;//交换按钮
@property(nonatomic, strong)UIButton *GFSaveButton;//保存按钮
@property(nonatomic, assign)BOOL GFisOn;
@property(nonatomic, assign)BOOL GFisStop;
@end
@implementation GFScorecardOperationTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = [UIColor cyanColor];
        [self.contentView addSubview:self.GFResetButton];
        [self.contentView addSubview:self.GFStartButton];
        [self.contentView addSubview:self.GFChangeButton];
        [self.contentView addSubview:self.GFSaveButton];
        
        [self.GFResetButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(20);
            make.top.equalTo(self.contentView).offset(20);
            make.width.mas_equalTo((GFWIDTH - 100) / 4);
            make.height.mas_equalTo(40);
            make.bottom.equalTo(self.contentView).offset(-20);

        }];
        [self.GFStartButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.GFResetButton.mas_trailing).offset(20);
            make.top.equalTo(self.contentView).offset(20);
            make.width.mas_equalTo((GFWIDTH - 100) / 4);
            make.height.mas_equalTo(40);
        }];
        [self.GFChangeButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.GFStartButton.mas_trailing).offset(20);
            make.top.equalTo(self.contentView).offset(20);
            make.width.mas_equalTo((GFWIDTH - 100) / 4);
            make.height.mas_equalTo(40);
        }];
        [self.GFSaveButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.GFChangeButton.mas_trailing).offset(20);
            make.top.equalTo(self.contentView).offset(20);
            make.width.mas_equalTo((GFWIDTH - 100) / 4);
            make.height.mas_equalTo(40);
        }];
        
        self.GFisStop = YES;
            //类方法会自动释放。
        self.GFtimer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(GFstartTimer) userInfo:nil repeats:YES];
        //需要让定时器暂停
        [self.GFtimer setFireDate:[NSDate distantFuture]];
        [[NSRunLoop currentRunLoop] addTimer:self.GFtimer forMode:NSRunLoopCommonModes];
    }
    return self;
}
-(void)GFstartTimer{
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
    if (self.GFScorecardOperationB) {
        self.GFScorecardOperationB(self);
    }
}
#pragma mark - action
- (void)GFbtnClick:(UIButton *)sender{
    self.index = sender.tag;
    if (sender.tag == 100) {
        self.seconds = 0;
        self.minutes = 0;
        self.hours = 0;
        [self.GFStartButton setTitle:NSLocalizedString(@"开始", nil) forState:UIControlStateNormal];
        [self.GFtimer setFireDate:[NSDate distantFuture]];
        self.GFisStop = YES;
        if (self.GFScorecardOperationB) {
            self.GFScorecardOperationB(self);
        }
    }else if (sender.tag == 101){
        if (self.GFisStop) {
          [self.GFStartButton setTitle:NSLocalizedString(@"停止", nil) forState:UIControlStateNormal];
           [_GFtimer setFireDate:[NSDate date]];
           self.GFisStop = NO;
        }else{
            [self.GFStartButton setTitle:NSLocalizedString(@"开始", nil) forState:UIControlStateNormal];
            [self.GFtimer setFireDate:[NSDate distantFuture]];
            self.GFisStop = YES;
        }
    }else if (sender.tag == 102){
        if (self.GFScorecardOperationB) {
            self.GFScorecardOperationB(self);
        }
    }else if (sender.tag == 103){
        if (self.GFScorecardOperationB) {
            self.GFScorecardOperationB(self);
        }
    }
   
}
#pragma mark - 属性懒加载
- (UIButton *)GFResetButton{
    if (!_GFResetButton) {
        _GFResetButton = [[UIButton alloc] init];
        _GFResetButton.tag = 100;
        _GFResetButton.backgroundColor = [UIColor systemGreenColor];
        [_GFResetButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_GFResetButton.titleLabel setFont:[UIFont systemFontOfSize:18]];
        _GFResetButton.layer.cornerRadius = 20.0f;
        _GFResetButton.layer.masksToBounds = YES;
        [_GFResetButton addTarget:self action:@selector(GFbtnClick:) forControlEvents:UIControlEventTouchUpInside];
        [_GFResetButton setTitle:NSLocalizedString(@"重来", nil) forState:UIControlStateNormal];
    }
    return _GFResetButton;
}
- (UIButton *)GFStartButton{
    if (!_GFStartButton) {
        _GFStartButton = [[UIButton alloc] init];
        _GFStartButton.tag = 101;
        _GFStartButton.backgroundColor = [UIColor systemGreenColor];
        [_GFStartButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_GFStartButton.titleLabel setFont:[UIFont systemFontOfSize:18]];
        _GFStartButton.layer.cornerRadius = 20.0f;
        _GFStartButton.layer.masksToBounds = YES;
        [_GFStartButton addTarget:self action:@selector(GFbtnClick:) forControlEvents:UIControlEventTouchUpInside];
        [_GFStartButton setTitle:NSLocalizedString(@"开始", nil) forState:UIControlStateNormal];
    }
    return _GFStartButton;
}
- (UIButton *)GFChangeButton{
    if (!_GFChangeButton) {
        _GFChangeButton = [[UIButton alloc] init];
        _GFChangeButton.tag = 102;
        _GFChangeButton.backgroundColor = [UIColor systemGreenColor];
        [_GFChangeButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_GFChangeButton.titleLabel setFont:[UIFont systemFontOfSize:18]];
        _GFChangeButton.layer.cornerRadius = 20.0f;
        _GFChangeButton.layer.masksToBounds = YES;
        [_GFChangeButton addTarget:self action:@selector(GFbtnClick:) forControlEvents:UIControlEventTouchUpInside];
        [_GFChangeButton setTitle:NSLocalizedString(@"交换", nil) forState:UIControlStateNormal];
    }
    return _GFChangeButton;
}
- (UIButton *)GFSaveButton{
    if (!_GFSaveButton) {
        _GFSaveButton = [[UIButton alloc] init];
        _GFSaveButton.tag = 103;
        _GFSaveButton.backgroundColor = [UIColor systemGreenColor];
        [_GFSaveButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_GFSaveButton.titleLabel setFont:[UIFont systemFontOfSize:18]];
        _GFSaveButton.layer.cornerRadius = 20.0f;
        _GFSaveButton.layer.masksToBounds = YES;
        [_GFSaveButton addTarget:self action:@selector(GFbtnClick:) forControlEvents:UIControlEventTouchUpInside];
        [_GFSaveButton setTitle:NSLocalizedString(@"保存", nil) forState:UIControlStateNormal];
    }
    return _GFSaveButton;
}
@end
