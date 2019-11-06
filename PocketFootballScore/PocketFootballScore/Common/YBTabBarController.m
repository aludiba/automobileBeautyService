//
//  YBTabBarController.m
//  wineAwake
//
//  Created by bykj on 2019/10/6.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "YBTabBarController.h"
#import "YBScorecardViewController.h"
#import "YBRecordViewController.h"
#import "YBMineViewController.h"
@interface YBTabBarController ()<UITabBarDelegate>
@property(nonatomic, strong)YBScorecardViewController *YBScorecardVC;
@property(nonatomic, strong)YBRecordViewController *YBRecordVC;
@property(nonatomic, strong)YBMineViewController *YBMineVC;
@end

@implementation YBTabBarController

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
+ (YBTabBarController *)shareInstance{
    static YBTabBarController *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[YBTabBarController allocWithZone:NULL] init];
    });
    return client;
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self YBsetContentView];
}
- (void)YBsetContentView{
    self.YBScorecardVC = [YBScorecardViewController shareInstance];
    UINavigationController *YBScorecard = [[UINavigationController alloc] initWithRootViewController:self.YBScorecardVC];
    self.YBScorecardVC.tabBarItem.title = NSLocalizedString(@"比分", nil);
    [self.YBScorecardVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.YBScorecardVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.YBScorecardVC.tabBarItem.image = [[UIImage imageNamed:@"YBTab_Clock_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.YBScorecardVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"YBTab_Clock_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    self.YBRecordVC = [[YBRecordViewController alloc] init];
    UINavigationController *YBRecord = [[UINavigationController alloc] initWithRootViewController:self.YBRecordVC];
    self.YBRecordVC.tabBarItem.title = NSLocalizedString(@"记录", nil);
    [self.YBRecordVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.YBRecordVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.YBRecordVC.tabBarItem.image = [[UIImage imageNamed:@"YBTab_Record_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.YBRecordVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"YBTab_Record_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];

    self.YBMineVC = [[YBMineViewController alloc] init];
    UINavigationController *YBMine = [[UINavigationController alloc] initWithRootViewController:self.YBMineVC];
    self.YBMineVC.tabBarItem.title = NSLocalizedString(@"我的", nil);
    [self.YBMineVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.YBMineVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.YBMineVC.tabBarItem.image = [[UIImage imageNamed:@"YBTab_Mine_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.YBMineVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"YBTab_Mine_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    NSArray *arrControllers = [NSArray arrayWithObjects:YBScorecard,YBRecord,YBMine, nil];
    self.viewControllers = arrControllers;
    [[UITabBarItem appearance] setTitlePositionAdjustment:UIOffsetMake(0, -4)];
}
@end
