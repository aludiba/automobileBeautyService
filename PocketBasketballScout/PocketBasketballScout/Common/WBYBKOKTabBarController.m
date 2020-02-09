//
//  WBYBKOKTabBarController.m
//  wineAwake
//
//  Created by bykj on 2019/10/6.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "WBYBKOKTabBarController.h"
#import "WBYBKOKScorecardViewController.h"
#import "WBYBKOKRecordViewController.h"
#import "WBYBKOKMineViewController.h"
@interface WBYBKOKTabBarController ()<UITabBarDelegate>
@property(nonatomic, strong)WBYBKOKScorecardViewController *WBYBKOKScorecardVC;
@property(nonatomic, strong)WBYBKOKRecordViewController *WBYBKOKRecordVC;
@property(nonatomic, strong)WBYBKOKMineViewController *WBYBKOKMineVC;
@end

@implementation WBYBKOKTabBarController

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
+ (WBYBKOKTabBarController *)shareInstance{
    static WBYBKOKTabBarController *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[WBYBKOKTabBarController allocWithZone:NULL] init];
    });
    return client;
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self WBYBKOKsetContentView];
}
- (void)WBYBKOKsetContentView{
    self.WBYBKOKScorecardVC = [WBYBKOKScorecardViewController shareInstance];
    UINavigationController *WBYBKOKScorecard = [[UINavigationController alloc] initWithRootViewController:self.WBYBKOKScorecardVC];
    self.WBYBKOKScorecardVC.tabBarItem.title = NSLocalizedString(@"比分", nil);
    [self.WBYBKOKScorecardVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.WBYBKOKScorecardVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.WBYBKOKScorecardVC.tabBarItem.image = [[UIImage imageNamed:@"WBYBKOKTab_Clock_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.WBYBKOKScorecardVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"WBYBKOKTab_Clock_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    self.WBYBKOKRecordVC = [[WBYBKOKRecordViewController alloc] init];
    UINavigationController *WBYBKOKRecord = [[UINavigationController alloc] initWithRootViewController:self.WBYBKOKRecordVC];
    self.WBYBKOKRecordVC.tabBarItem.title = NSLocalizedString(@"记录", nil);
    [self.WBYBKOKRecordVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.WBYBKOKRecordVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.WBYBKOKRecordVC.tabBarItem.image = [[UIImage imageNamed:@"WBYBKOKTab_Record_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.WBYBKOKRecordVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"WBYBKOKTab_Record_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];

    self.WBYBKOKMineVC = [[WBYBKOKMineViewController alloc] init];
    UINavigationController *WBYBKOKMine = [[UINavigationController alloc] initWithRootViewController:self.WBYBKOKMineVC];
    self.WBYBKOKMineVC.tabBarItem.title = NSLocalizedString(@"我的", nil);
    [self.WBYBKOKMineVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.WBYBKOKMineVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.WBYBKOKMineVC.tabBarItem.image = [[UIImage imageNamed:@"WBYBKOKTab_Mine_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.WBYBKOKMineVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"WBYBKOKTab_Mine_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    NSArray *arrControllers = [NSArray arrayWithObjects:WBYBKOKScorecard,WBYBKOKRecord,WBYBKOKMine, nil];
    self.viewControllers = arrControllers;
    [[UITabBarItem appearance] setTitlePositionAdjustment:UIOffsetMake(0, -4)];
}
@end
