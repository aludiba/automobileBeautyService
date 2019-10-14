//
//  QSTabBarController.m
//  wineAwake
//
//  Created by bykj on 2019/10/6.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "QSTabBarController.h"
//#import "QSClockViewController.h"
//#import "QSRecordViewController.h"
//#import "QSMineViewController.h"
@interface QSTabBarController ()<UITabBarDelegate>
//@property(nonatomic, strong)QSClockViewController *QSClockVC;
//@property(nonatomic, strong)QSRecordViewController *QSRecordVC;
//@property(nonatomic, strong)QSMineViewController *QSMineVC;
@end

@implementation QSTabBarController

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
+ (QSTabBarController *)shareInstance{
    static QSTabBarController *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[QSTabBarController allocWithZone:NULL] init];
    });
    return client;
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self setContentView];
}
- (void)setContentView{
//    self.QSClockVC = [[QSClockViewController alloc] init];
//    UINavigationController *QSClock = [[UINavigationController alloc] initWithRootViewController:self.QSClockVC];
//    self.QSClockVC.tabBarItem.title = NSLocalizedString(@"打卡", nil);
//    [self.QSClockVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
//    [self.QSClockVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
//    self.QSClockVC.tabBarItem.image = [[UIImage imageNamed:@"QSTab_Clock_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
//    self.QSClockVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"QSTab_Clock_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
//    
//    self.QSRecordVC = [[QSRecordViewController alloc] init];
//    UINavigationController *QSRecord = [[UINavigationController alloc] initWithRootViewController:self.QSRecordVC];
//    self.QSRecordVC.tabBarItem.title = NSLocalizedString(@"记录", nil);
//    [self.QSRecordVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
//    [self.QSRecordVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
//    self.QSRecordVC.tabBarItem.image = [[UIImage imageNamed:@"QSTab_Record_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
//    self.QSRecordVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"QSTab_Record_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
//
//    self.QSMineVC = [[QSMineViewController alloc] init];
//    UINavigationController *QSMine = [[UINavigationController alloc] initWithRootViewController:self.QSMineVC];
//    self.QSMineVC.tabBarItem.title = NSLocalizedString(@"我的", nil);
//    [self.QSMineVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
//    [self.QSMineVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
//    self.QSMineVC.tabBarItem.image = [[UIImage imageNamed:@"QSTab_Mine_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
//    self.QSMineVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"QSTab_Mine_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
//    
//    NSArray *arrControllers = [NSArray arrayWithObjects:QSClock,QSRecord,QSMine, nil];
//    self.viewControllers = arrControllers;
//    [[UITabBarItem appearance] setTitlePositionAdjustment:UIOffsetMake(0, -4)];
}
@end
