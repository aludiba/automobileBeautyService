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
    CGFloat topY = 6;
    CGFloat wh = 24;
    CGFloat margin = (auto4sWIDTH - 4 * 12)/5;
    [self.autobeuBackBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.autoBeuTabBarView).offset(topY);
        make.leading.equalTo(self.autoBeuTabBarView).offset(margin);
        make.width.mas_equalTo(wh);
        make.height.mas_equalTo(wh);
    }];
    [self.autoBeuforwardBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.autoBeuTabBarView).offset(topY);
        make.leading.equalTo(self.autobeuBackBtn).offset(margin);
        make.width.mas_equalTo(wh);
        make.height.mas_equalTo(wh);
    }];
    [self.autobeuRefresh mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.autoBeuTabBarView).offset(topY);
        make.leading.equalTo(self.autoBeuforwardBtn).offset(margin);
        make.width.mas_equalTo(wh);
        make.height.mas_equalTo(wh);
    }];
    [self.autoBeushare mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.autoBeuTabBarView).offset(topY);
        make.leading.equalTo(self.autobeuRefresh).offset(margin);
        make.width.mas_equalTo(wh);
        make.height.mas_equalTo(wh);
    }];
    [self.autoBeuWebView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view).offset(-auto4sHeightStatusBar);
        make.leading.equalTo(self.view);
        make.trailing.equalTo(self.view);
        make.bottom.equalTo(self.autoBeuTabBarView.mas_top);
    }];
}
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    self.navigationController.navigationBar.hidden = NO;
}
- (void)setString:(NSString *)string{
    _string = string;
    [self.autoBeuWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:_string]]];
}
- (void)autoBeubrnClick:(UIButton *)sender{
    if (sender.tag == 10) {
        
    }else if (sender.tag == 11){
        [self.navigationController popViewControllerAnimated:YES];
    }else if (sender.tag == 12){
        [self.autoBeuWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:self.string]]];
    }else if (sender.tag == 13){
        
    }
}
#pragma mark - 属性懒加载
- (UIView *)autoBeuTabBarView{
    if (!_autoBeuTabBarView) {
        _autoBeuTabBarView = [[UIView alloc] init];
        _autoBeuTabBarView.backgroundColor = auto4sH_Color(243, 243, 243, 1);
    }
    return _autoBeuTabBarView;
}
- (UIButton *)autoBeuforwardBtn{
    if (!_autoBeuforwardBtn) {
        _autoBeuforwardBtn = [[UIButton alloc] init];
        [_autoBeuforwardBtn setImage:[UIImage imageNamed:@"autoBeuforward"] forState:UIControlStateNormal];
        _autoBeuforwardBtn.tag = 10;
        [_autoBeuforwardBtn addTarget:self action:@selector(autoBeubrnClick:) forControlEvents:UIControlEventTouchDragInside];
    }
    return _autoBeuforwardBtn;
}
- (UIButton *)autobeuBackBtn{
    if (!_autobeuBackBtn) {
        _autobeuBackBtn = [[UIButton alloc] init];
        [_autobeuBackBtn setImage:[UIImage imageNamed:@"autobeuBack"] forState:UIControlStateNormal];
        _autobeuBackBtn.tag = 11;
        [_autobeuBackBtn addTarget:self action:@selector(autoBeubrnClick:) forControlEvents:UIControlEventTouchDragInside];
    }
    return _autobeuBackBtn;
}
- (UIButton *)autobeuRefresh{
    if (!_autobeuRefresh) {
        _autobeuRefresh = [[UIButton alloc] init];
        [_autobeuRefresh setImage:[UIImage imageNamed:@"autobeuRefresh"] forState:UIControlStateNormal];
        _autobeuRefresh.tag = 12;
        [_autobeuRefresh addTarget:self action:@selector(autoBeubrnClick:) forControlEvents:UIControlEventTouchDragInside];
    }
    return _autobeuRefresh;
}
- (UIButton *)autoBeushare{
    if (!_autoBeushare) {
        _autoBeushare = [[UIButton alloc] init];
        [_autoBeushare setImage:[UIImage imageNamed:@"autoBeushare"] forState:UIControlStateNormal];
        _autoBeushare.tag = 13;
        [_autoBeushare addTarget:self action:@selector(autoBeubrnClick:) forControlEvents:UIControlEventTouchDragInside];
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
