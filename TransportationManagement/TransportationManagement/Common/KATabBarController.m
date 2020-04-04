//
//  KATabBarController.m
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/2.
//  Copyright © 2020 hb. All rights reserved.
//

#import "KATabBarController.h"
#import "KAHomeViewController.h"
#import "KARoadViewController.h"
#import "KAGasolineViewController.h"
#import "KAMineViewController.h"

@interface KATabBarController ()<UITabBarDelegate>
@property(nonatomic, strong)KAHomeViewController *KAHomeVC;
@property(nonatomic, strong)KARoadViewController *KARoadVC;
@property(nonatomic, strong)KAGasolineViewController *KAGasolineVC;
@property(nonatomic, strong)KAMineViewController *KAMineVC;
@end

@implementation KATabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [UITabBar appearance].translucent = NO;
}
CG_INLINE BOOL
OverrideImplementation(Class targetClass, SEL targetSelector, id (^implementationBlock)(Class originClass, SEL originCMD, IMP originIMP)) {
    Method originMethod = class_getInstanceMethod(targetClass, targetSelector);
    if (!originMethod) {
        return NO;
    }
    IMP originIMP = method_getImplementation(originMethod);
    method_setImplementation(originMethod, imp_implementationWithBlock(implementationBlock(targetClass, targetSelector, originIMP)));
    return YES;
}
+ (void)load {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        if (@available(iOS 12.1, *)) {
            OverrideImplementation(NSClassFromString(@"UITabBarButton"), @selector(setFrame:), ^id(__unsafe_unretained Class originClass, SEL originCMD, IMP originIMP) {
                return ^(UIView *selfObject, CGRect firstArgv) {
                    
                    if ([selfObject isKindOfClass:originClass]) {
                        // 如果发现即将要设置一个 size 为空的 frame，则屏蔽掉本次设置
                        if (!CGRectIsEmpty(selfObject.frame) && CGRectIsEmpty(firstArgv)) {
                            return;
                        }
                    }
                    
                    // call super
                    void (*originSelectorIMP)(id, SEL, CGRect);
                    originSelectorIMP = (void (*)(id, SEL, CGRect))originIMP;
                    originSelectorIMP(selfObject, originCMD, firstArgv);
                };
            });
        }
    });
}
+ (KATabBarController *)KAshareInstance{
    static KATabBarController *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[KATabBarController allocWithZone:NULL] init];
    });
    return client;
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self KAsetContentView];
}
- (void)KAsetContentView{
    self.KAHomeVC = [[KAHomeViewController alloc] init];
    UINavigationController *KAHome = [[UINavigationController alloc] initWithRootViewController:self.KAHomeVC];
    self.KAHomeVC.tabBarItem.title = @"首页";
    [self.KAHomeVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.KAHomeVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.KAHomeVC.tabBarItem.image = [[UIImage imageNamed:@"KAtab_home_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.KAHomeVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"KAtab_home_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    self.KARoadVC = [[KARoadViewController alloc] init];
    UINavigationController *KARoadVC = [[UINavigationController alloc] initWithRootViewController:self.KARoadVC];
    self.KARoadVC.tabBarItem.title = @"路况延时";
    [self.KARoadVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.KARoadVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.KARoadVC.tabBarItem.image = [[UIImage imageNamed:@"KAtab_road_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.KARoadVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"KAtab_road_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    self.KAGasolineVC = [[KAGasolineViewController alloc] init];
    UINavigationController *KAGasolineVC = [[UINavigationController alloc] initWithRootViewController:self.KAGasolineVC];
    self.KAGasolineVC.tabBarItem.title = @"加油记录";
    [self.KAGasolineVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.KAGasolineVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.KAGasolineVC.tabBarItem.image = [[UIImage imageNamed:@"KAtab_gasoline_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.KAGasolineVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"KAtab_gasoline_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    self.KAMineVC = [[KAMineViewController alloc] init];
    UINavigationController *KAMineVC = [[UINavigationController alloc] initWithRootViewController:self.KAMineVC];
    self.KAMineVC.tabBarItem.title = @"我的";
    [self.KAMineVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.KAMineVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.KAMineVC.tabBarItem.image = [[UIImage imageNamed:@"KAtab_mine_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.KAMineVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"KAtab_mine_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    NSArray *arrControllers = [NSArray arrayWithObjects:KAHome,KARoadVC,KAGasolineVC,KAMineVC, nil];
    self.viewControllers = arrControllers;
    [[UITabBarItem appearance] setTitlePositionAdjustment:UIOffsetMake(0, -4)];
}
@end
