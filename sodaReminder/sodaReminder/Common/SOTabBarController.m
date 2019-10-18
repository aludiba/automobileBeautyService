//
//  SOTabBarController.m
//  wineAwake
//
//  Created by bykj on 2019/10/6.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "SOTabBarController.h"
#import "SOClockViewController.h"
#import "SORecordViewController.h"
#import "SOMineViewController.h"
@interface SOTabBarController ()<UITabBarDelegate>
@property(nonatomic, strong)SOClockViewController *SOClockVC;
@property(nonatomic, strong)SORecordViewController *SORecordVC;
@property(nonatomic, strong)SOMineViewController *SOMineVC;
@end

@implementation SOTabBarController

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
+ (SOTabBarController *)shareInstance{
    static SOTabBarController *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[SOTabBarController allocWithZone:NULL] init];
    });
    return client;
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self setContentView];
}
- (void)setContentView{
    self.tabBar.barTintColor = [UIColor greenColor];
    self.SOClockVC = [[SOClockViewController alloc] init];
    UINavigationController *SOClock = [[UINavigationController alloc] initWithRootViewController:self.SOClockVC];
    self.SOClockVC.tabBarItem.title = NSLocalizedString(@"打卡", nil);
    [self.SOClockVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.SOClockVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.SOClockVC.tabBarItem.image = [[UIImage imageNamed:@"SOTab_Clock_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.SOClockVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"SOTab_Clock_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    self.SORecordVC = [[SORecordViewController alloc] init];
    UINavigationController *SORecord = [[UINavigationController alloc] initWithRootViewController:self.SORecordVC];
    self.SORecordVC.tabBarItem.title = NSLocalizedString(@"记录", nil);
    [self.SORecordVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.SORecordVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.SORecordVC.tabBarItem.image = [[UIImage imageNamed:@"SOTab_Record_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.SORecordVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"SOTab_Record_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];

    self.SOMineVC = [[SOMineViewController alloc] init];
    UINavigationController *SOMine = [[UINavigationController alloc] initWithRootViewController:self.SOMineVC];
    self.SOMineVC.tabBarItem.title = NSLocalizedString(@"我的", nil);
    [self.SOMineVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.SOMineVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.SOMineVC.tabBarItem.image = [[UIImage imageNamed:@"SOTab_Mine_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.SOMineVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"SOTab_Mine_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    NSArray *arrControllers = [NSArray arrayWithObjects:SOClock,SORecord,SOMine, nil];
    self.viewControllers = arrControllers;
    [[UITabBarItem appearance] setTitlePositionAdjustment:UIOffsetMake(0, -4)];
}
@end
