//
//  BTTabBarController.m
//  wineAwake
//
//  Created by bykj on 2019/10/6.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "BTTabBarController.h"
#import "BTScorecardViewController.h"
#import "BTRecordViewController.h"
#import "BTMineViewController.h"
@interface BTTabBarController ()<UITabBarDelegate>
@property(nonatomic, strong)BTScorecardViewController *BTScorecardVC;
@property(nonatomic, strong)BTRecordViewController *BTRecordVC;
@property(nonatomic, strong)BTMineViewController *BTMineVC;
@end

@implementation BTTabBarController

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
+ (BTTabBarController *)shareInstance{
    static BTTabBarController *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[BTTabBarController allocWithZone:NULL] init];
    });
    return client;
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self BTsetContentView];
}
- (void)BTsetContentView{
    self.BTScorecardVC = [BTScorecardViewController shareInstance];
    UINavigationController *BTScorecard = [[UINavigationController alloc] initWithRootViewController:self.BTScorecardVC];
    self.BTScorecardVC.tabBarItem.title = NSLocalizedString(@"比分", nil);
    [self.BTScorecardVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.BTScorecardVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.BTScorecardVC.tabBarItem.image = [[UIImage imageNamed:@"BTTab_Clock_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.BTScorecardVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"BTTab_Clock_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    self.BTRecordVC = [[BTRecordViewController alloc] init];
    UINavigationController *BTRecord = [[UINavigationController alloc] initWithRootViewController:self.BTRecordVC];
    self.BTRecordVC.tabBarItem.title = NSLocalizedString(@"记录", nil);
    [self.BTRecordVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.BTRecordVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.BTRecordVC.tabBarItem.image = [[UIImage imageNamed:@"BTTab_Record_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.BTRecordVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"BTTab_Record_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];

    self.BTMineVC = [[BTMineViewController alloc] init];
    UINavigationController *BTMine = [[UINavigationController alloc] initWithRootViewController:self.BTMineVC];
    self.BTMineVC.tabBarItem.title = NSLocalizedString(@"我的", nil);
    [self.BTMineVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.BTMineVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.BTMineVC.tabBarItem.image = [[UIImage imageNamed:@"BTTab_Mine_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.BTMineVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"BTTab_Mine_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    NSArray *arrControllers = [NSArray arrayWithObjects:BTScorecard,BTRecord,BTMine, nil];
    self.viewControllers = arrControllers;
    [[UITabBarItem appearance] setTitlePositionAdjustment:UIOffsetMake(0, -4)];
}
@end
