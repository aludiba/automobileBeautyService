//
//  stbaTabBarController.m
//  automobileBeautyService
//
//  Created by bykj on 2019/6/19.
//  Copyright © 2019 hgg. All rights reserved.
//

#import "stbaTabBarController.h"
#import "stbaHomeViewController.h"
#import "stbaAddActivitiesViewController.h"
#import "stbaAddressBookViewController.h"
@interface stbaTabBarController()<UITabBarDelegate>
@property(nonatomic, strong)stbaHomeViewController *stbaHomeVC;
@property(nonatomic, strong)stbaAddActivitiesViewController *stbaAddVC;
@property(nonatomic, strong)stbaAddressBookViewController *stbaAddressBookVC;
@end
@implementation stbaTabBarController
- (void)viewDidLoad{
    [super viewDidLoad];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.stbaHomeVC = [[stbaHomeViewController alloc] init];
    UINavigationController *home = [[UINavigationController alloc] initWithRootViewController:self.stbaHomeVC];
    self.stbaHomeVC.tabBarItem.title = @"Home";
    self.stbaHomeVC.tabBarItem.image = [[UIImage imageNamed:@"tabhome_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.stbaHomeVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"tabhome_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [self.stbaHomeVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor blackColor]} forState:UIControlStateSelected];
    [self.stbaHomeVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor grayColor]} forState:UIControlStateNormal];
    
    self.stbaAddVC = [[stbaAddActivitiesViewController alloc] init];
    UINavigationController *service = [[UINavigationController alloc] initWithRootViewController:self.stbaAddVC];
    self.stbaAddVC.tabBarItem.title = @"AddActivity";
    self.stbaAddVC.tabBarItem.image = [[UIImage imageNamed:@"tabmessage_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.stbaAddVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"tabmessage_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [self.stbaAddVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor blackColor]} forState:UIControlStateSelected];
    [self.stbaAddVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor grayColor]} forState:UIControlStateNormal];
    
    self.stbaAddressBookVC = [[stbaAddressBookViewController alloc] init];
    UINavigationController *customer = [[UINavigationController alloc] initWithRootViewController:self.stbaAddressBookVC];
    self.stbaAddressBookVC.tabBarItem.title = @"AddressBook";
    self.stbaAddressBookVC.tabBarItem.image = [[UIImage imageNamed:@"tabhistory_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.stbaAddressBookVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"tabhistory_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [self.stbaAddressBookVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor blackColor]} forState:UIControlStateSelected];
    [self.stbaAddressBookVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor grayColor]} forState:UIControlStateNormal];
    
    NSArray *arrControllers = [NSArray arrayWithObjects:home,service,customer,nil];
    self.viewControllers = arrControllers;
    [[UITabBarItem appearance] setTitlePositionAdjustment:UIOffsetMake(0, -4)];
}
@end
