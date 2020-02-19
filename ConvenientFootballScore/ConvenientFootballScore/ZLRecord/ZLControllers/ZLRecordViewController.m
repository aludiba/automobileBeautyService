//
//  ZLRecordViewController.m
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import "ZLRecordViewController.h"
#import <VTMagic/VTMagic.h>
#import "ZLFootballRecordViewController.h"
#import "ZLBasketballRecordViewController.h"

@interface ZLRecordViewController ()<VTMagicViewDataSource,VTMagicViewDelegate>
@property (nonatomic, strong) VTMagicController *ZLMagicController;
@property (nonatomic, strong) ZLFootballRecordViewController *ZLFootballRecordVC;//足球比分记录
@property (nonatomic, strong) ZLBasketballRecordViewController *ZLBasketballRecordVC;//篮球比分记录
@property (nonatomic, strong) NSMutableArray *ZLMenuList;
@end

@implementation ZLRecordViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor greenColor];
    self.title = NSLocalizedString(@"记录", nil);
    [self ZLBasicConfiguration];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
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
        return self.ZLFootballRecordVC;
    } else if (pageIndex == 1) {
        return self.ZLBasketballRecordVC;
    }else{
        return self.ZLFootballRecordVC;
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
- (ZLFootballRecordViewController *)ZLFootballRecordVC{
    if (!_ZLFootballRecordVC) {
        _ZLFootballRecordVC = [[ZLFootballRecordViewController alloc] init];
    }
    return _ZLFootballRecordVC;
}
- (ZLBasketballRecordViewController *)ZLBasketballRecordVC{
    if (!_ZLBasketballRecordVC) {
        _ZLBasketballRecordVC = [[ZLBasketballRecordViewController alloc] init];
    }
    return _ZLBasketballRecordVC;
}
@end
