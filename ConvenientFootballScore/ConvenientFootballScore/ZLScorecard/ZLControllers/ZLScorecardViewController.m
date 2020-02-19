//
//  ZLScorecardViewController.m
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import "ZLScorecardViewController.h"
#import "ZLScorecardFootballViewController.h"
#import "ZLScorecardBasketballViewController.h"
#import <VTMagic/VTMagic.h>

@interface ZLScorecardViewController ()<VTMagicViewDataSource,VTMagicViewDelegate>
@property (nonatomic, strong) VTMagicController *ZLMagicController;
@property (nonatomic, strong) ZLScorecardFootballViewController *ZLScorecardFootballVC;//足球比分
@property (nonatomic, strong) ZLScorecardBasketballViewController *ZLScorecardBasketballVC;//篮球比分
@property (nonatomic, strong) NSMutableArray *ZLMenuList;
@end

@implementation ZLScorecardViewController
+ (ZLScorecardViewController *)shareInstance{
    static ZLScorecardViewController *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[ZLScorecardViewController allocWithZone:NULL] init];
    });
    return client;
}
- (void)viewDidLoad{
    [super viewDidLoad];
    self.title = NSLocalizedString(@"比分", nil);
    [self ZLBasicConfiguration];
}
#pragma mark - action
- (void)ZLBasicConfiguration{
    self.ZLMenuList = [@[NSLocalizedString(@"足球", nil),NSLocalizedString(@"篮球", nil)] mutableCopy];
    [self addChildViewController:self.ZLMagicController];
    [self.view addSubview:self.ZLMagicController.view];
    [self.ZLMagicController.view mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(ZLHeightNavBar);
        make.left.bottom.right.equalTo(self.view);
    }];
    
    [self.ZLMagicController.magicView reloadData];
}
- (void)ZLsaveAction{
    [self.ZLScorecardFootballVC ZLsaveAction];
    [self.ZLScorecardBasketballVC ZLsaveAction];
}
#pragma mark - VTMagicViewDataSource
- (NSArray<NSString *> *)menuTitlesForMagicView:(VTMagicView *)magicView {
    return self.ZLMenuList;
}
- (UIButton *)magicView:(VTMagicView *)magicView menuItemAtIndex:(NSUInteger)itemIndex {
    static NSString *menuItemIdentifier = @"menuItemIdentifier";
    UIButton *menuItem = [magicView dequeueReusableItemWithIdentifier:menuItemIdentifier];
    if (!menuItem) {
        menuItem = [UIButton buttonWithType:UIButtonTypeCustom];
        [menuItem setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
        [menuItem setTitleColor:[UIColor blueColor] forState:UIControlStateSelected];
        menuItem.titleLabel.font = [UIFont boldSystemFontOfSize:18.0];
    }
    return menuItem;
}

- (UIViewController *)magicView:(VTMagicView *)magicView viewControllerAtPage:(NSUInteger)pageIndex {
    if (pageIndex == 0) {
        return self.ZLScorecardFootballVC;
    } else if (pageIndex == 1) {
        return self.ZLScorecardBasketballVC;
    }else{
        return self.ZLScorecardFootballVC;
    }
}
#pragma mark - 属性懒加载
- (VTMagicController *)ZLMagicController{
    if (!_ZLMagicController) {
        _ZLMagicController =[[VTMagicController alloc] init];
        _ZLMagicController.magicView.sliderColor = [UIColor colorWithRed:0.27 green:0.36 blue:0.58 alpha:1.00];
        _ZLMagicController.magicView.switchStyle = VTSwitchStyleDefault;
        _ZLMagicController.magicView.layoutStyle = VTLayoutStyleCenter;
        _ZLMagicController.magicView.needPreloading = NO;
        _ZLMagicController.magicView.itemWidth = 110;
        _ZLMagicController.magicView.sliderWidth = 30;
        _ZLMagicController.magicView.dataSource = self;
        _ZLMagicController.magicView.delegate = self;

    }
    return _ZLMagicController;
}
- (ZLScorecardFootballViewController *)ZLScorecardFootballVC{
    if (!_ZLScorecardFootballVC) {
        _ZLScorecardFootballVC = [ZLScorecardFootballViewController shareInstance];
    }
    return _ZLScorecardFootballVC;
}
- (ZLScorecardBasketballViewController *)ZLScorecardBasketballVC{
    if (!_ZLScorecardBasketballVC) {
        _ZLScorecardBasketballVC = [ZLScorecardBasketballViewController shareInstance];
    }
    return _ZLScorecardBasketballVC;
}
@end
