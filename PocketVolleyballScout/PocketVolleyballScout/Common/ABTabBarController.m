//
//  ABTabBarController.m
//  wineAwake
//
//  Created by bykj on 2019/10/6.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "ABTabBarController.h"
#import "ABScorecardViewController.h"
#import "ABRecordViewController.h"
#import "ABMineViewController.h"
@interface ABTabBarController ()<UITabBarDelegate>
@property(nonatomic, strong)ABScorecardViewController *ABScorecardVC;
@property(nonatomic, strong)ABRecordViewController *ABRecordVC;
@property(nonatomic, strong)ABMineViewController *ABMineVC;
@end

@implementation ABTabBarController

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
+ (ABTabBarController *)shareInstance{
    static ABTabBarController *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[ABTabBarController allocWithZone:NULL] init];
    });
    return client;
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self ABsetContentView];
}
- (void)ABsetContentView{
    self.ABScorecardVC = [ABScorecardViewController shareInstance];
    UINavigationController *ABScorecard = [[UINavigationController alloc] initWithRootViewController:self.ABScorecardVC];
    self.ABScorecardVC.tabBarItem.title = NSLocalizedString(@"比分", nil);
    [self.ABScorecardVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.ABScorecardVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.ABScorecardVC.tabBarItem.image = [[UIImage imageNamed:@"ABTab_Clock_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.ABScorecardVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"ABTab_Clock_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    self.ABRecordVC = [[ABRecordViewController alloc] init];
    UINavigationController *ABRecord = [[UINavigationController alloc] initWithRootViewController:self.ABRecordVC];
    self.ABRecordVC.tabBarItem.title = NSLocalizedString(@"记录", nil);
    [self.ABRecordVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.ABRecordVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.ABRecordVC.tabBarItem.image = [[UIImage imageNamed:@"ABTab_Record_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.ABRecordVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"ABTab_Record_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];

    self.ABMineVC = [[ABMineViewController alloc] init];
    UINavigationController *ABMine = [[UINavigationController alloc] initWithRootViewController:self.ABMineVC];
    self.ABMineVC.tabBarItem.title = NSLocalizedString(@"我的", nil);
    [self.ABMineVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.ABMineVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.ABMineVC.tabBarItem.image = [[UIImage imageNamed:@"ABTab_Mine_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.ABMineVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"ABTab_Mine_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    NSArray *arrControllers = [NSArray arrayWithObjects:ABScorecard,ABRecord,ABMine, nil];
    self.viewControllers = arrControllers;
    [[UITabBarItem appearance] setTitlePositionAdjustment:UIOffsetMake(0, -4)];
}
@end
