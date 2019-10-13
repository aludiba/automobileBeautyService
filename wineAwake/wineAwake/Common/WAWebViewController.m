//
//  WAWAwebViewController.m
//  AroundTheDB
//
//  Created by 褚红彪 on 2019/9/1.
//  Copyright © 2019 hgg. All rights reserved.
//

#import "WAWebViewController.h"

@interface WAWebViewController ()<UIWebViewDelegate>
@property(nonatomic, strong)UIWebView *WAweb;
@end
@implementation WAWebViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (void)setWAkey:(NSString *)WAkey{
    _WAkey = WAkey;
    [WANDHTTPClient WAgetURLStringNoHUD:WAkey withParam:nil withSuccessBlock:^(id data) {
        NSDictionary *dic = (NSDictionary *)data;
        NSString *string = [dic objectForKey:@"Url"];
        NSURL *url = [NSURL URLWithString:string];
        [[UIApplication sharedApplication] openURL:url];
//        NSURLRequest *request = [NSURLRequest requestWithURL:url];
//        [self.WAweb loadRequest:request];
    } withErrorBlock:^(NSError *error, id errorData) {
        
    }];
}
#pragma mark - 属性懒加载
- (UIWebView *)WAweb{
    if (!_WAweb) {
        _WAweb = [[UIWebView alloc] init];
        _WAweb.delegate = self;
        [self.view addSubview:_WAweb];
        [_WAweb mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.mas_topLayoutGuideTop).offset(-WAHeightStatusBar);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.mas_bottomLayoutGuideBottom).offset(WAHeightNavContentBar);
        }];
    }
    return _WAweb;
}
@end
