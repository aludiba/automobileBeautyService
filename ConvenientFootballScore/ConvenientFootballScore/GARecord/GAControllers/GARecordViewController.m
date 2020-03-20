//
//  GARecordViewController.m
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import "GARecordViewController.h"
#import <VTMagic/VTMagic.h>
#import "GAFootballRecordViewController.h"
#import "GAVolleyballRecordViewController.h"

@interface GARecordViewController ()<VTMagicViewDataSource,VTMagicViewDelegate>
@property (nonatomic, strong) VTMagicController *GAMagicController;
@property (nonatomic, strong) GAFootballRecordViewController *GAFootballRecordVC;//足球比分记录
@property (nonatomic, strong) GAVolleyballRecordViewController *GAVolleyballRecordVC;//排球比分记录
@property (nonatomic, strong) NSMutableArray *GAMenuList;
@end

@implementation GARecordViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor greenColor];
    self.title = NSLocalizedString(@"记录", nil);
    [self GABasicConfiguration];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
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
        return self.GAFootballRecordVC;
    } else if (pageIndex == 1) {
        return self.GAVolleyballRecordVC;
    }else{
        return self.GAFootballRecordVC;
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
- (GAFootballRecordViewController *)GAFootballRecordVC{
    if (!_GAFootballRecordVC) {
        _GAFootballRecordVC = [[GAFootballRecordViewController alloc] init];
    }
    return _GAFootballRecordVC;
}
- (GAVolleyballRecordViewController *)GAVolleyballRecordVC{
    if (!_GAVolleyballRecordVC) {
        _GAVolleyballRecordVC = [[GAVolleyballRecordViewController alloc] init];
    }
    return _GAVolleyballRecordVC;
}
@end
