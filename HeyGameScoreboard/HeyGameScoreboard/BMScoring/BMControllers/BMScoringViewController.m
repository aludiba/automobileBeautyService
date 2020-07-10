//
//  BMScoringViewController.m
//  HeyGameScoreboard
//
//  Created by user on 2020/7/10.
//  Copyright © 2020 Hey. All rights reserved.
//

#import "BMScoringViewController.h"

@interface BMScoringViewController ()<UITextFieldDelegate>
@property(nonatomic, strong)UIScrollView *BMscrollView;//秒表功能背景
@property(nonatomic, strong)UIView *BMtransitionView;//过渡视图

@property(nonatomic, strong)UILabel *BMtimerLbl;//计时面板

@property(nonatomic, strong)UITextField *BMaTeamTextF;//a球队标题
@property(nonatomic, strong)UILabel *BMaTeamScoreLbl;//a球队得分显示
@property(nonatomic, strong)UIButton *BMaAddBtn;//a球队加分
@property(nonatomic, strong)UIButton *BMaReductionBtn;//a球队减分
@property(nonatomic, strong)UITextField *BMbTeamTextF;//b球队标题
@property(nonatomic, strong)UILabel *BMbTeamScoreLbl;//b球队得分显示
@property(nonatomic, strong)UIButton *BMbAddBtn;//b球队加分
@property(nonatomic, strong)UIButton *BMbReductionBtn;//b球队减分
@property(nonatomic, strong)UILabel *BMVSLbl;
@property(nonatomic, strong)UILabel *BMduelLbl;

