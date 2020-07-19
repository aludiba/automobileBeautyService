//
//  LBAboutUsViewController.m
//  MacroSports
//
//  Created by user on 2020/7/7.
//  Copyright © 2020 macro. All rights reserved.
//

#import "LBAboutUsViewController.h"

@interface LBAboutUsViewController ()
@property(nonatomic, strong)UIImageView *LBLogoImgView;//logo
@property(nonatomic, strong)UILabel *LBVersionIntroducedLbl;//版本号
@end

@implementation LBAboutUsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"关于我们";
    [self LBSetContentView];
}
#pragma mark - actions
- (void)LBSetContentView{
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.LBLogoImgView];
    [self.view addSubview:self.LBVersionIntroducedLbl];
    
    [self.LBLogoImgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.mas_topLayoutGuideBottom).offset(60);
        make.centerX.equalTo(self.view);
        make.width.mas_equalTo(100);
        make.height.mas_equalTo(150);
    }];
    [self.LBVersionIntroducedLbl mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.LBLogoImgView.mas_bottom).offset(25);
        make.leading.equalTo(self.view);
        make.trailing.equalTo(self.view);
        make.height.mas_equalTo(25);
    }];
    //此获取的版本号对应version，打印出来对应为1.2.3.4.5这样的字符串
    NSString *LBVersionString = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"];
    self.LBVersionIntroducedLbl.text = [NSString stringWithFormat:@"Version：%@",LBVersionString];
}
#pragma mark - 属性懒加载
- (UIImageView *)LBLogoImgView{
    if (!_LBLogoImgView) {
        _LBLogoImgView = [[UIImageView alloc] init];
        _LBLogoImgView.image = [UIImage imageNamed:@"LBSet_footballlogo"];
    }
    return _LBLogoImgView;
}
- (UILabel *)LBVersionIntroducedLbl{
    if (!_LBVersionIntroducedLbl) {
        _LBVersionIntroducedLbl = [[UILabel alloc] init];
        _LBVersionIntroducedLbl.textColor = [UIColor blackColor];
        _LBVersionIntroducedLbl.font = [UIFont boldSystemFontOfSize:20];
        _LBVersionIntroducedLbl.textAlignment = NSTextAlignmentCenter;
    }
    return _LBVersionIntroducedLbl;
}
@end
