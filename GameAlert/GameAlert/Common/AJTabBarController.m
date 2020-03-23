//
//  AJTabBarController.m
//  wineAwake
//
//  Created by bykj on 2019/10/6.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "AJTabBarController.h"
#import "AJClockViewController.h"
#import "AJRecordViewController.h"
#import "AJMineViewController.h"
@interface AJTabBarController ()<UITabBarDelegate>
@property(nonatomic, strong)AJClockViewController *AJClockVC;
@property(nonatomic, strong)AJRecordViewController *AJRecordVC;
@property(nonatomic, strong)AJMineViewController *AJMineVC;
@end

@implementation AJTabBarController

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
+ (AJTabBarController *)AJshareInstance{
    static AJTabBarController *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[AJTabBarController allocWithZone:NULL] init];
    });
    return client;
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self AJsetContentView];
}
- (void)AJsetContentView{
    self.AJClockVC = [AJClockViewController AJshareInstance];
    UINavigationController *AJClock = [[UINavigationController alloc] initWithRootViewController:self.AJClockVC];
    self.AJClockVC.tabBarItem.title = NSLocalizedString(@"打卡", nil);
    [self.AJClockVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.AJClockVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.AJClockVC.tabBarItem.image = [[UIImage imageNamed:@"AJTab_Clock_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.AJClockVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"AJTab_Clock_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    self.AJRecordVC = [[AJRecordViewController alloc] init];
    UINavigationController *AJRecord = [[UINavigationController alloc] initWithRootViewController:self.AJRecordVC];
    self.AJRecordVC.tabBarItem.title = NSLocalizedString(@"记录", nil);
    [self.AJRecordVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.AJRecordVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.AJRecordVC.tabBarItem.image = [[UIImage imageNamed:@"AJTab_Record_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.AJRecordVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"AJTab_Record_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];

    self.AJMineVC = [[AJMineViewController alloc] init];
    UINavigationController *AJMine = [[UINavigationController alloc] initWithRootViewController:self.AJMineVC];
    self.AJMineVC.tabBarItem.title = NSLocalizedString(@"我的", nil);
    [self.AJMineVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.AJMineVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.AJMineVC.tabBarItem.image = [[UIImage imageNamed:@"AJTab_Mine_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.AJMineVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"AJTab_Mine_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    NSArray *arrControllers = [NSArray arrayWithObjects:AJClock,AJRecord,AJMine, nil];
    self.viewControllers = arrControllers;
    [[UITabBarItem appearance] setTitlePositionAdjustment:UIOffsetMake(0, -4)];
}
@end
