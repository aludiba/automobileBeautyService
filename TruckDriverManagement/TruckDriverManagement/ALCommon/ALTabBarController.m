//
//  ALTabBarController.m
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/2.
//  Copyright © 2020 hb. All rights reserved.
//

#import "ALTabBarController.h"
#import "ALHomeViewController.h"
#import "ALRoadViewController.h"
#import "ALGasolineViewController.h"
#import "ALMineViewController.h"

@interface ALTabBarController ()<UITabBarDelegate>
@property(nonatomic, strong)ALHomeViewController *ALHomeVC;
@property(nonatomic, strong)ALRoadViewController *ALRoadVC;
@property(nonatomic, strong)ALGasolineViewController *ALGasolineVC;
@property(nonatomic, strong)ALMineViewController *ALMineVC;
@end

@implementation ALTabBarController

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
+ (ALTabBarController *)ALshareInstance{
    static ALTabBarController *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[ALTabBarController allocWithZone:NULL] init];
    });
    return client;
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self ALsetContentView];
}
- (void)ALsetContentView{
    self.ALHomeVC = [[ALHomeViewController alloc] init];
    UINavigationController *ALHome = [[UINavigationController alloc] initWithRootViewController:self.ALHomeVC];
    self.ALHomeVC.tabBarItem.title = @"首页";
    [self.ALHomeVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.ALHomeVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.ALHomeVC.tabBarItem.image = [[UIImage imageNamed:@"ALtab_home_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.ALHomeVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"ALtab_home_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    self.ALRoadVC = [[ALRoadViewController alloc] init];
    UINavigationController *ALRoadVC = [[UINavigationController alloc] initWithRootViewController:self.ALRoadVC];
    self.ALRoadVC.tabBarItem.title = @"路况延时";
    [self.ALRoadVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.ALRoadVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.ALRoadVC.tabBarItem.image = [[UIImage imageNamed:@"ALtab_road_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.ALRoadVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"ALtab_road_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    self.ALGasolineVC = [[ALGasolineViewController alloc] init];
    UINavigationController *ALGasolineVC = [[UINavigationController alloc] initWithRootViewController:self.ALGasolineVC];
    self.ALGasolineVC.tabBarItem.title = @"加油记录";
    [self.ALGasolineVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.ALGasolineVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.ALGasolineVC.tabBarItem.image = [[UIImage imageNamed:@"ALtab_gasoline_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.ALGasolineVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"ALtab_gasoline_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    self.ALMineVC = [[ALMineViewController alloc] init];
    UINavigationController *ALMineVC = [[UINavigationController alloc] initWithRootViewController:self.ALMineVC];
    self.ALMineVC.tabBarItem.title = @"我的";
    [self.ALMineVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.ALMineVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.ALMineVC.tabBarItem.image = [[UIImage imageNamed:@"ALtab_mine_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.ALMineVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"ALtab_mine_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    NSArray *arrControllers = [NSArray arrayWithObjects:ALHome,ALRoadVC,ALGasolineVC,ALMineVC, nil];
    self.viewControllers = arrControllers;
    [[UITabBarItem appearance] setTitlePositionAdjustment:UIOffsetMake(0, -4)];
}
@end