@property(nonatomic, strong)UIButton *BMstartBtn;//开始
@property(nonatomic, strong)UIButton *BMscreenshotsBtn;//截屏
@property(nonatomic, strong)UIButton *BMremoveBtn;//清除
@property(nonatomic, strong)UIButton *BMsaveBtn;//保存
@property(nonatomic, strong)UIButton *BMexchangeBtn;//交换
@property(nonatomic, strong)UIButton *BMhistoryBtn;//历史

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
    [self.view addSubview:self.BMscrollView];
    [self.BMscrollView addSubview:self.BMtransitionView];
    
    [self.BMtransitionView addSubview:self.BMtimerLbl];
    
    [self.BMtransitionView addSubview:self.BMaTeamTextF];
    [self.BMtransitionView addSubview:self.BMaTeamScoreLbl];
    [self.BMtransitionView addSubview:self.BMaAddBtn];
    [self.BMtransitionView addSubview:self.BMaReductionBtn];
    [self.BMtransitionView addSubview:self.BMbTeamTextF];
    [self.BMtransitionView addSubview:self.BMbTeamScoreLbl];
    [self.BMtransitionView addSubview:self.BMbAddBtn];
    [self.BMtransitionView addSubview:self.BMbReductionBtn];
    [self.BMtransitionView addSubview:self.BMVSLbl];
    [self.BMtransitionView addSubview:self.BMduelLbl];
    
    [self.BMtransitionView addSubview:self.BMstartBtn];
    [self.BMtransitionView addSubview:self.BMscreenshotsBtn];
    [self.BMtransitionView addSubview:self.BMremoveBtn];
    [self.BMtransitionView addSubview:self.BMsaveBtn];
    [self.BMtransitionView addSubview:self.BMexchangeBtn];
    [self.BMtransitionView addSubview:self.BMhistoryBtn];
    
    [self.BMscrollView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.left.bottom.right.equalTo(self.view);
    }];
    [self.BMtransitionView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.BMscrollView);//上下滚动
        make.width.equalTo(self.BMscrollView);
    }];
    
    [self.BMtimerLbl mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.BMtransitionView).offset(BMHeightNavBar);
        make.leading.equalTo(self.BMtransitionView);
        make.trailing.equalTo(self.BMtransitionView);
        make.height.mas_equalTo(40);
    }];
    
    CGFloat BMwidth = (BMWIDTH - 30 - 20) * 0.5;
    [self.BMaTeamTextF mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.BMtimerLbl.mas_bottom).offset(20);
        make.leading.equalTo(self.BMtransitionView).offset(10);
        make.width.mas_equalTo(BMwidth);
        make.height.mas_equalTo(35);
    }];
    [self.BMaTeamScoreLbl mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.BMaTeamTextF.mas_bottom).offset(20);
        make.leading.equalTo(self.BMtransitionView).offset(10);
        make.width.mas_equalTo(BMwidth);
        make.height.mas_equalTo(100);
    }];
    [self.BMbTeamTextF mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.BMtimerLbl.mas_bottom).offset(20);
        make.trailing.equalTo(self.BMtransitionView).offset(-10);
        make.width.mas_equalTo(BMwidth);
        make.height.mas_equalTo(35);
    }];
    [self.BMbTeamScoreLbl mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.BMbTeamTextF.mas_bottom).offset(20);
        make.trailing.equalTo(self.BMtransitionView).offset(-10);
        make.width.mas_equalTo(BMwidth);
        make.height.mas_equalTo(100);
    }];
    [self.BMVSLbl mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.BMbTeamTextF);
        make.centerX.equalTo(self.BMtransitionView);
        make.width.mas_equalTo(25);
        make.height.mas_equalTo(25);
    }];
    [self.BMduelLbl mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.BMaTeamScoreLbl);
        make.centerX.equalTo(self.BMtransitionView);
        make.width.mas_equalTo(25);
        make.height.mas_equalTo(25);
    }];
    [self.BMaAddBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.BMaTeamScoreLbl.mas_leading);
        make.top.equalTo(self.BMaTeamScoreLbl.mas_bottom).offset(15);
        make.width.mas_equalTo(44);
        make.height.mas_equalTo(44);
    }];
    [self.BMaReductionBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.equalTo(self.BMaTeamScoreLbl.mas_trailing);
        make.top.equalTo(self.BMaTeamScoreLbl.mas_bottom).offset(15);
        make.width.mas_equalTo(44);
        make.height.mas_equalTo(44);
    }];
    [self.BMbAddBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.BMbTeamScoreLbl.mas_leading);
        make.top.equalTo(self.BMbTeamScoreLbl.mas_bottom).offset(15);
        make.width.mas_equalTo(44);
        make.height.mas_equalTo(44);
    }];
    [self.BMbReductionBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.equalTo(self.BMbTeamScoreLbl.mas_trailing);
        make.top.equalTo(self.BMbTeamScoreLbl.mas_bottom).offset(15);
        make.width.mas_equalTo(44);
        make.height.mas_equalTo(44);
    }];
    CGFloat BMspaceX = (BMWIDTH - 120 * 3) * 0.25;
    [self.BMstartBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.BMbReductionBtn.mas_bottom).offset(30);
        make.leading.equalTo(self.BMtransitionView).offset(BMspaceX);
        make.width.mas_equalTo(120);
        make.height.mas_equalTo(120);
    }];
    [self.BMscreenshotsBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.BMbReductionBtn.mas_bottom).offset(30);
        make.leading.equalTo(self.BMstartBtn.mas_trailing).offset(BMspaceX);
        make.width.mas_equalTo(120);
        make.height.mas_equalTo(120);
    }];
    [self.BMremoveBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.BMbReductionBtn.mas_bottom).offset(30);
        make.leading.equalTo(self.BMscreenshotsBtn.mas_trailing).offset(BMspaceX);
        make.width.mas_equalTo(120);
        make.height.mas_equalTo(120);
    }];
    [self.BMsaveBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.BMstartBtn.mas_bottom).offset(15);
        make.leading.equalTo(self.BMtransitionView).offset(BMspaceX);
        make.width.mas_equalTo(120);
        make.height.mas_equalTo(120);
    }];
    [self.BMexchangeBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.BMscreenshotsBtn.mas_bottom).offset(15);
        make.leading.equalTo(self.BMsaveBtn.mas_trailing).offset(BMspaceX);
        make.width.mas_equalTo(120);
        make.height.mas_equalTo(120);
    }];
    [self.BMhistoryBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.BMremoveBtn.mas_bottom).offset(15);
        make.leading.equalTo(self.BMexchangeBtn.mas_trailing).offset(BMspaceX);
        make.width.mas_equalTo(120);
        make.height.mas_equalTo(120);
    }];
    [self.BMtransitionView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(self.BMhistoryBtn.mas_bottom).offset(20);
    }];
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
- (void)BMbtnAction:(UIButton *)sender{
    if (sender.tag == 99) {
        NSLog(@"a队加分~");
        
    }else if (sender.tag == 100){
        NSLog(@"a队减分~");
        
    }else if (sender.tag == 101){
        NSLog(@"b队加分~");

    }else if (sender.tag == 102){
        NSLog(@"b队减分~");

    }else if (sender.tag == 103){
        NSLog(@"开始~");

    }else if (sender.tag == 104){
        NSLog(@"截屏~");

    }else if (sender.tag == 105){
        NSLog(@"清除~");

    }else if (sender.tag == 106){
        NSLog(@"保存~");

    }else if (sender.tag == 107){
        NSLog(@"交换~");

    }else if (sender.tag == 108){
        NSLog(@"历史~");

    }
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
        _BMtimerLbl.font = [UIFont systemFontOfSize:35];
        _BMtimerLbl.text = @"00:00:00";
        _BMtimerLbl.textAlignment = NSTextAlignmentCenter;
    }
    return _BMtimerLbl;
}
- (UITextField *)BMaTeamTextF{
    if (!_BMaTeamTextF) {
        _BMaTeamTextF = [[UITextField alloc] init];
        _BMaTeamTextF.backgroundColor = [UIColor whiteColor];
        _BMaTeamTextF.delegate = self;
        _BMaTeamTextF.textColor = [UIColor blackColor];
        _BMaTeamTextF.font = [UIFont systemFontOfSize:18];
        _BMaTeamTextF.placeholder = @"队名";
        _BMaTeamTextF.layer.cornerRadius = 4.0f;
        _BMaTeamTextF.layer.masksToBounds = YES;
        _BMaTeamTextF.layer.borderWidth = 0.5f;
        _BMaTeamTextF.layer.borderColor = [UIColor grayColor].CGColor;
    }
    return _BMaTeamTextF;
}
- (UILabel *)BMaTeamScoreLbl{
    if (!_BMaTeamScoreLbl) {
        _BMaTeamScoreLbl = [[UILabel alloc] init];
        _BMaTeamScoreLbl.backgroundColor = [UIColor whiteColor];
        _BMaTeamScoreLbl.textColor = [UIColor blackColor];
        _BMaTeamScoreLbl.font = [UIFont boldSystemFontOfSize:80];
        _BMaTeamScoreLbl.textAlignment = NSTextAlignmentCenter;
        _BMaTeamScoreLbl.text = @"0";
        _BMaTeamScoreLbl.layer.cornerRadius = 4.0f;
        _BMaTeamScoreLbl.layer.masksToBounds = YES;
        _BMaTeamScoreLbl.layer.borderWidth = 0.5f;
        _BMaTeamScoreLbl.layer.borderColor = [UIColor grayColor].CGColor;
    }
    return _BMaTeamScoreLbl;
}
- (UITextField *)BMbTeamTextF{
    if (!_BMbTeamTextF) {
        _BMbTeamTextF = [[UITextField alloc] init];
        _BMbTeamTextF.backgroundColor = [UIColor whiteColor];
        _BMbTeamTextF.delegate = self;
        _BMbTeamTextF.textColor = [UIColor blackColor];
        _BMbTeamTextF.font = [UIFont systemFontOfSize:18];
        _BMbTeamTextF.placeholder = @"队名";
        _BMbTeamTextF.layer.cornerRadius = 4.0f;
        _BMbTeamTextF.layer.masksToBounds = YES;
        _BMbTeamTextF.layer.borderWidth = 0.5f;
        _BMbTeamTextF.layer.borderColor = [UIColor grayColor].CGColor;
    }
    return _BMbTeamTextF;
}
- (UILabel *)BMbTeamScoreLbl{
    if (!_BMbTeamScoreLbl) {
        _BMbTeamScoreLbl = [[UILabel alloc] init];
        _BMbTeamScoreLbl.backgroundColor = [UIColor whiteColor];
        _BMbTeamScoreLbl.textColor = [UIColor blackColor];
        _BMbTeamScoreLbl.font = [UIFont boldSystemFontOfSize:80];
        _BMbTeamScoreLbl.textAlignment = NSTextAlignmentCenter;
        _BMbTeamScoreLbl.text = @"0";
        _BMbTeamScoreLbl.layer.cornerRadius = 4.0f;
        _BMbTeamScoreLbl.layer.masksToBounds = YES;
        _BMbTeamScoreLbl.layer.borderWidth = 0.5f;
        _BMbTeamScoreLbl.layer.borderColor = [UIColor grayColor].CGColor;
    }
    return _BMbTeamScoreLbl;
}
- (UILabel *)BMVSLbl{
    if (!_BMVSLbl) {
        _BMVSLbl = [[UILabel alloc] init];
        _BMVSLbl.backgroundColor = [UIColor clearColor];
        _BMVSLbl.textColor = [UIColor blackColor];
        _BMVSLbl.font = [UIFont systemFontOfSize:20];
        _BMVSLbl.textAlignment = NSTextAlignmentCenter;
        _BMVSLbl.text = @"vs";
    }
    return _BMVSLbl;
}
- (UILabel *)BMduelLbl{
    if (!_BMduelLbl) {
        _BMduelLbl = [[UILabel alloc] init];
        _BMduelLbl.backgroundColor = [UIColor clearColor];
        _BMduelLbl.textColor = [UIColor blackColor];
        _BMduelLbl.font = [UIFont boldSystemFontOfSize:24];
        _BMduelLbl.textAlignment = NSTextAlignmentCenter;
        _BMduelLbl.text = @":";
    }
    return _BMduelLbl;
}
- (UIButton *)BMaAddBtn{
    if (!_BMaAddBtn) {
        _BMaAddBtn = [[UIButton alloc] init];
        [_BMaAddBtn setImage:[UIImage imageNamed:@"BM_jiahao"] forState:UIControlStateNormal];
        _BMaAddBtn.tag = 99;
        [_BMaAddBtn addTarget:self action:@selector(BMbtnAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _BMaAddBtn;
}
- (UIButton *)BMaReductionBtn{
    if (!_BMaReductionBtn) {
        _BMaReductionBtn = [[UIButton alloc] init];
        [_BMaReductionBtn setImage:[UIImage imageNamed:@"BM_jianhao"] forState:UIControlStateNormal];
        _BMaReductionBtn.tag = 100;
        [_BMaReductionBtn addTarget:self action:@selector(BMbtnAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _BMaReductionBtn;
}
- (UIButton *)BMbAddBtn{
    if (!_BMbAddBtn) {
        _BMbAddBtn = [[UIButton alloc] init];
        [_BMbAddBtn setImage:[UIImage imageNamed:@"BM_jiahao"] forState:UIControlStateNormal];
        _BMbAddBtn.tag = 101;
        [_BMbAddBtn addTarget:self action:@selector(BMbtnAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _BMbAddBtn;
}
- (UIButton *)BMbReductionBtn{
    if (!_BMbReductionBtn) {
        _BMbReductionBtn = [[UIButton alloc] init];
        [_BMbReductionBtn setImage:[UIImage imageNamed:@"BM_jianhao"] forState:UIControlStateNormal];
        _BMbReductionBtn.tag = 102;
        [_BMbReductionBtn addTarget:self action:@selector(BMbtnAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _BMbReductionBtn;
}
- (UIButton *)BMstartBtn{
    if (!_BMstartBtn) {
        _BMstartBtn = [[UIButton alloc] init];
        _BMstartBtn.backgroundColor = [UIColor clearColor];
        _BMstartBtn.titleLabel.font = [UIFont systemFontOfSize:30];
        [_BMstartBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_BMstartBtn setTitle:@"开始" forState:UIControlStateNormal];
        _BMstartBtn.layer.cornerRadius = 59.5f;
        _BMstartBtn.layer.masksToBounds = YES;
        _BMstartBtn.layer.borderColor = [UIColor blackColor].CGColor;
        _BMstartBtn.layer.borderWidth = 1.0f;
        _BMstartBtn.tag = 103;
        [_BMstartBtn addTarget:self action:@selector(BMbtnAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _BMstartBtn;
}
- (UIButton *)BMscreenshotsBtn{
    if (!_BMscreenshotsBtn) {
        _BMscreenshotsBtn = [[UIButton alloc] init];
        _BMscreenshotsBtn.backgroundColor = [UIColor clearColor];
        _BMscreenshotsBtn.titleLabel.font = [UIFont systemFontOfSize:30];
        [_BMscreenshotsBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_BMscreenshotsBtn setTitle:@"截屏" forState:UIControlStateNormal];
        _BMscreenshotsBtn.layer.cornerRadius = 59.5f;
        _BMscreenshotsBtn.layer.masksToBounds = YES;
        _BMscreenshotsBtn.layer.borderColor = [UIColor blackColor].CGColor;
        _BMscreenshotsBtn.layer.borderWidth = 1.0f;
        _BMscreenshotsBtn.tag = 104;
        [_BMscreenshotsBtn addTarget:self action:@selector(BMbtnAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _BMscreenshotsBtn;
}
- (UIButton *)BMremoveBtn{
    if (!_BMremoveBtn) {
        _BMremoveBtn = [[UIButton alloc] init];
        _BMremoveBtn.backgroundColor = [UIColor clearColor];
        _BMremoveBtn.titleLabel.font = [UIFont systemFontOfSize:30];
        [_BMremoveBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_BMremoveBtn setTitle:@"清除" forState:UIControlStateNormal];
        _BMremoveBtn.layer.cornerRadius = 59.5f;
        _BMremoveBtn.layer.masksToBounds = YES;
        _BMremoveBtn.layer.borderColor = [UIColor blackColor].CGColor;
        _BMremoveBtn.layer.borderWidth = 1.0f;
        _BMremoveBtn.tag = 105;
        [_BMremoveBtn addTarget:self action:@selector(BMbtnAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _BMremoveBtn;
}
- (UIButton *)BMsaveBtn{
    if (!_BMsaveBtn) {
        _BMsaveBtn = [[UIButton alloc] init];
        _BMsaveBtn.backgroundColor = [UIColor clearColor];
        _BMsaveBtn.titleLabel.font = [UIFont systemFontOfSize:30];
        [_BMsaveBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_BMsaveBtn setTitle:@"保存" forState:UIControlStateNormal];
        _BMsaveBtn.layer.cornerRadius = 59.5f;
        _BMsaveBtn.layer.masksToBounds = YES;
        _BMsaveBtn.layer.borderColor = [UIColor blackColor].CGColor;
        _BMsaveBtn.layer.borderWidth = 1.0f;
        _BMsaveBtn.tag = 106;
        [_BMsaveBtn addTarget:self action:@selector(BMbtnAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _BMsaveBtn;
}
- (UIButton *)BMexchangeBtn{
    if (!_BMexchangeBtn) {
        _BMexchangeBtn = [[UIButton alloc] init];
        _BMexchangeBtn.backgroundColor = [UIColor clearColor];
        _BMexchangeBtn.titleLabel.font = [UIFont systemFontOfSize:30];
        [_BMexchangeBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_BMexchangeBtn setTitle:@"交换" forState:UIControlStateNormal];
        _BMexchangeBtn.layer.cornerRadius = 59.5f;
        _BMexchangeBtn.layer.masksToBounds = YES;
        _BMexchangeBtn.layer.borderColor = [UIColor blackColor].CGColor;
        _BMexchangeBtn.layer.borderWidth = 1.0f;
        _BMexchangeBtn.tag = 107;
        [_BMexchangeBtn addTarget:self action:@selector(BMbtnAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _BMexchangeBtn;
}
- (UIButton *)BMhistoryBtn{
    if (!_BMhistoryBtn) {
        _BMhistoryBtn = [[UIButton alloc] init];
        _BMhistoryBtn.backgroundColor = [UIColor clearColor];
        _BMhistoryBtn.titleLabel.font = [UIFont systemFontOfSize:30];
        [_BMhistoryBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_BMhistoryBtn setTitle:@"历史" forState:UIControlStateNormal];
        _BMhistoryBtn.layer.cornerRadius = 59.5f;
        _BMhistoryBtn.layer.masksToBounds = YES;
        _BMhistoryBtn.layer.borderColor = [UIColor blackColor].CGColor;
        _BMhistoryBtn.layer.borderWidth = 1.0f;
        _BMhistoryBtn.tag = 108;
        [_BMhistoryBtn addTarget:self action:@selector(BMbtnAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _BMhistoryBtn;
}

@end
