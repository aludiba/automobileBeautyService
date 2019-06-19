//
//  autoBeuTabBarController.m
//  automobileBeautyService
//
//  Created by bykj on 2019/6/19.
//  Copyright © 2019 hgg. All rights reserved.
//

#import "autoBeuTabBarController.h"
#import "autoBeuHomeViewController.h"
#import "autoBeuAddViewController.h"
#import "autoBeuSearchViewController.h"
@interface autoBeuTabBarController()<UITabBarDelegate>
@property(nonatomic, strong)autoBeuHomeViewController *autoBeuHomeVC;
@property(nonatomic, strong)autoBeuAddViewController *autoBeuAddVC;
@property(nonatomic, strong)autoBeuSearchViewController *autoBeuSearchVC;
@end
@implementation autoBeuTabBarController
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.autoBeuHomeVC = [[autoBeuHomeViewController alloc] init];
    UINavigationController *home = [[UINavigationController alloc] initWithRootViewController:self.autoBeuHomeVC];
    self.autoBeuHomeVC.tabBarItem.title = @"Home";
    self.autoBeuHomeVC.tabBarItem.image = [[UIImage imageNamed:@"tab_home_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.autoBeuHomeVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"tab_home_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [self.autoBeuHomeVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor blackColor]} forState:UIControlStateSelected];
    [self.autoBeuHomeVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor grayColor]} forState:UIControlStateNormal];
    
    self.autoBeuAddVC = [[autoBeuAddViewController alloc] init];
    UINavigationController *service = [[UINavigationController alloc] initWithRootViewController:self.autoBeuAddVC];
    self.autoBeuAddVC.tabBarItem.title = @"Add";
    self.autoBeuAddVC.tabBarItem.image = [[UIImage imageNamed:@"tab_service_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.autoBeuAddVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"tab_service_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [self.autoBeuAddVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor blackColor]} forState:UIControlStateSelected];
    [self.autoBeuAddVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor grayColor]} forState:UIControlStateNormal];
    
    self.autoBeuSearchVC = [[autoBeuSearchViewController alloc] init];
    UINavigationController *customer = [[UINavigationController alloc] initWithRootViewController:self.autoBeuSearchVC];
    self.autoBeuSearchVC.tabBarItem.title = @"Search";
    self.autoBeuSearchVC.tabBarItem.image = [[UIImage imageNamed:@"tab_process_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.autoBeuSearchVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"tab_process_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [self.autoBeuSearchVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor blackColor]} forState:UIControlStateSelected];
    [self.autoBeuSearchVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor grayColor]} forState:UIControlStateNormal];
    
    NSArray *arrControllers = [NSArray arrayWithObjects:home,service,customer,nil];
    self.viewControllers = arrControllers;
    [[UITabBarItem appearance] setTitlePositionAdjustment:UIOffsetMake(0, -4)];
}
@end
