//
//  LBCreateGameViewController.m
//  MacroSports
//
//  Created by user on 2020/7/4.
//  Copyright © 2020 macro. All rights reserved.
//

#import "LBCreateGameViewController.h"
#import "LBTeamViewController.h"
#import "LBTeamModel.h"
#import "LBGameModel.h"

@interface LBCreateGameViewController ()
@property(nonatomic, strong)UIScrollView *LBscrollView;//秒表功能背景
@property(nonatomic, strong)UIView *LBtransitionView;//过渡视图

@property(nonatomic, strong)UILabel *LBtimerLbl;//计时面板

@property(nonatomic, strong)UILabel *LBaTeamTitleLbl;//a球队标题
@property(nonatomic, strong)UIButton *LBaTeamBtn;//a球队名称选择
@property(nonatomic, strong)UILabel *LBbTeamTitleLbl;//b球队标题
@property(nonatomic, strong)UIButton *LBbTeamBtn;//b球队名称选择

@property(nonatomic, strong)UIView *LBplanPartitionView;//计分区
@property(nonatomic, strong)UIButton *LBaAddBtn;//a球队加分
@property(nonatomic, strong)UILabel *LBaAddLbl;//a球队得分显示
@property(nonatomic, assign)NSInteger LBaTeamScore;
@property(nonatomic, strong)UIButton *LBaReductionBtn;//a球队减分
@property(nonatomic, strong)UILabel *LBVSLbl;//vs标记
@property(nonatomic, strong)UIButton *LBbAddBtn;//b球队加分
@property(nonatomic, strong)UILabel *LBbAddLbl;//b球队得分显示
@property(nonatomic, assign)NSInteger LBbTeamScore;
@property(nonatomic, strong)UIButton *LBbReductionBtn;//b球队减分

@property(nonatomic, strong)UIButton *LBstartGameBtn;//开始比赛
@property(nonatomic, assign)Boolean LBisStart;
@property(nonatomic, strong)UIButton *LBpauseGameBtn;//暂停比赛
@property(nonatomic, strong)UIButton *LBendGameBtn;//结束比赛

@property(nonatomic, strong)LBTeamModel *LBteamAmodel;
@property(nonatomic, strong)LBTeamModel *LBteamBmodel;

@property(nonatomic, strong)NSTimer *LBtimer;//计时器
@property(nonatomic, assign)NSInteger LBseconds;//秒
@property(nonatomic, assign)NSInteger LBminus;//分
@property(nonatomic, assign)NSInteger LBhours;//毫秒
@property(nonatomic, strong)NSDate *LBpauseTimeDate;//暂停时间
@property(nonatomic, assign)Boolean LBisPause;//是否暂停
@end

