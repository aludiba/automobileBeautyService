//
//  EATabBarController.m
//  wineAwake
//
//  Created by bykj on 2019/10/6.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "EATabBarController.h"
#import "EAClockViewController.h"
#import "EARecordViewController.h"
#import "EAMineViewController.h"
@interface EATabBarController ()<UITabBarDelegate>
@property(nonatomic, strong)EAClockViewController *EAClockVC;
@property(nonatomic, strong)EARecordViewController *EARecordVC;
@property(nonatomic, strong)EAMineViewController *EAMineVC;
@end

@implementation EATabBarController

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
+ (EATabBarController *)EAshareInstance{
    static EATabBarController *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[EATabBarController allocWithZone:NULL] init];
    });
    return client;
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self EAsetContentView];
}
- (void)EAsetContentView{
    self.tabBar.barTintColor = [UIColor greenColor];
    self.EAClockVC = [[EAClockViewController alloc] init];
    UINavigationController *EAClock = [[UINavigationController alloc] initWithRootViewController:self.EAClockVC];
    self.EAClockVC.tabBarItem.title = NSLocalizedString(@"打卡", nil);
    [self.EAClockVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.EAClockVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.EAClockVC.tabBarItem.image = [[UIImage imageNamed:@"EATab_Clock_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.EAClockVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"EATab_Clock_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    self.EARecordVC = [[EARecordViewController alloc] init];
    UINavigationController *EARecord = [[UINavigationController alloc] initWithRootViewController:self.EARecordVC];
    self.EARecordVC.tabBarItem.title = NSLocalizedString(@"记录", nil);
    [self.EARecordVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.EARecordVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.EARecordVC.tabBarItem.image = [[UIImage imageNamed:@"EATab_Record_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.EARecordVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"EATab_Record_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];

    self.EAMineVC = [[EAMineViewController alloc] init];
    UINavigationController *EAMine = [[UINavigationController alloc] initWithRootViewController:self.EAMineVC];
    self.EAMineVC.tabBarItem.title = NSLocalizedString(@"我的", nil);
    [self.EAMineVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.EAMineVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.EAMineVC.tabBarItem.image = [[UIImage imageNamed:@"EATab_Mine_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.EAMineVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"EATab_Mine_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    NSArray *arrControllers = [NSArray arrayWithObjects:EAClock,EARecord,EAMine, nil];
    self.viewControllers = arrControllers;
    [[UITabBarItem appearance] setTitlePositionAdjustment:UIOffsetMake(0, -4)];
}
@end
