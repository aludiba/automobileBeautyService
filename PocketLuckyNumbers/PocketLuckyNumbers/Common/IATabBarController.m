//
//  IATabBarController.m
//  wineAwake
//
//  Created by bykj on 2019/10/6.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "IATabBarController.h"
#import "IALuckyNumbersViewController.h"
#import "IARecordViewController.h"
#import "IASetViewController.h"
@interface IATabBarController ()<UITabBarDelegate>
@property(nonatomic, strong)IALuckyNumbersViewController *IAScorecardVC;
@property(nonatomic, strong)IARecordViewController *IARecordVC;
@property(nonatomic, strong)IASetViewController *IAMineVC;
@end

@implementation IATabBarController

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
+ (IATabBarController *)shareInstance{
    static IATabBarController *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[IATabBarController allocWithZone:NULL] init];
    });
    return client;
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self IAsetContentView];
}
- (void)IAsetContentView{
    self.IAScorecardVC = [IALuckyNumbersViewController shareInstance];
    UINavigationController *IAScorecard = [[UINavigationController alloc] initWithRootViewController:self.IAScorecardVC];
    self.IAScorecardVC.tabBarItem.title = NSLocalizedString(@"幸运数字", nil);
    [self.IAScorecardVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.IAScorecardVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.IAScorecardVC.tabBarItem.image = [[UIImage imageNamed:@"IATab_Clock_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.IAScorecardVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"IATab_Clock_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    self.IARecordVC = [[IARecordViewController alloc] init];
    UINavigationController *IARecord = [[UINavigationController alloc] initWithRootViewController:self.IARecordVC];
    self.IARecordVC.tabBarItem.title = NSLocalizedString(@"幸运记录", nil);
    [self.IARecordVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.IARecordVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.IARecordVC.tabBarItem.image = [[UIImage imageNamed:@"IATab_Record_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.IARecordVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"IATab_Record_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];

    self.IAMineVC = [[IASetViewController alloc] init];
    UINavigationController *IAMine = [[UINavigationController alloc] initWithRootViewController:self.IAMineVC];
    self.IAMineVC.tabBarItem.title = NSLocalizedString(@"幸运设置", nil);
    [self.IAMineVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.IAMineVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.IAMineVC.tabBarItem.image = [[UIImage imageNamed:@"IATab_Mine_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.IAMineVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"IATab_Mine_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    NSArray *arrControllers = [NSArray arrayWithObjects:IAScorecard,IARecord,IAMine, nil];
    self.viewControllers = arrControllers;
    [[UITabBarItem appearance] setTitlePositionAdjustment:UIOffsetMake(0, -4)];
}
@end
