//
//  AFTabBarController.m
//  wineAwake
//
//  Created by bykj on 2019/10/6.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "AFTabBarController.h"
#import "AFClockViewController.h"
#import "AFRecordViewController.h"
#import "AFMineViewController.h"
@interface AFTabBarController ()<UITabBarDelegate>
@property(nonatomic, strong)AFClockViewController *AFClockVC;
@property(nonatomic, strong)AFRecordViewController *AFRecordVC;
@property(nonatomic, strong)AFMineViewController *AFMineVC;
@end

@implementation AFTabBarController

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
+ (AFTabBarController *)AFshareInstance{
    static AFTabBarController *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[AFTabBarController allocWithZone:NULL] init];
    });
    return client;
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self AFsetContentView];
}
- (void)AFsetContentView{
    self.AFClockVC = [AFClockViewController AFshareInstance];
    UINavigationController *AFClock = [[UINavigationController alloc] initWithRootViewController:self.AFClockVC];
    self.AFClockVC.tabBarItem.title = NSLocalizedString(@"打卡", nil);
    [self.AFClockVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.AFClockVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.AFClockVC.tabBarItem.image = [[UIImage imageNamed:@"AFTab_Clock_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.AFClockVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"AFTab_Clock_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    self.AFRecordVC = [[AFRecordViewController alloc] init];
    UINavigationController *AFRecord = [[UINavigationController alloc] initWithRootViewController:self.AFRecordVC];
    self.AFRecordVC.tabBarItem.title = NSLocalizedString(@"记录", nil);
    [self.AFRecordVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.AFRecordVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.AFRecordVC.tabBarItem.image = [[UIImage imageNamed:@"AFTab_Record_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.AFRecordVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"AFTab_Record_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];

    self.AFMineVC = [[AFMineViewController alloc] init];
    UINavigationController *AFMine = [[UINavigationController alloc] initWithRootViewController:self.AFMineVC];
    self.AFMineVC.tabBarItem.title = NSLocalizedString(@"我的", nil);
    [self.AFMineVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.AFMineVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.AFMineVC.tabBarItem.image = [[UIImage imageNamed:@"AFTab_Mine_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.AFMineVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"AFTab_Mine_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    NSArray *arrControllers = [NSArray arrayWithObjects:AFClock,AFRecord,AFMine, nil];
    self.viewControllers = arrControllers;
    [[UITabBarItem appearance] setTitlePositionAdjustment:UIOffsetMake(0, -4)];
}
@end
