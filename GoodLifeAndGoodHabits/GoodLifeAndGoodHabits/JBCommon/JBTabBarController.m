//
//  JBTabBarController.m
//  GoodLifeAndGoodHabits
//
//  Created by user on 2020/6/9.
//  Copyright © 2020 user. All rights reserved.
//

#import "JBTabBarController.h"
#import "JBHomeViewController.h"
#import "JBHabitViewController.h"
#import "JBMoreViewController.h"
@interface JBTabBarController ()<UITabBarDelegate>
@property(nonatomic, strong)JBHomeViewController *JBHomeVC;
@property(nonatomic, strong)JBHabitViewController *JBHabitVC;
@property(nonatomic, strong)JBMoreViewController *JBMoreVC;
@end

@implementation JBTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [UITabBar appearance].translucent = NO;
    [self JBsetContentView];
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
+ (JBTabBarController *)JBshareInstance{
    static JBTabBarController *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[JBTabBarController allocWithZone:NULL] init];
    });
    return client;
}
- (void)JBsetContentView{
    self.JBHomeVC = [[JBHomeViewController alloc] init];
    UINavigationController *JBHome = [[UINavigationController alloc] initWithRootViewController:self.JBHomeVC];
    self.JBHomeVC.tabBarItem.title = NSLocalizedString(@"首页", nil);
    [self.JBHomeVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.JBHomeVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.JBHomeVC.tabBarItem.image = [[UIImage imageNamed:@"JBtab_home_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.JBHomeVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"JBtab_home_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    self.JBHabitVC = [[JBHabitViewController alloc] init];
    UINavigationController *JBHabitVC = [[UINavigationController alloc] initWithRootViewController:self.JBHabitVC];
    self.JBHabitVC.tabBarItem.title = NSLocalizedString(@"习惯", nil);
    [self.JBHabitVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.JBHabitVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.JBHabitVC.tabBarItem.image = [[UIImage imageNamed:@"JBtab_habit_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.JBHabitVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"JBtab_habit_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    self.JBMoreVC = [[JBMoreViewController alloc] init];
    UINavigationController *JBMoreVC = [[UINavigationController alloc] initWithRootViewController:self.JBMoreVC];
    self.JBMoreVC.tabBarItem.title = NSLocalizedString(@"更多", nil);
    [self.JBMoreVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.JBMoreVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.JBMoreVC.tabBarItem.image = [[UIImage imageNamed:@"JBtab_more_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.JBMoreVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"JBtab_more_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    NSArray *arrControllers = [NSArray arrayWithObjects:JBHome,JBHabitVC,JBMoreVC, nil];
    self.viewControllers = arrControllers;
    [[UITabBarItem appearance] setTitlePositionAdjustment:UIOffsetMake(0, -4)];
}
@end
