//
//  LBStopwatchViewController.m
//  MacroSports
//
//  Created by user on 2020/7/4.
//  Copyright © 2020 macro. All rights reserved.
//

#import "LBStopwatchViewController.h"

@interface LBStopwatchViewController ()
@property(nonatomic, strong)UIScrollView *LBscrollView;//秒表功能背景
@property(nonatomic, strong)UIView *LBtransitionView;//过渡视图
@property(nonatomic, strong)UIView *LBstopwatchBgdView;//秒表功能背景
@property(nonatomic, strong)UILabel *LBstopwatchContentLbl;//秒表功能内容
@property(nonatomic, strong)UIButton *LBendBtn;//结束
@property(nonatomic, strong)UIButton *LBsuspendedBtn;//暂停
@property(nonatomic, strong)UIButton *LBstartBtn;//开始
@end

@implementation LBStopwatchViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"秒表";
    [self LBsetContentView];
}
#pragma mark - actions
- (void)LBsetContentView{
    [self.view addSubview:self.LBscrollView];
    [self.LBscrollView addSubview:self.LBtransitionView];
    [self.LBtransitionView addSubview:self.LBstopwatchBgdView];
    [self.LBtransitionView addSubview:self.LBstopwatchContentLbl];
    [self.LBtransitionView addSubview:self.LBendBtn];
    [self.LBtransitionView addSubview:self.LBsuspendedBtn];
    [self.LBtransitionView addSubview:self.LBstartBtn];
    
    [self.LBscrollView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.left.bottom.right.equalTo(self.view);
    }];
    [self.LBtransitionView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.LBscrollView);//上下滚动
        make.width.equalTo(self.LBscrollView);
    }];
    [self.LBstopwatchBgdView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.LBtransitionView).offset(50);
        make.centerX.equalTo(self.LBtransitionView);
        make.width.mas_equalTo(LBWIDTH - 60);
        make.height.mas_equalTo(LBWIDTH - 60);
    }];
    [self.LBstopwatchContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.LBstopwatchBgdView);
        make.centerY.equalTo(self.LBstopwatchBgdView);
        make.width.mas_equalTo(LBWIDTH - 60);
        make.height.mas_equalTo(55);
    }];
    CGFloat LBspacingX = (LBWIDTH - 60 * 3) * 0.25;
    [self.LBendBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.LBstopwatchBgdView.mas_bottom).offset(50);
        make.leading.equalTo(self.LBscrollView).offset(LBspacingX);
        make.width.mas_equalTo(60);
        make.height.mas_equalTo(60);
    }];
    [self.LBsuspendedBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.LBstopwatchBgdView.mas_bottom).offset(50);
        make.leading.equalTo(self.LBendBtn.mas_trailing).offset(LBspacingX);
        make.width.mas_equalTo(60);
        make.height.mas_equalTo(60);
    }];
    [self.LBstartBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.LBstopwatchBgdView.mas_bottom).offset(50);
        make.leading.equalTo(self.LBsuspendedBtn.mas_trailing).offset(LBspacingX);
        make.width.mas_equalTo(60);
        make.height.mas_equalTo(60);
    }];
    [self.LBtransitionView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(self.LBsuspendedBtn.mas_bottom).offset(10);
    }];
}
- (void)LBbtnAction:(UIButton *)sender{
    if (sender.tag == 99) {
        NSLog(@"开始~~~");
    }else if(sender.tag == 100){
        NSLog(@"暂停~~~");
    }else{
        NSLog(@"结束~~~");
    }
}
#pragma mark - 属性懒加载
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
- (UIView *)LBstopwatchBgdView{
    if (!_LBstopwatchBgdView) {
        _LBstopwatchBgdView = [[UIView alloc] init];
        _LBstopwatchBgdView.backgroundColor = [UIColor greenColor];
        _LBstopwatchBgdView.layer.cornerRadius = (LBWIDTH - 60) * 0.5 - 0.5;
        _LBstopwatchBgdView.layer.masksToBounds = YES;
    }
    return _LBstopwatchBgdView;
}
- (UILabel *)LBstopwatchContentLbl{
    if (!_LBstopwatchContentLbl) {
        _LBstopwatchContentLbl = [[UILabel alloc] init];
        _LBstopwatchContentLbl.textAlignment = NSTextAlignmentCenter;
        _LBstopwatchContentLbl.textColor = [UIColor blackColor];
        _LBstopwatchContentLbl.font = [UIFont systemFontOfSize:50];
        _LBstopwatchContentLbl.backgroundColor = [UIColor clearColor];
        _LBstopwatchContentLbl.text = @"00:00:00";
    }
    return _LBstopwatchContentLbl;
}
- (UIButton *)LBendBtn{
    if (!_LBendBtn) {
        _LBendBtn = [[UIButton alloc] init];
        [_LBendBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_LBendBtn setBackgroundColor:[UIColor redColor]];
        [_LBendBtn.titleLabel setFont:[UIFont systemFontOfSize:15]];
        _LBendBtn.layer.cornerRadius = 29.5f;
        _LBendBtn.layer.masksToBounds = YES;
        _LBendBtn.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_LBendBtn setTitle:@"结束" forState:UIControlStateNormal];
        _LBendBtn.tag = 101;
        [_LBendBtn addTarget:self action:@selector(LBbtnAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _LBendBtn;
}
- (UIButton *)LBsuspendedBtn{
    if (!_LBsuspendedBtn) {
        _LBsuspendedBtn = [[UIButton alloc] init];
        [_LBsuspendedBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_LBsuspendedBtn setBackgroundColor:[UIColor orangeColor]];
        [_LBsuspendedBtn.titleLabel setFont:[UIFont systemFontOfSize:15]];
        _LBsuspendedBtn.layer.cornerRadius = 29.5f;
        _LBsuspendedBtn.layer.masksToBounds = YES;
        _LBsuspendedBtn.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_LBsuspendedBtn setTitle:@"暂停" forState:UIControlStateNormal];
        _LBsuspendedBtn.tag = 100;
        [_LBsuspendedBtn addTarget:self action:@selector(LBbtnAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _LBsuspendedBtn;
}
- (UIButton *)LBstartBtn{
    if (!_LBstartBtn) {
        _LBstartBtn = [[UIButton alloc] init];
        [_LBstartBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_LBstartBtn setBackgroundColor:[UIColor yellowColor]];
        [_LBstartBtn.titleLabel setFont:[UIFont systemFontOfSize:15]];
        _LBstartBtn.layer.cornerRadius = 29.5f;
        _LBstartBtn.layer.masksToBounds = YES;
        _LBstartBtn.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_LBstartBtn setTitle:@"开始" forState:UIControlStateNormal];
        _LBstartBtn.tag = 99;
        [_LBstartBtn addTarget:self action:@selector(LBbtnAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _LBstartBtn;
}
@end
