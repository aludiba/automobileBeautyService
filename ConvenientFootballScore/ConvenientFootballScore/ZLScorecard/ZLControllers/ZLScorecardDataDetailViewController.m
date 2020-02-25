//
//  ZLScorecardDataDetailViewController.m
//  ConvenientFootballScore
//
//  Created by bykj on 2020/2/25.
//  Copyright © 2020 com. All rights reserved.
//

#import "ZLScorecardDataDetailViewController.h"
#import <WebKit/WebKit.h>

@interface ZLScorecardDataDetailViewController ()
@property(nonatomic, strong)UIView *ZLbackView;
@property(nonatomic, strong)UIButton *ZlbackBtn;
@property(nonatomic, strong)UIButton *ZLforwardBtn;
@property(nonatomic, strong)UIButton *ZLhomeBtn;
@property(nonatomic, strong)UIButton *ZLrefreshBtn;
@property(nonatomic, strong)WKWebView *ZLdataDetail;
@end

@implementation ZLScorecardDataDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.view addSubview:self.ZLdataDetail];
    [self.view addSubview:self.ZLbackView];
    [self.ZLbackView addSubview:self.ZlbackBtn];
    [self.ZLbackView addSubview:self.ZLforwardBtn];
    [self.ZLbackView addSubview:self.ZLhomeBtn];
    [self.ZLbackView addSubview:self.ZLrefreshBtn];
    [self.ZLbackView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(self.view).offset(-ZLHeightNavContentBar);
        make.leading.equalTo(self.view);
        make.trailing.equalTo(self.view);
        make.height.mas_equalTo(60);
    }];
    CGFloat marginX = (ZLWIDTH - 20 * 4) / 5;
    [self.ZlbackBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(self.ZLbackView).offset(-20);
        make.leading.equalTo(self.ZLbackView).offset(marginX);
        make.width.mas_equalTo(20);
        make.height.mas_equalTo(20);
    }];
    [self.ZLforwardBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(self.ZLbackView).offset(-20);
        make.leading.equalTo(self.ZlbackBtn.mas_trailing).offset(marginX);
        make.width.mas_equalTo(20);
        make.height.mas_equalTo(20);
    }];
    [self.ZLhomeBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(self.ZLbackView).offset(-20);
        make.leading.equalTo(self.ZLforwardBtn.mas_trailing).offset(marginX);
        make.width.mas_equalTo(20);
        make.height.mas_equalTo(20);
    }];
    [self.ZLrefreshBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(self.ZLbackView).offset(-20);
        make.leading.equalTo(self.ZLhomeBtn.mas_trailing).offset(marginX);
        make.width.mas_equalTo(20);
        make.height.mas_equalTo(20);
    }];
    [self.ZLdataDetail mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view);
        make.leading.equalTo(self.view);
        make.trailing.equalTo(self.view);
        make.bottom.equalTo(self.ZLbackView.mas_top);
    }];
}
- (void)setZLGameStatistics:(NSString *)ZLGameStatistics{
    _ZLGameStatistics = ZLGameStatistics;
    [MBProgressHUD showHUDAddedTo:self.ZLdataDetail animated:YES];
    [self.ZLdataDetail loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:_ZLGameStatistics]]];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [MBProgressHUD hideHUDForView:self.ZLdataDetail animated:YES];
    });
}
- (void)btnClick:(UIButton *)sender{
    if (sender.tag == 99) {
        [self dismissViewControllerAnimated:YES completion:^{
            self.ZLisBack = YES;
            if (self.ZLScorecardDataDetailViewControllerB) {
                self.ZLScorecardDataDetailViewControllerB(self);
            }
        }];
    }else if(sender.tag == 100){
        [MBProgressHUD showHUDAddedTo:self.ZLdataDetail animated:YES];
        [self.ZLdataDetail reload];
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [MBProgressHUD hideHUDForView:self.ZLdataDetail animated:YES];
        });
    }else if (sender.tag == 101){
        [MBProgressHUD showHUDAddedTo:self.ZLdataDetail animated:YES];
        [self.ZLdataDetail reload];
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [MBProgressHUD hideHUDForView:self.ZLdataDetail animated:YES];
        });
    }else{
        [MBProgressHUD showHUDAddedTo:self.ZLdataDetail animated:YES];
        [self.ZLdataDetail reload];
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [MBProgressHUD hideHUDForView:self.ZLdataDetail animated:YES];
        });
    }
}
- (UIView *)ZLbackView{
    if (!_ZLbackView) {
        _ZLbackView = [[UIView alloc] init];
        _ZLbackView.backgroundColor = [UIColor whiteColor];
    }
    return _ZLbackView;
}
- (UIButton *)ZlbackBtn{
    if (!_ZlbackBtn) {
        _ZlbackBtn = [[UIButton alloc] init];
        _ZlbackBtn.tag = 99;
        [_ZlbackBtn setImage:[UIImage imageNamed:@"ZL_back"] forState:UIControlStateNormal];
        [_ZlbackBtn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _ZlbackBtn;
}
- (UIButton *)ZLforwardBtn{
    if (!_ZLforwardBtn) {
        _ZLforwardBtn = [[UIButton alloc] init];
        _ZLforwardBtn.tag = 100;
        [_ZLforwardBtn setImage:[UIImage imageNamed:@"ZL_forward"] forState:UIControlStateNormal];
        [_ZLforwardBtn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _ZLforwardBtn;
}
- (UIButton *)ZLhomeBtn{
    if (!_ZLhomeBtn) {
        _ZLhomeBtn = [[UIButton alloc] init];
        _ZLhomeBtn.tag = 101;
        [_ZLhomeBtn setImage:[UIImage imageNamed:@"ZL_home"] forState:UIControlStateNormal];
        [_ZLhomeBtn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _ZLhomeBtn;
}
- (UIButton *)ZLrefreshBtn{
    if (!_ZLrefreshBtn) {
        _ZLrefreshBtn = [[UIButton alloc] init];
        _ZLrefreshBtn.tag = 102;
        [_ZLrefreshBtn setImage:[UIImage imageNamed:@"ZL_refresh"] forState:UIControlStateNormal];
        [_ZLrefreshBtn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _ZLrefreshBtn;
}
- (WKWebView *)ZLdataDetail{
    if (!_ZLdataDetail) {
        _ZLdataDetail = [[WKWebView alloc] init];
    }
    return _ZLdataDetail;
}
@end
