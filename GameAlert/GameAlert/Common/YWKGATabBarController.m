//
//  YWKGATabBarController.m
//  wineAwake
//
//  Created by bykj on 2019/10/6.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "YWKGATabBarController.h"
#import "YWKGAClockViewController.h"
#import "YWKGARecordViewController.h"
#import "YWKGAMineViewController.h"
@interface YWKGATabBarController ()<UITabBarDelegate>
@property(nonatomic, strong)YWKGAClockViewController *YWKGAClockVC;
@property(nonatomic, strong)YWKGARecordViewController *YWKGARecordVC;
@property(nonatomic, strong)YWKGAMineViewController *YWKGAMineVC;
@end

@implementation YWKGATabBarController

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
+ (YWKGATabBarController *)shareInstance{
    static YWKGATabBarController *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[YWKGATabBarController allocWithZone:NULL] init];
    });
    return client;
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self setContentView];
}
- (void)setContentView{
    self.YWKGAClockVC = [[YWKGAClockViewController alloc] init];
    UINavigationController *YWKGAClock = [[UINavigationController alloc] initWithRootViewController:self.YWKGAClockVC];
    self.YWKGAClockVC.tabBarItem.title = NSLocalizedString(@"打卡", nil);
    [self.YWKGAClockVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.YWKGAClockVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.YWKGAClockVC.tabBarItem.image = [[UIImage imageNamed:@"YWKGATab_Clock_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.YWKGAClockVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"YWKGATab_Clock_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    self.YWKGARecordVC = [[YWKGARecordViewController alloc] init];
    UINavigationController *YWKGARecord = [[UINavigationController alloc] initWithRootViewController:self.YWKGARecordVC];
    self.YWKGARecordVC.tabBarItem.title = NSLocalizedString(@"记录", nil);
    [self.YWKGARecordVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.YWKGARecordVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.YWKGARecordVC.tabBarItem.image = [[UIImage imageNamed:@"YWKGATab_Record_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.YWKGARecordVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"YWKGATab_Record_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];

    self.YWKGAMineVC = [[YWKGAMineViewController alloc] init];
    UINavigationController *YWKGAMine = [[UINavigationController alloc] initWithRootViewController:self.YWKGAMineVC];
    self.YWKGAMineVC.tabBarItem.title = NSLocalizedString(@"我的", nil);
    [self.YWKGAMineVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.YWKGAMineVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.YWKGAMineVC.tabBarItem.image = [[UIImage imageNamed:@"YWKGATab_Mine_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.YWKGAMineVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"YWKGATab_Mine_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    NSArray *arrControllers = [NSArray arrayWithObjects:YWKGAClock,YWKGARecord,YWKGAMine, nil];
    self.viewControllers = arrControllers;
    [[UITabBarItem appearance] setTitlePositionAdjustment:UIOffsetMake(0, -4)];
}
@end
