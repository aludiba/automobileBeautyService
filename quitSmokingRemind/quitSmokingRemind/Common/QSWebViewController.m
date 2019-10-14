//
//  QSQSwebViewController.m
//  AroundTheDB
//
//  Created by 褚红彪 on 2019/9/1.
//  Copyright © 2019 hgg. All rights reserved.
//

#import "QSWebViewController.h"

@interface QSWebViewController ()<UIWebViewDelegate>
@property(nonatomic, strong)UIWebView *QSweb;
@end
@implementation QSWebViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (void)setQSkey:(NSString *)QSkey{
    _QSkey = QSkey;
    [QSNDHTTPClient QSgetURLStringNoHUD:QSkey withParam:nil withSuccessBlock:^(id data) {
        NSDictionary *dic = (NSDictionary *)data;
        NSString *string = [dic objectForKey:@"Url"];
        NSURL *url = [NSURL URLWithString:string];
        [[UIApplication sharedApplication] openURL:url];
//        NSURLRequest *request = [NSURLRequest requestWithURL:url];
//        [self.QSweb loadRequest:request];
    } withErrorBlock:^(NSError *error, id errorData) {
        
    }];
}
#pragma mark - 属性懒加载
- (UIWebView *)QSweb{
    if (!_QSweb) {
        _QSweb = [[UIWebView alloc] init];
        _QSweb.delegate = self;
        [self.view addSubview:_QSweb];
        [_QSweb mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.mas_topLayoutGuideTop).offset(-QSHeightStatusBar);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.mas_bottomLayoutGuideBottom).offset(QSHeightNavContentBar);
        }];
    }
    return _QSweb;
}
@end
