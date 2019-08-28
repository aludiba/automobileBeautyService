//
//  PKTPKBarViewController.m
//  AroundTheDB
//
//  Created by bykj on 2019/8/14.
//  Copyright © 2019 hgg. All rights reserved.
//

#import "PKTabBarViewController.h"
#import "PKOverallSituationViewController.h"
#import "PKBillHistoryViewController.h"
#import "PKBudgetViewController.h"
#import "PKDistributionViewController.h"
#import "PKSetViewController.h"
@interface PKTabBarViewController ()<UITabBarDelegate>
@property(nonatomic, strong)PKOverallSituationViewController *PKOverallSituationVC;
@property(nonatomic, strong)PKBillHistoryViewController *PKBillHistoryVC;
@property(nonatomic, strong)PKBudgetViewController *PKBudgetVC;
@property(nonatomic, strong)PKDistributionViewController *PKDistributionVC;
@property(nonatomic, strong)PKSetViewController *PKSetVC;
@end

@implementation PKTabBarViewController
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
+ (PKTabBarViewController *)shareInstance{
    static PKTabBarViewController *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[PKTabBarViewController allocWithZone:NULL] init];
    });
    return client;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    [UITabBar appearance].translucent = NO;
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self setContentView];
}
- (void)setContentView{
    self.PKOverallSituationVC = [[PKOverallSituationViewController alloc] init];
    UINavigationController *PKOverallSituation = [[UINavigationController alloc] initWithRootViewController:self.PKOverallSituationVC];
    self.PKOverallSituationVC.tabBarItem.title = NSLocalizedString(@"总体", nil);
    [self.PKOverallSituationVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.PKOverallSituationVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.PKOverallSituationVC.tabBarItem.image = [[UIImage imageNamed:@"PKtab_home_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.PKOverallSituationVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"PKtab_home_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];

    self.PKBillHistoryVC = [[PKBillHistoryViewController alloc] init];
    UINavigationController *PKBillHistory = [[UINavigationController alloc] initWithRootViewController:self.PKBillHistoryVC];
    self.PKBillHistoryVC.tabBarItem.title = NSLocalizedString(@"历史", nil);
    [self.PKBillHistoryVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.PKBillHistoryVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.PKBillHistoryVC.tabBarItem.image = [[UIImage imageNamed:@"PKtab_history_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.PKBillHistoryVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"PKtab_history_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];

    self.PKBudgetVC = [[PKBudgetViewController alloc] init];
    UINavigationController *PKBudget = [[UINavigationController alloc] initWithRootViewController:self.PKBudgetVC];
    self.PKBudgetVC.tabBarItem.title = NSLocalizedString(@"预算", nil);
    [self.PKBudgetVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.PKBudgetVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.PKBudgetVC.tabBarItem.image = [[UIImage imageNamed:@"PKtab_budget_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.PKBudgetVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"PKtab_budget_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    self.PKDistributionVC = [[PKDistributionViewController alloc] init];
    UINavigationController *PKDistribution = [[UINavigationController alloc] initWithRootViewController:self.PKDistributionVC];
    self.PKDistributionVC.tabBarItem.title = NSLocalizedString(@"分配", nil);
    [self.PKDistributionVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.PKDistributionVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.PKDistributionVC.tabBarItem.image = [[UIImage imageNamed:@"PKtab_distribution_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.PKDistributionVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"PKtab_distribution_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    self.PKSetVC = [[PKSetViewController alloc] init];
    UINavigationController *PKSet = [[UINavigationController alloc] initWithRootViewController:self.PKSetVC];
    self.PKSetVC.tabBarItem.title = NSLocalizedString(@"我的", nil);
    [self.PKSetVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.PKSetVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.PKSetVC.tabBarItem.image = [[UIImage imageNamed:@"PKtab_mine_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.PKBudgetVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"PKtab_mine_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    NSArray *arrControllers = [NSArray arrayWithObjects:PKOverallSituation,PKBillHistory,PKBudget,PKDistribution,PKSet,nil];
    self.viewControllers = arrControllers;
    [[UITabBarItem appearance] setTitlePositionAdjustment:UIOffsetMake(0, -4)];
}
@end
