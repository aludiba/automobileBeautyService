//
//  ALWKWebViewController.m
//  TruckDriverManagement
//
//  Created by 褚红彪 on 2020/4/21.
//  Copyright © 2020 hb. All rights reserved.
//

#import "ALWKWebViewController.h"
#import <WebKit/WebKit.h>
@interface ALWKWebViewController ()<WKNavigationDelegate,WKUIDelegate>
@property(nonatomic, copy)WKWebView *ALWeb;
@end

@implementation ALWKWebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (void)setALTDMString:(NSString *)ALTDMString{
    _ALTDMString = ALTDMString;
    NSURL *ALUrl = [NSURL URLWithString:_ALTDMString];
    NSURLRequest *ALRequest = [NSURLRequest requestWithURL:ALUrl];
    UIWindow *ALwindow = [[UIApplication sharedApplication].delegate window];
    MBProgressHUD *ALhud = [[MBProgressHUD alloc] init];
    [ALwindow addSubview:ALhud];
    [ALhud showAnimated:YES];
    [self.ALWeb loadRequest:ALRequest];
    [[UIApplication sharedApplication] openURL:ALUrl options:NULL completionHandler:^(BOOL success) {
        [ALhud hideAnimated:YES];
    }];
}
#pragma mark - 属性懒加载
- (WKWebView *)ALWeb {
    if (!_ALWeb) {
         // 进行配置控制器
         WKWebViewConfiguration *configuration = [[WKWebViewConfiguration alloc] init];
         // 实例化对象
         configuration.userContentController = [[WKUserContentController alloc] init];
        _ALWeb = [[WKWebView alloc] initWithFrame:CGRectMake(0, 0, ALWIDTH, ALHEIGHT) configuration:configuration];
        _ALWeb.navigationDelegate = self;
        _ALWeb.opaque = NO;
        _ALWeb.backgroundColor = [UIColor whiteColor];
        if (@available(ios 11.0,*)){ _ALWeb.scrollView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;}
     }
     return _ALWeb;
}
@end
