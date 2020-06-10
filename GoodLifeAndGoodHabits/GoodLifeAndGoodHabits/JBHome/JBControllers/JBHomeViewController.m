//
//  JBHomeViewController.m
//  GoodLifeAndGoodHabits
//
//  Created by user on 2020/6/9.
//  Copyright © 2020 user. All rights reserved.
//

#import "JBHomeViewController.h"

@interface JBHomeViewController ()
@property(nonatomic, strong)UIImageView *JBHeadImgView;//头图片
@end

@implementation JBHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = NSLocalizedString(@"首页", nil);
    [self JBsetContentView];
}
- (void)JBsetContentView{
    [self.view addSubview:self.JBHeadImgView];
    [self.JBHeadImgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view);
        make.leading.equalTo(self.view);
        make.trailing.equalTo(self.view);
        make.height.mas_equalTo(200);
    }];
}
#pragma mark - 属性懒加载
- (UIImageView *)JBHeadImgView{
    if (!_JBHeadImgView) {
        _JBHeadImgView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"JBHome_changheluori"]];
    }
    return _JBHeadImgView;
}
@end
