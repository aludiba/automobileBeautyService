//
//  BMScoringViewController.m
//  HeyGameScoreboard
//
//  Created by user on 2020/7/10.
//  Copyright © 2020 Hey. All rights reserved.
//

#import "BMScoringViewController.h"

@interface BMScoringViewController ()
@property(nonatomic, strong)UIScrollView *BMscrollView;//秒表功能背景
@property(nonatomic, strong)UIView *BMtransitionView;//过渡视图

@property(nonatomic, strong)UILabel *BMtimerLbl;//计时面板


@property(nonatomic, assign)Boolean BMisStart;
@property(nonatomic, strong)NSTimer *BMtimer;//计时器
@property(nonatomic, assign)NSInteger BMseconds;//秒
@property(nonatomic, assign)NSInteger BMminus;//分
@property(nonatomic, assign)NSInteger BMhours;//毫秒
@property(nonatomic, strong)NSDate *BMpauseTimeDate;//暂停时间
@property(nonatomic, assign)Boolean BMisPause;//是否暂停
@end

@implementation BMScoringViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self BMsetContentView];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.navigationBarHidden = YES;
}
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    self.navigationController.navigationBarHidden = NO;
}
#pragma mark - actions
- (void)BMsetContentView{
    self.view.backgroundColor = [UIColor cyanColor];
    
}
- (void)BMstartTimer{
    self.BMseconds++;
    //每过60秒，就让分·+1，然后让秒归零
    if (self.BMseconds == 60) {
        self.BMminus++;
        self.BMseconds = 0;
    }
    if (self.BMminus == 60) {
        self.BMhours++;
        self.BMminus = 0;
    }
    //让不断变量的时间数据进行显示到label上面
    
}
#pragma mark - 属性懒加载
- (NSTimer *)BMtimer{
    if (!_BMtimer) {
        _BMtimer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(BMstartTimer) userInfo:nil repeats:YES];
        [_BMtimer setFireDate:[NSDate distantFuture]];
    }
    return _BMtimer;
}
- (UIScrollView *)BMscrollView{
    if (!_BMscrollView) {
        _BMscrollView = [[UIScrollView alloc] init];
        _BMscrollView.backgroundColor = [UIColor whiteColor];
        _BMscrollView.showsVerticalScrollIndicator = NO;
        _BMscrollView.bounces = NO;
    }
    return _BMscrollView;
}
- (UIView *)BMtransitionView{
    if (!_BMtransitionView) {
        _BMtransitionView = [[UIView alloc] init];
        _BMtransitionView.backgroundColor = [UIColor whiteColor];
    }
    return _BMtransitionView;
}
- (UILabel *)BMtimerLbl{
    if (!_BMtimerLbl) {
        _BMtimerLbl = [[UILabel alloc] init];
        _BMtimerLbl.backgroundColor = [UIColor clearColor];
        _BMtimerLbl.textColor = [UIColor blackColor];
        _BMtimerLbl.font = [UIFont systemFontOfSize:25];
        _BMtimerLbl.text = @"00:00:00";
        _BMtimerLbl.textAlignment = NSTextAlignmentCenter;
    }
    return _BMtimerLbl;
}

@end
