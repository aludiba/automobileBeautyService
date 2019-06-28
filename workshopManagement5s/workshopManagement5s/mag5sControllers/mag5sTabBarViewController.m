//
//  mag5sTabBarViewController.m
//  workshopManagement5s
//
//  Created by bykj on 2019/6/28.
//  Copyright © 2019 hgg. All rights reserved.
//

#import "mag5sTabBarViewController.h"
#import "mag5sHomeViewController.h"
#import "mag5sAddViewController.h"
#import "mag5sSearchViewController.h"
@interface mag5sTabBarViewController ()<UITabBarDelegate>
@property(nonatomic, strong)mag5sHomeViewController *mag5sHomeVC;
@property(nonatomic, strong)mag5sAddViewController *mag5sAddVC;
@property(nonatomic, strong)mag5sSearchViewController *mag5sSearchVC;
@end

@implementation mag5sTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.mag5sHomeVC = [[mag5sHomeViewController alloc] init];
    UINavigationController *home = [[UINavigationController alloc] initWithRootViewController:self.mag5sHomeVC];
    self.mag5sHomeVC.tabBarItem.title = @"Home";
    self.mag5sHomeVC.tabBarItem.image = [[UIImage imageNamed:@"tab_home_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.mag5sHomeVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"tab_home_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [self.mag5sHomeVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor blackColor]} forState:UIControlStateSelected];
    [self.mag5sHomeVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor grayColor]} forState:UIControlStateNormal];
    
    self.mag5sAddVC = [[mag5sAddViewController alloc] init];
    UINavigationController *service = [[UINavigationController alloc] initWithRootViewController:self.mag5sAddVC];
    self.mag5sAddVC.tabBarItem.title = @"Add";
    self.mag5sAddVC.tabBarItem.image = [[UIImage imageNamed:@"tab_service_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.mag5sAddVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"tab_service_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [self.mag5sAddVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor blackColor]} forState:UIControlStateSelected];
    [self.mag5sAddVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor grayColor]} forState:UIControlStateNormal];
    
    self.mag5sSearchVC = [[mag5sSearchViewController alloc] init];
    UINavigationController *customer = [[UINavigationController alloc] initWithRootViewController:self.mag5sSearchVC];
    self.mag5sSearchVC.tabBarItem.title = @"Search";
    self.mag5sSearchVC.tabBarItem.image = [[UIImage imageNamed:@"tab_process_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.mag5sSearchVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"tab_process_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [self.mag5sSearchVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor blackColor]} forState:UIControlStateSelected];
    [self.mag5sSearchVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor grayColor]} forState:UIControlStateNormal];
    
    NSArray *arrControllers = [NSArray arrayWithObjects:home,service,customer,nil];
    self.viewControllers = arrControllers;
    [[UITabBarItem appearance] setTitlePositionAdjustment:UIOffsetMake(0, -4)];
}
@end
