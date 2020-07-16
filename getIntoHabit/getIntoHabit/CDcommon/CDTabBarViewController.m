//
//  CDTabBarViewController.m
//  GoodHabit
//
//  Created by 褚红彪 on 2019/9/14.
//  Copyright © 2019 hb. All rights reserved.
//

#import "CDTabBarViewController.h"
#import "CDTodayViewController.h"
#import "CDDailyHabitsViewController.h"
#import "CDSetViewController.h"
@interface CDTabBarViewController ()<UITabBarDelegate>

@end

@implementation CDTabBarViewController
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
+ (CDTabBarViewController *)CDshareInstance{
    static CDTabBarViewController *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[CDTabBarViewController allocWithZone:NULL] init];
    });
    return client;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self setContentView];
}
- (void)setContentView{
    self.CDtodayVC = [[CDTodayViewController alloc] init];
    UINavigationController *CDdiary = [[UINavigationController alloc] initWithRootViewController:self.CDtodayVC];
    self.CDtodayVC.tabBarItem.title = NSLocalizedString(@"今天", nil);
    self.CDtodayVC.tabBarItem.image = [[UIImage imageNamed:@"CDtab_today_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.CDtodayVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"CDtab_today_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [self.CDtodayVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor blackColor]} forState:UIControlStateSelected];
    [self.CDtodayVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor grayColor]} forState:UIControlStateNormal];
    
    self.CDdailyHabitsVC = [[CDDailyHabitsViewController alloc] init];
    UINavigationController *CDmine = [[UINavigationController alloc] initWithRootViewController:self.CDdailyHabitsVC];
    self.CDdailyHabitsVC.tabBarItem.title = NSLocalizedString(@"日常习惯", nil);
    self.CDdailyHabitsVC.tabBarItem.image = [[UIImage imageNamed:@"CDtab_dailyHabits_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.CDdailyHabitsVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"CDtab_dailyHabits_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [self.CDdailyHabitsVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor blackColor]} forState:UIControlStateSelected];
    [self.CDdailyHabitsVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor grayColor]} forState:UIControlStateNormal];
    
    self.CDsetVC = [[CDSetViewController alloc] init];
    UINavigationController *CDset = [[UINavigationController alloc] initWithRootViewController:self.CDsetVC];
    self.CDsetVC.tabBarItem.title = NSLocalizedString(@"设置", nil);
    self.CDsetVC.tabBarItem.image = [[UIImage imageNamed:@"CDtab_set_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.CDsetVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"CDtab_set_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [self.CDsetVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor blackColor]} forState:UIControlStateSelected];
    [self.CDsetVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor grayColor]} forState:UIControlStateNormal];
    
    NSArray *CDarrControllers = [NSArray arrayWithObjects:CDdiary,CDmine,CDset,nil];
    self.viewControllers = CDarrControllers;
    [[UITabBarItem appearance] setTitlePositionAdjustment:UIOffsetMake(0, -4)];
    [[UITabBar appearance] setBackgroundColor:CDH_Color(237, 242, 242, 1)];
}
@end
