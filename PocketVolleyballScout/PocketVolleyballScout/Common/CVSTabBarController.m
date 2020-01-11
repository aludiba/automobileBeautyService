//
//  CVSTabBarController.m
//  wineAwake
//
//  Created by bykj on 2019/10/6.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "CVSTabBarController.h"
#import "CVSScorecardViewController.h"
#import "CVSRecordViewController.h"
#import "CVSMineViewController.h"
@interface CVSTabBarController ()<UITabBarDelegate>
@property(nonatomic, strong)CVSScorecardViewController *CVSScorecardVC;
@property(nonatomic, strong)CVSRecordViewController *CVSRecordVC;
@property(nonatomic, strong)CVSMineViewController *CVSMineVC;
@end

@implementation CVSTabBarController

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
+ (CVSTabBarController *)shareInstance{
    static CVSTabBarController *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[CVSTabBarController allocWithZone:NULL] init];
    });
    return client;
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self CVSsetContentView];
}
- (void)CVSsetContentView{
    self.CVSScorecardVC = [CVSScorecardViewController shareInstance];
    UINavigationController *CVSScorecard = [[UINavigationController alloc] initWithRootViewController:self.CVSScorecardVC];
    self.CVSScorecardVC.tabBarItem.title = NSLocalizedString(@"比分", nil);
    [self.CVSScorecardVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.CVSScorecardVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.CVSScorecardVC.tabBarItem.image = [[UIImage imageNamed:@"CVSTab_Clock_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.CVSScorecardVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"CVSTab_Clock_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    self.CVSRecordVC = [[CVSRecordViewController alloc] init];
    UINavigationController *CVSRecord = [[UINavigationController alloc] initWithRootViewController:self.CVSRecordVC];
    self.CVSRecordVC.tabBarItem.title = NSLocalizedString(@"记录", nil);
    [self.CVSRecordVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.CVSRecordVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.CVSRecordVC.tabBarItem.image = [[UIImage imageNamed:@"CVSTab_Record_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.CVSRecordVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"CVSTab_Record_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];

    self.CVSMineVC = [[CVSMineViewController alloc] init];
    UINavigationController *CVSMine = [[UINavigationController alloc] initWithRootViewController:self.CVSMineVC];
    self.CVSMineVC.tabBarItem.title = NSLocalizedString(@"我的", nil);
    [self.CVSMineVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.CVSMineVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.CVSMineVC.tabBarItem.image = [[UIImage imageNamed:@"CVSTab_Mine_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.CVSMineVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"CVSTab_Mine_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    NSArray *arrControllers = [NSArray arrayWithObjects:CVSScorecard,CVSRecord,CVSMine, nil];
    self.viewControllers = arrControllers;
    [[UITabBarItem appearance] setTitlePositionAdjustment:UIOffsetMake(0, -4)];
}
@end
