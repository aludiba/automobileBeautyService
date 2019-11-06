//
//  YBScorecardOperationTableViewCell.m
//  PocketFootballScore
//
//  Created by bykj on 2019/10/24.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "YBScorecardOperationTableViewCell.h"
@interface YBScorecardOperationTableViewCell()
@property(nonatomic, strong)UIButton *YBResetButton;//重新计时、计分按钮
@property(nonatomic, strong)UIButton *YBChangeButton;//交换按钮
@property(nonatomic, strong)UIButton *YBSaveButton;//保存按钮
@property(nonatomic, assign)BOOL YBisOn;
@property(nonatomic, assign)BOOL YBisStop;
@end
@implementation YBScorecardOperationTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = [UIColor cyanColor];
        [self.contentView addSubview:self.YBResetButton];
        [self.contentView addSubview:self.YBStartButton];
        [self.contentView addSubview:self.YBChangeButton];
        [self.contentView addSubview:self.YBSaveButton];
        
        [self.YBResetButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(20);
            make.top.equalTo(self.contentView).offset(20);
            make.width.mas_equalTo((YBWIDTH - 100) / 4);
            make.height.mas_equalTo(40);
            make.bottom.equalTo(self.contentView).offset(-20);

        }];
        [self.YBStartButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.YBResetButton.mas_trailing).offset(20);
            make.top.equalTo(self.contentView).offset(20);
            make.width.mas_equalTo((YBWIDTH - 100) / 4);
            make.height.mas_equalTo(40);
        }];
        [self.YBChangeButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.YBStartButton.mas_trailing).offset(20);
            make.top.equalTo(self.contentView).offset(20);
            make.width.mas_equalTo((YBWIDTH - 100) / 4);
            make.height.mas_equalTo(40);
        }];
        [self.YBSaveButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.YBChangeButton.mas_trailing).offset(20);
            make.top.equalTo(self.contentView).offset(20);
            make.width.mas_equalTo((YBWIDTH - 100) / 4);
            make.height.mas_equalTo(40);
        }];
        
        self.YBisStop = YES;
            //类方法会自动释放。
        self.YBtimer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(YBstartTimer) userInfo:nil repeats:YES];
        //需要让定时器暂停
        [self.YBtimer setFireDate:[NSDate distantFuture]];
        [[NSRunLoop currentRunLoop] addTimer:self.YBtimer forMode:NSRunLoopCommonModes];
    }
    return self;
}
-(void)YBstartTimer{
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
    if (self.YBScorecardOperationB) {
        self.YBScorecardOperationB(self);
    }
}
#pragma mark - action
- (void)YBbtnClick:(UIButton *)sender{
    self.index = sender.tag;
    if (sender.tag == 100) {
        self.seconds = 0;
        self.minutes = 0;
        self.hours = 0;
        [self.YBStartButton setTitle:NSLocalizedString(@"开始", nil) forState:UIControlStateNormal];
        [self.YBtimer setFireDate:[NSDate distantFuture]];
        self.YBisStop = YES;
        if (self.YBScorecardOperationB) {
            self.YBScorecardOperationB(self);
        }
    }else if (sender.tag == 101){
        if (self.YBisStop) {
          [self.YBStartButton setTitle:NSLocalizedString(@"停止", nil) forState:UIControlStateNormal];
           [_YBtimer setFireDate:[NSDate date]];
           self.YBisStop = NO;
        }else{
            [self.YBStartButton setTitle:NSLocalizedString(@"开始", nil) forState:UIControlStateNormal];
            [self.YBtimer setFireDate:[NSDate distantFuture]];
            self.YBisStop = YES;
        }
    }else if (sender.tag == 102){
        if (self.YBScorecardOperationB) {
            self.YBScorecardOperationB(self);
        }
    }else if (sender.tag == 103){
        if (self.YBScorecardOperationB) {
            self.YBScorecardOperationB(self);
        }
    }
   
}
#pragma mark - 属性懒加载
- (UIButton *)YBResetButton{
    if (!_YBResetButton) {
        _YBResetButton = [[UIButton alloc] init];
        _YBResetButton.tag = 100;
        _YBResetButton.backgroundColor = [UIColor systemGreenColor];
        [_YBResetButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_YBResetButton.titleLabel setFont:[UIFont systemFontOfSize:18]];
        _YBResetButton.layer.cornerRadius = 20.0f;
        _YBResetButton.layer.masksToBounds = YES;
        [_YBResetButton addTarget:self action:@selector(YBbtnClick:) forControlEvents:UIControlEventTouchUpInside];
        [_YBResetButton setTitle:NSLocalizedString(@"重来", nil) forState:UIControlStateNormal];
    }
    return _YBResetButton;
}
- (UIButton *)YBStartButton{
    if (!_YBStartButton) {
        _YBStartButton = [[UIButton alloc] init];
        _YBStartButton.tag = 101;
        _YBStartButton.backgroundColor = [UIColor systemGreenColor];
        [_YBStartButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_YBStartButton.titleLabel setFont:[UIFont systemFontOfSize:18]];
        _YBStartButton.layer.cornerRadius = 20.0f;
        _YBStartButton.layer.masksToBounds = YES;
        [_YBStartButton addTarget:self action:@selector(YBbtnClick:) forControlEvents:UIControlEventTouchUpInside];
        [_YBStartButton setTitle:NSLocalizedString(@"开始", nil) forState:UIControlStateNormal];
    }
    return _YBStartButton;
}
- (UIButton *)YBChangeButton{
    if (!_YBChangeButton) {
        _YBChangeButton = [[UIButton alloc] init];
        _YBChangeButton.tag = 102;
        _YBChangeButton.backgroundColor = [UIColor systemGreenColor];
        [_YBChangeButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_YBChangeButton.titleLabel setFont:[UIFont systemFontOfSize:18]];
        _YBChangeButton.layer.cornerRadius = 20.0f;
        _YBChangeButton.layer.masksToBounds = YES;
        [_YBChangeButton addTarget:self action:@selector(YBbtnClick:) forControlEvents:UIControlEventTouchUpInside];
        [_YBChangeButton setTitle:NSLocalizedString(@"交换", nil) forState:UIControlStateNormal];
    }
    return _YBChangeButton;
}
- (UIButton *)YBSaveButton{
    if (!_YBSaveButton) {
        _YBSaveButton = [[UIButton alloc] init];
        _YBSaveButton.tag = 103;
        _YBSaveButton.backgroundColor = [UIColor systemGreenColor];
        [_YBSaveButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_YBSaveButton.titleLabel setFont:[UIFont systemFontOfSize:18]];
        _YBSaveButton.layer.cornerRadius = 20.0f;
        _YBSaveButton.layer.masksToBounds = YES;
        [_YBSaveButton addTarget:self action:@selector(YBbtnClick:) forControlEvents:UIControlEventTouchUpInside];
        [_YBSaveButton setTitle:NSLocalizedString(@"保存", nil) forState:UIControlStateNormal];
    }
    return _YBSaveButton;
}
@end
