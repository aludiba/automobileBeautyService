//
//  GHTabBarViewController.m
//  GoodHabit
//
//  Created by 褚红彪 on 2019/9/14.
//  Copyright © 2019 hb. All rights reserved.
//

#import "GHTabBarViewController.h"
#import "GHTodayViewController.h"
#import "GHDailyHabitsViewController.h"
#import "GHSetViewController.h"
@interface GHTabBarViewController ()<UITabBarDelegate>

@end

@implementation GHTabBarViewController
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
+ (GHTabBarViewController *)shareInstance{
    static GHTabBarViewController *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[GHTabBarViewController allocWithZone:NULL] init];
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
    self.todayVC = [[GHTodayViewController alloc] init];
    UINavigationController *diary = [[UINavigationController alloc] initWithRootViewController:self.todayVC];
    self.todayVC.tabBarItem.title = NSLocalizedString(@"今天", nil);
    self.todayVC.tabBarItem.image = [[UIImage imageNamed:@"tab_today_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.todayVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"tab_today_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [self.todayVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor blackColor]} forState:UIControlStateSelected];
    [self.todayVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor grayColor]} forState:UIControlStateNormal];
    
    self.dailyHabitsVC = [[GHDailyHabitsViewController alloc] init];
    UINavigationController *mine = [[UINavigationController alloc] initWithRootViewController:self.dailyHabitsVC];
    self.dailyHabitsVC.tabBarItem.title = NSLocalizedString(@"日常习惯", nil);
    self.dailyHabitsVC.tabBarItem.image = [[UIImage imageNamed:@"tab_dailyHabits_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.dailyHabitsVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"tab_dailyHabits_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [self.dailyHabitsVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor blackColor]} forState:UIControlStateSelected];
    [self.dailyHabitsVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor grayColor]} forState:UIControlStateNormal];
    
    self.setVC = [[GHSetViewController alloc] init];
    UINavigationController *set = [[UINavigationController alloc] initWithRootViewController:self.setVC];
    self.setVC.tabBarItem.title = NSLocalizedString(@"设置", nil);
    self.setVC.tabBarItem.image = [[UIImage imageNamed:@"tab_set_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.setVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"tab_set_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [self.setVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor blackColor]} forState:UIControlStateSelected];
    [self.setVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor grayColor]} forState:UIControlStateNormal];
    
    NSArray *arrControllers = [NSArray arrayWithObjects:diary,mine,set,nil];
    self.viewControllers = arrControllers;
    [[UITabBarItem appearance] setTitlePositionAdjustment:UIOffsetMake(0, -4)];
    [[UITabBar appearance] setBackgroundColor:GHH_Color(237, 242, 242, 1)];
}
@end
