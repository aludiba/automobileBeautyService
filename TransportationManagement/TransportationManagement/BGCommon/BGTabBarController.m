//
//  BGTabBarController.m
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/2.
//  Copyright © 2020 hb. All rights reserved.
//

#import "BGTabBarController.h"
#import "BGHomeViewController.h"
#import "BGRoadViewController.h"
#import "BGGasolineViewController.h"
#import "BGMineViewController.h"

@interface BGTabBarController ()<UITabBarDelegate>
@property(nonatomic, strong)BGHomeViewController *BGHomeVC;
@property(nonatomic, strong)BGRoadViewController *BGRoadVC;
@property(nonatomic, strong)BGGasolineViewController *BGGasolineVC;
@property(nonatomic, strong)BGMineViewController *BGMineVC;
@end

@implementation BGTabBarController

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
+ (BGTabBarController *)BGshareInstance{
    static BGTabBarController *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[BGTabBarController allocWithZone:NULL] init];
    });
    return client;
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self BGsetContentView];
}
- (void)BGsetContentView{
    self.BGHomeVC = [[BGHomeViewController alloc] init];
    UINavigationController *BGHome = [[UINavigationController alloc] initWithRootViewController:self.BGHomeVC];
    self.BGHomeVC.tabBarItem.title = NSLocalizedString(@"首页", nil);
    [self.BGHomeVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.BGHomeVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.BGHomeVC.tabBarItem.image = [[UIImage imageNamed:@"BGtab_home_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.BGHomeVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"BGtab_home_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    self.BGRoadVC = [[BGRoadViewController alloc] init];
    UINavigationController *BGRoadVC = [[UINavigationController alloc] initWithRootViewController:self.BGRoadVC];
    self.BGRoadVC.tabBarItem.title = NSLocalizedString(@"路况延时", nil);
    [self.BGRoadVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.BGRoadVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.BGRoadVC.tabBarItem.image = [[UIImage imageNamed:@"BGtab_road_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.BGRoadVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"BGtab_road_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    self.BGGasolineVC = [[BGGasolineViewController alloc] init];
    UINavigationController *BGGasolineVC = [[UINavigationController alloc] initWithRootViewController:self.BGGasolineVC];
    self.BGGasolineVC.tabBarItem.title = NSLocalizedString(@"加油记录", nil);
    [self.BGGasolineVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.BGGasolineVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.BGGasolineVC.tabBarItem.image = [[UIImage imageNamed:@"BGtab_gasoline_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.BGGasolineVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"BGtab_gasoline_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    self.BGMineVC = [[BGMineViewController alloc] init];
    UINavigationController *BGMineVC = [[UINavigationController alloc] initWithRootViewController:self.BGMineVC];
    self.BGMineVC.tabBarItem.title = NSLocalizedString(@"我的", nil);
    [self.BGMineVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.BGMineVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.BGMineVC.tabBarItem.image = [[UIImage imageNamed:@"BGtab_mine_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.BGMineVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"BGtab_mine_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    NSArray *arrControllers = [NSArray arrayWithObjects:BGHome,BGRoadVC,BGGasolineVC,BGMineVC, nil];
    self.viewControllers = arrControllers;
    [[UITabBarItem appearance] setTitlePositionAdjustment:UIOffsetMake(0, -4)];
}
@end
