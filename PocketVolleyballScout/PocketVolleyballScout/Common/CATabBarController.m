//
//  CATabBarController.m
//  wineAwake
//
//  Created by bykj on 2019/10/6.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "CATabBarController.h"
#import "CAScorecardViewController.h"
#import "CARecordViewController.h"
#import "CAMineViewController.h"
@interface CATabBarController ()<UITabBarDelegate>
@property(nonatomic, strong)CAScorecardViewController *CAScorecardVC;
@property(nonatomic, strong)CARecordViewController *CARecordVC;
@property(nonatomic, strong)CAMineViewController *CAMineVC;
@end

@implementation CATabBarController

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
+ (CATabBarController *)shareInstance{
    static CATabBarController *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[CATabBarController allocWithZone:NULL] init];
    });
    return client;
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self CAsetContentView];
}
- (void)CAsetContentView{
    self.CAScorecardVC = [CAScorecardViewController shareInstance];
    UINavigationController *CAScorecard = [[UINavigationController alloc] initWithRootViewController:self.CAScorecardVC];
    self.CAScorecardVC.tabBarItem.title = NSLocalizedString(@"比分", nil);
    [self.CAScorecardVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.CAScorecardVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.CAScorecardVC.tabBarItem.image = [[UIImage imageNamed:@"CATab_Clock_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.CAScorecardVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"CATab_Clock_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    self.CARecordVC = [[CARecordViewController alloc] init];
    UINavigationController *CARecord = [[UINavigationController alloc] initWithRootViewController:self.CARecordVC];
    self.CARecordVC.tabBarItem.title = NSLocalizedString(@"记录", nil);
    [self.CARecordVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.CARecordVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.CARecordVC.tabBarItem.image = [[UIImage imageNamed:@"CATab_Record_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.CARecordVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"CATab_Record_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];

    self.CAMineVC = [[CAMineViewController alloc] init];
    UINavigationController *CAMine = [[UINavigationController alloc] initWithRootViewController:self.CAMineVC];
    self.CAMineVC.tabBarItem.title = NSLocalizedString(@"我的", nil);
    [self.CAMineVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.CAMineVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.CAMineVC.tabBarItem.image = [[UIImage imageNamed:@"CATab_Mine_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.CAMineVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"CATab_Mine_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    NSArray *arrControllers = [NSArray arrayWithObjects:CAScorecard,CARecord,CAMine, nil];
    self.viewControllers = arrControllers;
    [[UITabBarItem appearance] setTitlePositionAdjustment:UIOffsetMake(0, -4)];
}
@end
