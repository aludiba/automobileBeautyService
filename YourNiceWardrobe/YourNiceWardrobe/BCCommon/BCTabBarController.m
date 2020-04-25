//
//  BCTabBarController.m
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/2.
//  Copyright © 2020 hb. all rights reserved.
//

#import "BCTabBarController.h"
#import "BCWardrobeViewController.h"
#import "BCDressUpViewController.h"
#import "BCDailyViewController.h"
#import "BCMineViewController.h"

@interface BCTabBarController ()<UITabBarDelegate>
@property(nonatomic, strong)BCWardrobeViewController *BCWardrobeVC;
@property(nonatomic, strong)BCDressUpViewController *BCDressUpVC;
@property(nonatomic, strong)BCDailyViewController *BCDailyVC;
@property(nonatomic, strong)BCMineViewController *BCMineVC;
@end

@implementation BCTabBarController

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
+ (BCTabBarController *)BCshareInstance{
    static BCTabBarController *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[BCTabBarController allocWithZone:NULL] init];
    });
    return client;
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self BCsetContentView];
}
- (void)BCsetContentView{
    self.BCWardrobeVC = [[BCWardrobeViewController alloc] init];
    UINavigationController *BCWardrobe = [[UINavigationController alloc] initWithRootViewController:self.BCWardrobeVC];
    self.BCWardrobeVC.tabBarItem.title = @"衣柜";
    [self.BCWardrobeVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.BCWardrobeVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.BCWardrobeVC.tabBarItem.image = [[UIImage imageNamed:@"BCtab_wardrobe_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.BCWardrobeVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"BCtab_wardrobe_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    self.BCDressUpVC = [[BCDressUpViewController alloc] init];
    UINavigationController *BCDressUpVC = [[UINavigationController alloc] initWithRootViewController:self.BCDressUpVC];
    self.BCDressUpVC.tabBarItem.title = @"打扮";
    [self.BCDressUpVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.BCDressUpVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.BCDressUpVC.tabBarItem.image = [[UIImage imageNamed:@"BCtab_dressup_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.BCDressUpVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"BCtab_dressup_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    self.BCDailyVC = [[BCDailyViewController alloc] init];
    UINavigationController *BCDailyVC = [[UINavigationController alloc] initWithRootViewController:self.BCDailyVC];
    self.BCDailyVC.tabBarItem.title = @"日常";
    [self.BCDailyVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.BCDailyVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.BCDailyVC.tabBarItem.image = [[UIImage imageNamed:@"BCtab_daily_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.BCDailyVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"BCtab_daily_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    self.BCMineVC = [[BCMineViewController alloc] init];
    UINavigationController *BCMineVC = [[UINavigationController alloc] initWithRootViewController:self.BCMineVC];
    self.BCMineVC.tabBarItem.title = @"我的";
    [self.BCMineVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.BCMineVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.BCMineVC.tabBarItem.image = [[UIImage imageNamed:@"BCtab_mine_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.BCMineVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"BCtab_mine_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    NSArray *arrControllers = [NSArray arrayWithObjects:BCWardrobe,BCDressUpVC,BCDailyVC,BCMineVC, nil];
    self.viewControllers = arrControllers;
    [[UITabBarItem appearance] setTitlePositionAdjustment:UIOffsetMake(0, -4)];
}
@end
