//
//  GAScorecardDataDetailViewController.m
//  ConvenientFootballScore
//
//  Created by bykj on 2020/2/25.
//  Copyright © 2020 com. All rights reserved.
//

#import "GAScorecardDataDetailViewController.h"
#import <WebKit/WebKit.h>

@interface GAScorecardDataDetailViewController ()
@property(nonatomic, strong)UIView *GAbackView;
@property(nonatomic, strong)UIButton *ZlbackBtn;
@property(nonatomic, strong)UIButton *GAforwardBtn;
@property(nonatomic, strong)UIButton *GAhomeBtn;
@property(nonatomic, strong)UIButton *GArefreshBtn;
@property(nonatomic, strong)WKWebView *GAdataDetail;
@end

@implementation GAScorecardDataDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.view addSubview:self.GAdataDetail];
    [self.view addSubview:self.GAbackView];
    [self.GAbackView addSubview:self.ZlbackBtn];
    [self.GAbackView addSubview:self.GAforwardBtn];
    [self.GAbackView addSubview:self.GAhomeBtn];
    [self.GAbackView addSubview:self.GArefreshBtn];
    [self.GAbackView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(self.view).offset(-GAHeightNavContentBar);
        make.leading.equalTo(self.view);
        make.trailing.equalTo(self.view);
        make.height.mas_equalTo(60);
    }];
    CGFloat marginX = (GAWIDTH - 20 * 4) / 5;
    [self.ZlbackBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(self.GAbackView).offset(-20);
        make.leading.equalTo(self.GAbackView).offset(marginX);
        make.width.mas_equalTo(20);
        make.height.mas_equalTo(20);
    }];
    [self.GAforwardBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(self.GAbackView).offset(-20);
        make.leading.equalTo(self.ZlbackBtn.mas_trailing).offset(marginX);
        make.width.mas_equalTo(20);
        make.height.mas_equalTo(20);
    }];
    [self.GAhomeBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(self.GAbackView).offset(-20);
        make.leading.equalTo(self.GAforwardBtn.mas_trailing).offset(marginX);
        make.width.mas_equalTo(20);
        make.height.mas_equalTo(20);
    }];
    [self.GArefreshBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(self.GAbackView).offset(-20);
        make.leading.equalTo(self.GAhomeBtn.mas_trailing).offset(marginX);
        make.width.mas_equalTo(20);
        make.height.mas_equalTo(20);
    }];
    [self.GAdataDetail mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view);
        make.leading.equalTo(self.view);
        make.trailing.equalTo(self.view);
        make.bottom.equalTo(self.GAbackView.mas_top);
    }];
}
- (void)setGAGameStatistics:(NSString *)GAGameStatistics{
    _GAGameStatistics = GAGameStatistics;
    [MBProgressHUD showHUDAddedTo:self.GAdataDetail animated:YES];
    [self.GAdataDetail loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:_GAGameStatistics]]];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [MBProgressHUD hideHUDForView:self.GAdataDetail animated:YES];
    });
}
- (void)btnClick:(UIButton *)sender{
    if (sender.tag == 99) {
        [self dismissViewControllerAnimated:YES completion:^{
            self.GAisBack = YES;
            if (self.GAScorecardDataDetailViewControllerB) {
                self.GAScorecardDataDetailViewControllerB(self);
            }
        }];
    }else if(sender.tag == 100){
        [MBProgressHUD showHUDAddedTo:self.GAdataDetail animated:YES];
        [self.GAdataDetail reload];
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [MBProgressHUD hideHUDForView:self.GAdataDetail animated:YES];
        });
    }else if (sender.tag == 101){
        [MBProgressHUD showHUDAddedTo:self.GAdataDetail animated:YES];
        [self.GAdataDetail reload];
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [MBProgressHUD hideHUDForView:self.GAdataDetail animated:YES];
        });
    }else{
        [MBProgressHUD showHUDAddedTo:self.GAdataDetail animated:YES];
        [self.GAdataDetail reload];
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [MBProgressHUD hideHUDForView:self.GAdataDetail animated:YES];
        });
    }
}
- (UIView *)GAbackView{
    if (!_GAbackView) {
        _GAbackView = [[UIView alloc] init];
        _GAbackView.backgroundColor = [UIColor whiteColor];
    }
    return _GAbackView;
}
- (UIButton *)ZlbackBtn{
    if (!_ZlbackBtn) {
        _ZlbackBtn = [[UIButton alloc] init];
        _ZlbackBtn.tag = 99;
        [_ZlbackBtn setImage:[UIImage imageNamed:@"GA_back"] forState:UIControlStateNormal];
        [_ZlbackBtn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _ZlbackBtn;
}
- (UIButton *)GAforwardBtn{
    if (!_GAforwardBtn) {
        _GAforwardBtn = [[UIButton alloc] init];
        _GAforwardBtn.tag = 100;
        [_GAforwardBtn setImage:[UIImage imageNamed:@"GA_forward"] forState:UIControlStateNormal];
        [_GAforwardBtn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _GAforwardBtn;
}
- (UIButton *)GAhomeBtn{
    if (!_GAhomeBtn) {
        _GAhomeBtn = [[UIButton alloc] init];
        _GAhomeBtn.tag = 101;
        [_GAhomeBtn setImage:[UIImage imageNamed:@"GA_home"] forState:UIControlStateNormal];
        [_GAhomeBtn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _GAhomeBtn;
}
- (UIButton *)GArefreshBtn{
    if (!_GArefreshBtn) {
        _GArefreshBtn = [[UIButton alloc] init];
        _GArefreshBtn.tag = 102;
        [_GArefreshBtn setImage:[UIImage imageNamed:@"GA_refresh"] forState:UIControlStateNormal];
        [_GArefreshBtn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _GArefreshBtn;
}
- (WKWebView *)GAdataDetail{
    if (!_GAdataDetail) {
        _GAdataDetail = [[WKWebView alloc] init];
    }
    return _GAdataDetail;
}
@end
