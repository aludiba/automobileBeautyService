//
//  YBPBSTabBarController.m
//  wineAwake
//
//  Created by bykj on 2019/10/6.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "YBPBSTabBarController.h"
#import "YBPBSScorecardViewController.h"
#import "YBPBSRecordViewController.h"
#import "YBPBSMineViewController.h"
@interface YBPBSTabBarController ()<UITabBarDelegate>
@property(nonatomic, strong)YBPBSScorecardViewController *YBPBSScorecardVC;
@property(nonatomic, strong)YBPBSRecordViewController *YBPBSRecordVC;
@property(nonatomic, strong)YBPBSMineViewController *YBPBSMineVC;
@end

@implementation YBPBSTabBarController

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
+ (YBPBSTabBarController *)shareInstance{
    static YBPBSTabBarController *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[YBPBSTabBarController allocWithZone:NULL] init];
    });
    return client;
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self YBPBSsetContentView];
}
- (void)YBPBSsetContentView{
    self.YBPBSScorecardVC = [YBPBSScorecardViewController shareInstance];
    UINavigationController *YBPBSScorecard = [[UINavigationController alloc] initWithRootViewController:self.YBPBSScorecardVC];
    self.YBPBSScorecardVC.tabBarItem.title = NSLocalizedString(@"比分", nil);
    [self.YBPBSScorecardVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.YBPBSScorecardVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.YBPBSScorecardVC.tabBarItem.image = [[UIImage imageNamed:@"YBPBSTab_Clock_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.YBPBSScorecardVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"YBPBSTab_Clock_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    self.YBPBSRecordVC = [[YBPBSRecordViewController alloc] init];
    UINavigationController *YBPBSRecord = [[UINavigationController alloc] initWithRootViewController:self.YBPBSRecordVC];
    self.YBPBSRecordVC.tabBarItem.title = NSLocalizedString(@"记录", nil);
    [self.YBPBSRecordVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.YBPBSRecordVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.YBPBSRecordVC.tabBarItem.image = [[UIImage imageNamed:@"YBPBSTab_Record_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.YBPBSRecordVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"YBPBSTab_Record_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];

    self.YBPBSMineVC = [[YBPBSMineViewController alloc] init];
    UINavigationController *YBPBSMine = [[UINavigationController alloc] initWithRootViewController:self.YBPBSMineVC];
    self.YBPBSMineVC.tabBarItem.title = NSLocalizedString(@"我的", nil);
    [self.YBPBSMineVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.YBPBSMineVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.YBPBSMineVC.tabBarItem.image = [[UIImage imageNamed:@"YBPBSTab_Mine_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.YBPBSMineVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"YBPBSTab_Mine_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    NSArray *arrControllers = [NSArray arrayWithObjects:YBPBSScorecard,YBPBSRecord,YBPBSMine, nil];
    self.viewControllers = arrControllers;
    [[UITabBarItem appearance] setTitlePositionAdjustment:UIOffsetMake(0, -4)];
}
@end
