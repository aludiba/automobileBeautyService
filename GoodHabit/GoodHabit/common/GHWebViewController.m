//
//  GHWebViewController.m
//  AroundTheDB
//
//  Created by 褚红彪 on 2019/9/1.
//  Copyright © 2019 hgg. All rights reserved.
//

#import "GHWebViewController.h"

@interface GHWebViewController ()<UIWebViewDelegate>
@property(nonatomic, strong)UIWebView *web;
@end
@implementation GHWebViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (void)setKey:(NSString *)key{
    _key = key;
    [GHNDHTTPClient GHgetURLStringNoHUD:_key withParam:nil withSuccessBlock:^(id data) {
        NSDictionary *dic = (NSDictionary *)data;
        NSString *string = [dic objectForKey:@"Url"];
        NSURL *url = [NSURL URLWithString:string];
        [[UIApplication sharedApplication] openURL:url];
//        NSURLRequest *request = [NSURLRequest requestWithURL:url];
//        [self.web loadRequest:request];
    } withErrorBlock:^(NSError *error, id errorData) {
        
    }];
}
#pragma mark - 属性懒加载
- (UIWebView *)web{
    if (!_web) {
        _web = [[UIWebView alloc] init];
        _web.delegate = self;
        [self.view addSubview:_web];
        [_web mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.mas_topLayoutGuideTop).offset(-GHHeightStatusBar);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.mas_bottomLayoutGuideBottom).offset(GHHeightNavContentBar);
        }];
    }
    return _web;
}
@end