@implementation LBCreateGameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"创建比赛";
    [self LBsetContentView];
}
#pragma mark - actions
- (void)LBsetContentView{
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.LBscrollView];
    [self.LBscrollView addSubview:self.LBtransitionView];
    [self.LBtransitionView addSubview:self.LBtimerLbl];
    [self.LBtransitionView addSubview:self.LBaTeamTitleLbl];
    [self.LBtransitionView addSubview:self.LBaTeamBtn];
    [self.LBtransitionView addSubview:self.LBbTeamTitleLbl];
    [self.LBtransitionView addSubview:self.LBbTeamBtn];
    [self.LBtransitionView addSubview:self.LBplanPartitionView];
    [self.LBtransitionView addSubview:self.LBaAddBtn];
    [self.LBtransitionView addSubview:self.LBaAddLbl];
    [self.LBtransitionView addSubview:self.LBaReductionBtn];
    [self.LBtransitionView addSubview:self.LBVSLbl];
    [self.LBtransitionView addSubview:self.LBbAddBtn];
    [self.LBtransitionView addSubview:self.LBbAddLbl];
    [self.LBtransitionView addSubview:self.LBbReductionBtn];
    [self.LBtransitionView addSubview:self.LBstartGameBtn];
    [self.LBtransitionView addSubview:self.LBpauseGameBtn];
    [self.LBtransitionView addSubview:self.LBendGameBtn];
    
    [self.LBscrollView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.left.bottom.right.equalTo(self.view);
    }];
    [self.LBtransitionView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.LBscrollView);//上下滚动
        make.width.equalTo(self.LBscrollView);
    }];
    [self.LBtimerLbl mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.LBtransitionView).offset(30);
        make.leading.equalTo(self.LBtransitionView).offset(20);
        make.trailing.equalTo(self.LBtransitionView).offset(-20);
        make.height.mas_equalTo(30);
    }];
    CGFloat LBwidth = (LBWIDTH - 40 - 40) * 0.5;
    [self.LBaTeamTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.LBtimerLbl.mas_bottom).offset(20);
        make.leading.equalTo(self.LBtransitionView).offset(20);
        make.width.mas_equalTo(LBwidth);
        make.height.mas_equalTo(22);
    }];
    [self.LBaTeamBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.LBaTeamTitleLbl.mas_bottom).offset(10);
        make.leading.equalTo(self.LBtransitionView).offset(20);
        make.width.mas_equalTo(LBwidth);
        make.height.mas_equalTo(30);
    }];
    [self.LBbTeamTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.LBtimerLbl.mas_bottom).offset(20);
        make.trailing.equalTo(self.LBtransitionView).offset(-20);
        make.width.mas_equalTo(LBwidth);
        make.height.mas_equalTo(22);
    }];
    [self.LBbTeamBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.LBbTeamTitleLbl.mas_bottom).offset(10);
        make.trailing.equalTo(self.LBtransitionView).offset(-20);
        make.width.mas_equalTo(LBwidth);
        make.height.mas_equalTo(30);
    }];
    [self.LBplanPartitionView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.LBbTeamBtn.mas_bottom).offset(20);
        make.leading.equalTo(self.LBtransitionView).offset(20);
        make.trailing.equalTo(self.LBtransitionView).offset(-20);
        make.height.mas_equalTo(178);
    }];
    [self.LBaAddBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.LBplanPartitionView).offset(20);
        make.leading.equalTo(self.LBplanPartitionView).offset(30);
        make.width.mas_equalTo(44);
        make.height.mas_equalTo(44);
    }];
    [self.LBaAddLbl mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.LBaAddBtn.mas_bottom).offset(10);
        make.centerX.equalTo(self.LBaAddBtn);
        make.width.mas_equalTo(30);
        make.height.mas_equalTo(30);
    }];
    [self.LBaReductionBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.LBaAddLbl.mas_bottom).offset(10);
        make.leading.equalTo(self.LBplanPartitionView).offset(30);
        make.width.mas_equalTo(44);
        make.height.mas_equalTo(44);
    }];
    [self.LBVSLbl mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.LBplanPartitionView);
        make.centerY.equalTo(self.LBplanPartitionView);
        make.width.mas_equalTo(44);
        make.height.mas_equalTo(44);
    }];
    [self.LBbAddBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.LBplanPartitionView).offset(20);
        make.trailing.equalTo(self.LBplanPartitionView).offset(-30);
        make.width.mas_equalTo(44);
        make.height.mas_equalTo(44);
    }];
    [self.LBbAddLbl mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.LBbAddBtn.mas_bottom).offset(10);
        make.centerX.equalTo(self.LBbAddBtn);
        make.width.mas_equalTo(30);
        make.height.mas_equalTo(30);
    }];
    [self.LBbReductionBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.LBbAddLbl.mas_bottom).offset(10);
        make.trailing.equalTo(self.LBplanPartitionView).offset(-30);
        make.width.mas_equalTo(44);
        make.height.mas_equalTo(44);
    }];
    [self.LBstartGameBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.LBplanPartitionView.mas_bottom).offset(20);
        make.leading.equalTo(self.LBtransitionView).offset(20);
        make.trailing.equalTo(self.LBtransitionView).offset(-20);
        make.height.mas_equalTo(36);
    }];
    [self.LBpauseGameBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.LBstartGameBtn.mas_bottom).offset(20);
        make.leading.equalTo(self.LBtransitionView).offset(20);
        make.trailing.equalTo(self.LBtransitionView).offset(-20);
        make.height.mas_equalTo(36);
    }];
    [self.LBendGameBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.LBpauseGameBtn.mas_bottom).offset(20);
        make.leading.equalTo(self.LBtransitionView).offset(20);
        make.trailing.equalTo(self.LBtransitionView).offset(-20);
        make.height.mas_equalTo(36);
    }];
    [self.LBtransitionView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(self.LBendGameBtn.mas_bottom).offset(20);
    }];
}
- (void)LBbtnAction:(UIButton *)sender{
    if (sender.tag == 97) {
        NSLog(@"选择球队a~");
        LBTeamViewController *LBTeamVC = [[LBTeamViewController alloc] init];
        LBTeamVC.LBisSelect = YES;
        LBWeakSelf(self);
        LBTeamVC.LBteamSelectB = ^(LBTeamViewController * _Nonnull cell) {
            LBStrongSelf(self);
            if (![cell.LBSelectteammodel.LBteamName isEqualToString:self.LBteamAmodel.LBteamName] && ![cell.LBSelectteammodel.LBteamName isEqualToString:self.LBteamBmodel.LBteamName]) {
                self.LBteamAmodel = cell.LBSelectteammodel;
                [self.LBaTeamBtn setTitle:self.LBteamAmodel.LBteamName forState:UIControlStateNormal];
            }
        };
        [self.navigationController pushViewController:LBTeamVC animated:YES];
    }else if(sender.tag == 98){
        NSLog(@"选择球队b~");
        LBTeamViewController *LBTeamVC = [[LBTeamViewController alloc] init];
        LBTeamVC.LBisSelect = YES;
        LBWeakSelf(self);
        LBTeamVC.LBteamSelectB = ^(LBTeamViewController * _Nonnull cell) {
            LBStrongSelf(self);
            if (![cell.LBSelectteammodel.LBteamName isEqualToString:self.LBteamAmodel.LBteamName] && ![cell.LBSelectteammodel.LBteamName isEqualToString:self.LBteamBmodel.LBteamName]) {
                self.LBteamBmodel = cell.LBSelectteammodel;
                [self.LBbTeamBtn setTitle:self.LBteamBmodel.LBteamName forState:UIControlStateNormal];
            }
        };
        [self.navigationController pushViewController:LBTeamVC animated:YES];
    }else if(sender.tag == 99){
        NSLog(@"球队a加一分~");
        if (!self.LBteamAmodel.LBteamName.length || !self.LBteamBmodel.LBteamName.length) {
            [MBProgressHUD LBshowReminderText:@"请选择球队"];
            return;
            }
        if (self.LBisStart) {
        self.LBaTeamScore++;
        self.LBaAddLbl.text = [NSString stringWithFormat:@"%ld",self.LBaTeamScore];
        }
    }else if(sender.tag == 100){
        NSLog(@"球队a减一分~");
        if (!self.LBteamAmodel.LBteamName.length || !self.LBteamBmodel.LBteamName.length) {
            [MBProgressHUD LBshowReminderText:@"请选择球队"];
            return;
            }
        if (self.LBisStart) {
        self.LBaTeamScore--;
        self.LBaAddLbl.text = [NSString stringWithFormat:@"%ld",self.LBaTeamScore];
        }
    }else if(sender.tag == 101){
        NSLog(@"球队b加一分~");
        if (!self.LBteamAmodel.LBteamName.length || !self.LBteamBmodel.LBteamName.length) {
            [MBProgressHUD LBshowReminderText:@"请选择球队"];
            return;
            }
        if (self.LBisStart) {
        self.LBbTeamScore++;
        self.LBbAddLbl.text = [NSString stringWithFormat:@"%ld",self.LBbTeamScore];
        }
    }else if(sender.tag == 102){
        NSLog(@"球队b减一分~");
        if (!self.LBteamAmodel.LBteamName.length || !self.LBteamBmodel.LBteamName.length) {
            [MBProgressHUD LBshowReminderText:@"请选择球队"];

             return;
        }
        if (self.LBisStart) {
        self.LBbTeamScore--;
        self.LBbAddLbl.text = [NSString stringWithFormat:@"%ld",self.LBbTeamScore];
        }
    }else if(sender.tag == 103){
        NSLog(@"开始比赛~");
        if (!self.LBteamAmodel.LBteamName.length || !self.LBteamBmodel.LBteamName.length) {
        [MBProgressHUD LBshowReminderText:@"请选择球队"];
        return;
        }
        self.LBisStart = YES;
        if (self.LBisPause) {
            [self.LBtimer setFireDate:self.LBpauseTimeDate];
        }else{
            [self.LBtimer setFireDate:[NSDate distantPast]];
        }
        self.LBisPause = NO;
        self.LBpauseTimeDate = nil;
    }else if(sender.tag == 104){
        NSLog(@"暂停比赛~");
        if (!self.LBteamAmodel.LBteamName.length || !self.LBteamBmodel.LBteamName.length) {
        [MBProgressHUD LBshowReminderText:@"请选择球队"];
        return;
        }
        self.LBisStart = NO;
        self.LBpauseTimeDate = [NSDate date];
        self.LBisPause = YES;
        [self.LBtimer setFireDate:[NSDate distantFuture]];
    }else if(sender.tag == 105){
        NSLog(@"结束比赛~");
        if (!self.LBteamAmodel.LBteamName.length || !self.LBteamBmodel.LBteamName.length) {
        [MBProgressHUD LBshowReminderText:@"请选择球队"];
        return;
        }
        self.LBisStart = NO;
        [self.LBtimer setFireDate:[NSDate distantFuture]];
        self.LBhours = 0;
        self.LBminus = 0;
        self.LBseconds = 0;
        self.LBtimerLbl.text = [NSString stringWithFormat:@"%02ld:%02ld:%02ld",(long)self.LBhours,(long)self.LBminus,(long)self.LBseconds];
        self.LBisPause = NO;
        self.LBpauseTimeDate = nil;
        //保存比赛结果
        [self LBsaveAction];
        self.LBaTeamScore = 0;
        self.LBbTeamScore = 0;
        self.LBaAddLbl.text = @"0";
        self.LBbAddLbl.text = @"0";
    }
}
- (void)LBstartTimer{
    self.LBseconds++;
    //每过60秒，就让分·+1，然后让秒归零
    if (self.LBseconds == 60) {
        self.LBminus++;
        self.LBseconds = 0;
    }
    if (self.LBminus == 60) {
        self.LBhours++;
        self.LBminus = 0;
    }
    //让不断变量的时间数据进行显示到label上面
    self.LBtimerLbl.text = [NSString stringWithFormat:@"%02ld:%02ld:%02ld",(long)self.LBhours,(long)self.LBminus,(long)self.LBseconds];
}
- (void)LBsaveAction{
    LBGameModel *LBgamemodel = [[LBGameModel alloc] init];
    NSDate *LBendDateTime = [[NSDate alloc] init];
    // 实例化NSDateFormatter
    NSDateFormatter *LBformatter = [[NSDateFormatter alloc] init];
    // 设置日期格式
    [LBformatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    NSString *LBendDateTimeString = [LBformatter stringFromDate:LBendDateTime];
    LBgamemodel.LBendDateTime = LBendDateTimeString;
    LBgamemodel.LBaTeamName = self.LBteamAmodel.LBteamName;
    LBgamemodel.LBbTeamName = self.LBteamBmodel.LBteamName;
    LBgamemodel.LBaTeamScore = [NSString stringWithFormat:@"%ld",self.LBaTeamScore];
    LBgamemodel.LBbTeamScore = [NSString stringWithFormat:@"%ld",self.LBbTeamScore];
    NSMutableDictionary *LBjsonDictionary = [[NSMutableDictionary alloc] initWithDictionary:(NSDictionary *)[LBgamemodel yy_modelToJSONObject]];
    AVUser *LBauthor = [AVUser currentUser];
    AVObject *LBdataList = [AVObject objectWithClassName:@"LBgameList"];
        for (NSString *key in LBjsonDictionary.allKeys) {
            [LBdataList setObject:[LBjsonDictionary objectForKey:key]  forKey:key];
        }
        [LBdataList setObject:LBauthor forKey:@"author"];
        [LBdataList saveInBackgroundWithBlock:^(BOOL isSuccessful, NSError *error) {
            if (isSuccessful) {
                [MBProgressHUD LBshowReminderText:@"保存成功"];
                [self.navigationController popViewControllerAnimated:YES];
            } else if (error){
                //发生错误后的动作
                [MBProgressHUD LBshowReminderText:@"请稍后重试"];
            } else {
                [MBProgressHUD LBshowReminderText:@"请稍后重试"];
            }
        }];
}
- (void)dealloc{
    [self.LBtimer invalidate];
    self.LBtimer = nil;
}
#pragma mark - 属性懒加载
- (NSTimer *)LBtimer{
    if (!_LBtimer) {
        _LBtimer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(LBstartTimer) userInfo:nil repeats:YES];
        [_LBtimer setFireDate:[NSDate distantFuture]];
    }
    return _LBtimer;
}
- (UIScrollView *)LBscrollView{
    if (!_LBscrollView) {
        _LBscrollView = [[UIScrollView alloc] init];
        _LBscrollView.backgroundColor = [UIColor whiteColor];
        _LBscrollView.showsVerticalScrollIndicator = NO;
        _LBscrollView.bounces = NO;
    }
    return _LBscrollView;
}
- (UIView *)LBtransitionView{
    if (!_LBtransitionView) {
        _LBtransitionView = [[UIView alloc] init];
        _LBtransitionView.backgroundColor = [UIColor whiteColor];
    }
    return _LBtransitionView;
}
- (UILabel *)LBtimerLbl{
    if (!_LBtimerLbl) {
        _LBtimerLbl = [[UILabel alloc] init];
        _LBtimerLbl.backgroundColor = [UIColor greenColor];
        _LBtimerLbl.textColor = [UIColor blackColor];
        _LBtimerLbl.font = [UIFont systemFontOfSize:22];
        _LBtimerLbl.layer.cornerRadius = 4.0f;
        _LBtimerLbl.layer.masksToBounds = YES;
        _LBtimerLbl.text = @"00:00:00";
        _LBtimerLbl.textAlignment = NSTextAlignmentCenter;
    }
    return _LBtimerLbl;
}
- (UILabel *)LBaTeamTitleLbl{
    if (!_LBaTeamTitleLbl) {
        _LBaTeamTitleLbl = [[UILabel alloc] init];
        _LBaTeamTitleLbl.backgroundColor = [UIColor whiteColor];
        _LBaTeamTitleLbl.textColor = [UIColor blackColor];
        _LBaTeamTitleLbl.font = [UIFont systemFontOfSize:18];
        _LBaTeamTitleLbl.text = @"球队A";
        _LBaTeamTitleLbl.textAlignment = NSTextAlignmentCenter;
    }
    return _LBaTeamTitleLbl;
}
- (UIButton *)LBaTeamBtn{
    if (!_LBaTeamBtn) {
        _LBaTeamBtn = [[UIButton alloc] init];
        _LBaTeamBtn.backgroundColor = [UIColor greenColor];
        [_LBaTeamBtn setTitle:@"选择球队" forState:UIControlStateNormal];
        _LBaTeamBtn.titleLabel.font = [UIFont boldSystemFontOfSize:18];
        [_LBaTeamBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        _LBaTeamBtn.layer.cornerRadius = 4.0f;
        _LBaTeamBtn.layer.masksToBounds = YES;
        _LBaTeamBtn.tag = 97;
        [_LBaTeamBtn addTarget:self action:@selector(LBbtnAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _LBaTeamBtn;
}
- (UILabel *)LBbTeamTitleLbl{
    if (!_LBbTeamTitleLbl) {
        _LBbTeamTitleLbl = [[UILabel alloc] init];
        _LBbTeamTitleLbl.backgroundColor = [UIColor whiteColor];
        _LBbTeamTitleLbl.textColor = [UIColor blackColor];
        _LBbTeamTitleLbl.font = [UIFont systemFontOfSize:18];
        _LBbTeamTitleLbl.text = @"球队B";
        _LBbTeamTitleLbl.textAlignment = NSTextAlignmentCenter;
    }
    return _LBbTeamTitleLbl;
}
- (UIButton *)LBbTeamBtn{
    if (!_LBbTeamBtn) {
        _LBbTeamBtn = [[UIButton alloc] init];
        _LBbTeamBtn.backgroundColor = [UIColor greenColor];
        [_LBbTeamBtn setTitle:@"选择球队" forState:UIControlStateNormal];
        _LBbTeamBtn.titleLabel.font = [UIFont boldSystemFontOfSize:18];
        [_LBbTeamBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        _LBbTeamBtn.layer.cornerRadius = 4.0f;
        _LBbTeamBtn.layer.masksToBounds = YES;
        _LBbTeamBtn.tag = 98;
        [_LBbTeamBtn addTarget:self action:@selector(LBbtnAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _LBbTeamBtn;
}
- (UIView *)LBplanPartitionView{
    if (!_LBplanPartitionView) {
        _LBplanPartitionView = [[UIView alloc] init];
        _LBplanPartitionView.backgroundColor = [UIColor greenColor];
        _LBplanPartitionView.layer.cornerRadius = 4.0f;
        _LBplanPartitionView.layer.masksToBounds = YES;
    }
    return _LBplanPartitionView;
}
- (UIButton *)LBaAddBtn{
    if (!_LBaAddBtn) {
        _LBaAddBtn = [[UIButton alloc] init];
        [_LBaAddBtn setImage:[UIImage imageNamed:@"LB_jiahao"] forState:UIControlStateNormal];
        _LBaAddBtn.tag = 99;
        [_LBaAddBtn addTarget:self action:@selector(LBbtnAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _LBaAddBtn;
}
- (UILabel *)LBaAddLbl{
    if (!_LBaAddLbl) {
        _LBaAddLbl = [[UILabel alloc] init];
        _LBaAddLbl.textColor = [UIColor blackColor];
        _LBaAddLbl.font = [UIFont systemFontOfSize:25];
        _LBaAddLbl.textAlignment = NSTextAlignmentCenter;
        _LBaAddLbl.text = @"0";
        _LBaAddLbl.layer.cornerRadius = 14.5f;
        _LBaAddLbl.layer.masksToBounds = YES;
    }
    return _LBaAddLbl;
}
- (UIButton *)LBaReductionBtn{
    if (!_LBaReductionBtn) {
        _LBaReductionBtn = [[UIButton alloc] init];
        [_LBaReductionBtn setImage:[UIImage imageNamed:@"LB_jianhao"] forState:UIControlStateNormal];
        _LBaReductionBtn.tag = 100;
        [_LBaReductionBtn addTarget:self action:@selector(LBbtnAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _LBaReductionBtn;
}
- (UILabel *)LBVSLbl{
    if (!_LBVSLbl) {
        _LBVSLbl = [[UILabel alloc] init];
        _LBVSLbl.backgroundColor = [UIColor clearColor];
        _LBVSLbl.font = [UIFont boldSystemFontOfSize:28];
        _LBVSLbl.textColor = [UIColor blackColor];
        _LBVSLbl.text = @"VS";
        _LBVSLbl.textAlignment = NSTextAlignmentCenter;
    }
    return _LBVSLbl;
}
- (UIButton *)LBbAddBtn{
    if (!_LBbAddBtn) {
        _LBbAddBtn = [[UIButton alloc] init];
        [_LBbAddBtn setImage:[UIImage imageNamed:@"LB_jiahao"] forState:UIControlStateNormal];
        _LBbAddBtn.tag = 101;
        [_LBbAddBtn addTarget:self action:@selector(LBbtnAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _LBbAddBtn;
}
- (UILabel *)LBbAddLbl{
    if (!_LBbAddLbl) {
        _LBbAddLbl = [[UILabel alloc] init];
        _LBbAddLbl.textColor = [UIColor blackColor];
        _LBbAddLbl.font = [UIFont systemFontOfSize:25];
        _LBbAddLbl.textAlignment = NSTextAlignmentCenter;
        _LBbAddLbl.text = @"0";
        _LBbAddLbl.layer.cornerRadius = 14.5f;
        _LBbAddLbl.layer.masksToBounds = YES;
    }
    return _LBbAddLbl;
}
- (UIButton *)LBbReductionBtn{
    if (!_LBbReductionBtn) {
        _LBbReductionBtn = [[UIButton alloc] init];
        [_LBbReductionBtn setImage:[UIImage imageNamed:@"LB_jianhao"] forState:UIControlStateNormal];
        _LBbReductionBtn.tag = 102;
        [_LBbReductionBtn addTarget:self action:@selector(LBbtnAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _LBbReductionBtn;
}
- (UIButton *)LBstartGameBtn{
    if (!_LBstartGameBtn) {
        _LBstartGameBtn = [[UIButton alloc] init];
        _LBstartGameBtn.backgroundColor = [UIColor greenColor];
        _LBstartGameBtn.titleLabel.font = [UIFont systemFontOfSize:22];
        [_LBstartGameBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_LBstartGameBtn.titleLabel setTextAlignment:NSTextAlignmentCenter];
        [_LBstartGameBtn setTitle:@"开始比赛" forState:UIControlStateNormal];
        _LBstartGameBtn.layer.cornerRadius = 4.0f;
        _LBstartGameBtn.layer.masksToBounds = YES;
        _LBstartGameBtn.tag = 103;
        [_LBstartGameBtn addTarget:self action:@selector(LBbtnAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _LBstartGameBtn;
}
- (UIButton *)LBpauseGameBtn{
    if (!_LBpauseGameBtn) {
        _LBpauseGameBtn = [[UIButton alloc] init];
        _LBpauseGameBtn.backgroundColor = [UIColor yellowColor];
        _LBpauseGameBtn.titleLabel.font = [UIFont systemFontOfSize:20];
        [_LBpauseGameBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_LBpauseGameBtn.titleLabel setTextAlignment:NSTextAlignmentCenter];
        [_LBpauseGameBtn setTitle:@"暂停比赛" forState:UIControlStateNormal];
        _LBpauseGameBtn.layer.cornerRadius = 4.0f;
        _LBpauseGameBtn.layer.masksToBounds = YES;
        _LBpauseGameBtn.tag = 104;
        [_LBpauseGameBtn addTarget:self action:@selector(LBbtnAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _LBpauseGameBtn;
}
- (UIButton *)LBendGameBtn{
    if (!_LBendGameBtn) {
        _LBendGameBtn = [[UIButton alloc] init];
        _LBendGameBtn.backgroundColor = [UIColor redColor];
        _LBendGameBtn.titleLabel.font = [UIFont systemFontOfSize:20];
        [_LBendGameBtn setTitleColor:[UIColor cyanColor] forState:UIControlStateNormal];
        [_LBendGameBtn.titleLabel setTextAlignment:NSTextAlignmentCenter];
        [_LBendGameBtn setTitle:@"结束比赛" forState:UIControlStateNormal];
        _LBendGameBtn.layer.cornerRadius = 4.0f;
        _LBendGameBtn.layer.masksToBounds = YES;
        _LBendGameBtn.tag = 105;
        [_LBendGameBtn addTarget:self action:@selector(LBbtnAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _LBendGameBtn;
}
@end
