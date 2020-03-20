//
//  GAScorecardViewController.m
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import "GAScorecardViewController.h"
#import "GAScorecardFootballViewController.h"
#import "GAScorecardVolleyballViewController.h"
#import <VTMagic/VTMagic.h>

@interface GAScorecardViewController ()<VTMagicViewDataSource,VTMagicViewDelegate>
@property (nonatomic, strong) VTMagicController *GAMagicController;
@property (nonatomic, strong) GAScorecardFootballViewController *GAScorecardFootballVC;//足球比分
@property (nonatomic, strong) GAScorecardVolleyballViewController *GAScorecardVolleyballVC;//排球比分
@property (nonatomic, strong) NSMutableArray *GAMenuList;
@end

@implementation GAScorecardViewController
+ (GAScorecardViewController *)shareInstance{
    static GAScorecardViewController *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[GAScorecardViewController allocWithZone:NULL] init];
    });
    return client;
}
- (void)viewDidLoad{
    [super viewDidLoad];
    self.title = NSLocalizedString(@"比分", nil);
    [self GABasicConfiguration];
}
- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
}
- (void)viewDidDisappear:(BOOL)animated{
    [super viewDidDisappear:animated];
}
#pragma mark - action
- (void)GABasicConfiguration{
    self.GAMenuList = [@[NSLocalizedString(@"足球", nil),NSLocalizedString(@"排球", nil)] mutableCopy];
    [self addChildViewController:self.GAMagicController];
    [self.view addSubview:self.GAMagicController.view];
    [self.GAMagicController.view mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(GAHeightNavBar);
        make.left.bottom.right.equalTo(self.view);
    }];
    
    [self.GAMagicController.magicView reloadData];
}
- (void)GAsaveAction{
    [self.GAScorecardFootballVC GAsaveAction];
    [self.GAScorecardVolleyballVC GAsaveAction];
}
#pragma mark - VTMagicViewDataSource
- (NSArray<NSString *> *)menuTitlesForMagicView:(VTMagicView *)magicView {
    return self.GAMenuList;
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
        return self.GAScorecardFootballVC;
    } else if (pageIndex == 1) {
        return self.GAScorecardVolleyballVC;
    }else{
        return self.GAScorecardFootballVC;
    }
}
#pragma mark - 属性懒加载
- (VTMagicController *)GAMagicController{
    if (!_GAMagicController) {
        _GAMagicController =[[VTMagicController alloc] init];
        _GAMagicController.magicView.sliderColor = [UIColor colorWithRed:0.27 green:0.36 blue:0.58 alpha:1.00];
        _GAMagicController.magicView.switchStyle = VTSwitchStyleDefault;
        _GAMagicController.magicView.layoutStyle = VTLayoutStyleCenter;
        _GAMagicController.magicView.needPreloading = NO;
        _GAMagicController.magicView.itemWidth = 110;
        _GAMagicController.magicView.sliderWidth = 30;
        _GAMagicController.magicView.dataSource = self;
        _GAMagicController.magicView.delegate = self;

    }
    return _GAMagicController;
}
- (GAScorecardFootballViewController *)GAScorecardFootballVC{
    if (!_GAScorecardFootballVC) {
        _GAScorecardFootballVC = [GAScorecardFootballViewController shareInstance];
    }
    return _GAScorecardFootballVC;
}
- (GAScorecardVolleyballViewController *)GAScorecardVolleyballVC{
    if (!_GAScorecardVolleyballVC) {
        _GAScorecardVolleyballVC = [GAScorecardVolleyballViewController shareInstance];
    }
    return _GAScorecardVolleyballVC;
}
@end
