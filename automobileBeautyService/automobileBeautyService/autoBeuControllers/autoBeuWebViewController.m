//
//  autoBeuWebViewController.m
//  automobileBeautyService
//
//  Created by bykj on 2019/6/21.
//  Copyright © 2019 hgg. All rights reserved.
//

#import "autoBeuWebViewController.h"

@interface autoBeuWebViewController()<UIWebViewDelegate>
@property(nonatomic, strong)UIView *autoBeuTabBarView;
@property(nonatomic, strong)UIButton *autoBeuforwardBtn;
@property(nonatomic, strong)UIButton *autobeuBackBtn;
@property(nonatomic, strong)UIButton *autobeuRefresh;
@property(nonatomic, strong)UIButton *autoBeushare;
@property(nonatomic, strong)UIWebView *autoBeuWebView;
@end

@implementation autoBeuWebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.autoBeuTabBarView];
    [self.autoBeuTabBarView addSubview:self.autoBeuforwardBtn];
    [self.autoBeuTabBarView addSubview:self.autobeuBackBtn];
    [self.autoBeuTabBarView addSubview:self.autobeuRefresh];
    [self.autoBeuTabBarView addSubview:self.autoBeushare];
    [self.view addSubview:self.autoBeuWebView];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.hidden = YES;
    [self.autoBeuTabBarView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(self.mas_bottomLayoutGuideTop);
        make.leading.equalTo(self.view);
        make.trailing.equalTo(self.view);
        make.height.mas_equalTo(54);
    }];
}
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    self.navigationController.navigationBar.hidden = NO;
}
#pragma mark - 属性懒加载
- (UIView *)autoBeuTabBarView{
    if (!_autoBeuTabBarView) {
        _autoBeuTabBarView = [[UIView alloc] init];
        _autoBeuTabBarView.backgroundColor = [UIColor whiteColor];
    }
    return _autoBeuTabBarView;
}
- (UIButton *)autoBeuforwardBtn{
    if (!_autoBeuforwardBtn) {
        _autoBeuforwardBtn = [[UIButton alloc] init];
        [_autoBeuforwardBtn setImage:[UIImage imageNamed:@"autoBeuforward"] forState:UIControlStateNormal];
    }
    return _autoBeuforwardBtn;
}
- (UIButton *)autobeuBackBtn{
    if (!_autobeuBackBtn) {
        _autobeuBackBtn = [[UIButton alloc] init];
        [_autobeuBackBtn setImage:[UIImage imageNamed:@"autobeuBack"] forState:UIControlStateNormal];
    }
    return _autobeuBackBtn;
}
- (UIButton *)autobeuRefresh{
    if (!_autobeuRefresh) {
        _autobeuRefresh = [[UIButton alloc] init];
        [_autobeuRefresh setImage:[UIImage imageNamed:@"autobeuRefresh"] forState:UIControlStateNormal];
    }
    return _autobeuRefresh;
}
- (UIButton *)autoBeushare{
    if (!_autoBeushare) {
        _autoBeushare = [[UIButton alloc] init];
        [_autoBeushare setImage:[UIImage imageNamed:@"autoBeushare"] forState:UIControlStateNormal];
    }
    return _autoBeushare;
}
- (UIWebView *)autoBeuWebView{
    if (!_autoBeuWebView) {
        _autoBeuWebView = [[UIWebView alloc] init];
        _autoBeuWebView.delegate = self;
    }
    return _autoBeuWebView;
}
@end
