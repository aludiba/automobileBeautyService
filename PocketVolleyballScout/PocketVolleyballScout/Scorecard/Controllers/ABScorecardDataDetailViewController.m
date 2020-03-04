//
//  ABScorecardDataDetailViewController.m
//  ConvenientFootballScore
//
//  Created by bykj on 2020/2/25.
//  Copyright © 2020 com. All rights reserved.
//

#import "ABScorecardDataDetailViewController.h"
#import <WebKit/WebKit.h>

@interface ABScorecardDataDetailViewController ()
@property(nonatomic, strong)UIView *ABbackView;
@property(nonatomic, strong)UIButton *ZlbackBtn;
@property(nonatomic, strong)UIButton *ABforwardBtn;
@property(nonatomic, strong)UIButton *ABhomeBtn;
@property(nonatomic, strong)UIButton *ABrefreshBtn;
@property(nonatomic, strong)WKWebView *ABdataDetail;
@end

@implementation ABScorecardDataDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.view addSubview:self.ABdataDetail];
    [self.view addSubview:self.ABbackView];
    [self.ABbackView addSubview:self.ZlbackBtn];
    [self.ABbackView addSubview:self.ABforwardBtn];
    [self.ABbackView addSubview:self.ABhomeBtn];
    [self.ABbackView addSubview:self.ABrefreshBtn];
    [self.ABbackView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(self.view).offset(-ABHeightNavContentBar);
        make.leading.equalTo(self.view);
        make.trailing.equalTo(self.view);
        make.height.mas_equalTo(60);
    }];
    CGFloat marginX = (ABWIDTH - 20 * 4) / 5;
    [self.ZlbackBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(self.ABbackView).offset(-20);
        make.leading.equalTo(self.ABbackView).offset(marginX);
        make.width.mas_equalTo(20);
        make.height.mas_equalTo(20);
    }];
    [self.ABforwardBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(self.ABbackView).offset(-20);
        make.leading.equalTo(self.ZlbackBtn.mas_trailing).offset(marginX);
        make.width.mas_equalTo(20);
        make.height.mas_equalTo(20);
    }];
    [self.ABhomeBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(self.ABbackView).offset(-20);
        make.leading.equalTo(self.ABforwardBtn.mas_trailing).offset(marginX);
        make.width.mas_equalTo(20);
        make.height.mas_equalTo(20);
    }];
    [self.ABrefreshBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(self.ABbackView).offset(-20);
        make.leading.equalTo(self.ABhomeBtn.mas_trailing).offset(marginX);
        make.width.mas_equalTo(20);
        make.height.mas_equalTo(20);
    }];
    [self.ABdataDetail mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view);
        make.leading.equalTo(self.view);
        make.trailing.equalTo(self.view);
        make.bottom.equalTo(self.ABbackView.mas_top);
    }];
}
- (void)setABGameStatistics:(NSString *)ABGameStatistics{
    _ABGameStatistics = ABGameStatistics;
    [MBProgressHUD showHUDAddedTo:self.ABdataDetail animated:YES];
    [self.ABdataDetail loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:_ABGameStatistics]]];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [MBProgressHUD hideHUDForView:self.ABdataDetail animated:YES];
    });
}
- (void)btnClick:(UIButton *)sender{
    if (sender.tag == 99) {
        [self dismissViewControllerAnimated:YES completion:^{
            self.ABisBack = YES;
            if (self.ABScorecardDataDetailViewControllerB) {
                self.ABScorecardDataDetailViewControllerB(self);
            }
        }];
    }else if(sender.tag == 100){
        [MBProgressHUD showHUDAddedTo:self.ABdataDetail animated:YES];
        [self.ABdataDetail reload];
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [MBProgressHUD hideHUDForView:self.ABdataDetail animated:YES];
        });
    }else if (sender.tag == 101){
        [MBProgressHUD showHUDAddedTo:self.ABdataDetail animated:YES];
        [self.ABdataDetail reload];
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [MBProgressHUD hideHUDForView:self.ABdataDetail animated:YES];
        });
    }else{
        [MBProgressHUD showHUDAddedTo:self.ABdataDetail animated:YES];
        [self.ABdataDetail reload];
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [MBProgressHUD hideHUDForView:self.ABdataDetail animated:YES];
        });
    }
}
- (UIView *)ABbackView{
    if (!_ABbackView) {
        _ABbackView = [[UIView alloc] init];
        _ABbackView.backgroundColor = [UIColor whiteColor];
    }
    return _ABbackView;
}
- (UIButton *)ZlbackBtn{
    if (!_ZlbackBtn) {
        _ZlbackBtn = [[UIButton alloc] init];
        _ZlbackBtn.tag = 99;
        [_ZlbackBtn setImage:[UIImage imageNamed:@"AB_back"] forState:UIControlStateNormal];
        [_ZlbackBtn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _ZlbackBtn;
}
- (UIButton *)ABforwardBtn{
    if (!_ABforwardBtn) {
        _ABforwardBtn = [[UIButton alloc] init];
        _ABforwardBtn.tag = 100;
        [_ABforwardBtn setImage:[UIImage imageNamed:@"AB_forward"] forState:UIControlStateNormal];
        [_ABforwardBtn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _ABforwardBtn;
}
- (UIButton *)ABhomeBtn{
    if (!_ABhomeBtn) {
        _ABhomeBtn = [[UIButton alloc] init];
        _ABhomeBtn.tag = 101;
        [_ABhomeBtn setImage:[UIImage imageNamed:@"AB_home"] forState:UIControlStateNormal];
        [_ABhomeBtn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _ABhomeBtn;
}
- (UIButton *)ABrefreshBtn{
    if (!_ABrefreshBtn) {
        _ABrefreshBtn = [[UIButton alloc] init];
        _ABrefreshBtn.tag = 102;
        [_ABrefreshBtn setImage:[UIImage imageNamed:@"AB_refresh"] forState:UIControlStateNormal];
        [_ABrefreshBtn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _ABrefreshBtn;
}
- (WKWebView *)ABdataDetail{
    if (!_ABdataDetail) {
        _ABdataDetail = [[WKWebView alloc] init];
    }
    return _ABdataDetail;
}
@end
