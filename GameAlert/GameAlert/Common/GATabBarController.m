//
//  GATabBarController.m
//  wineAwake
//
//  Created by bykj on 2019/10/6.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "GATabBarController.h"
#import "GAClockViewController.h"
#import "GARecordViewController.h"
#import "GAMineViewController.h"
@interface GATabBarController ()<UITabBarDelegate>
@property(nonatomic, strong)GAClockViewController *GAClockVC;
@property(nonatomic, strong)GARecordViewController *GARecordVC;
@property(nonatomic, strong)GAMineViewController *GAMineVC;
@end

@implementation GATabBarController

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
+ (GATabBarController *)shareInstance{
    static GATabBarController *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[GATabBarController allocWithZone:NULL] init];
    });
    return client;
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self setContentView];
}
- (void)setContentView{
    self.GAClockVC = [[GAClockViewController alloc] init];
    UINavigationController *GAClock = [[UINavigationController alloc] initWithRootViewController:self.GAClockVC];
    self.GAClockVC.tabBarItem.title = NSLocalizedString(@"打卡", nil);
    [self.GAClockVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.GAClockVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.GAClockVC.tabBarItem.image = [[UIImage imageNamed:@"GATab_Clock_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.GAClockVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"GATab_Clock_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    self.GARecordVC = [[GARecordViewController alloc] init];
    UINavigationController *GARecord = [[UINavigationController alloc] initWithRootViewController:self.GARecordVC];
    self.GARecordVC.tabBarItem.title = NSLocalizedString(@"记录", nil);
    [self.GARecordVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.GARecordVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.GARecordVC.tabBarItem.image = [[UIImage imageNamed:@"GATab_Record_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.GARecordVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"GATab_Record_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];

    self.GAMineVC = [[GAMineViewController alloc] init];
    UINavigationController *GAMine = [[UINavigationController alloc] initWithRootViewController:self.GAMineVC];
    self.GAMineVC.tabBarItem.title = NSLocalizedString(@"我的", nil);
    [self.GAMineVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.GAMineVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.GAMineVC.tabBarItem.image = [[UIImage imageNamed:@"GATab_Mine_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.GAMineVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"GATab_Mine_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    NSArray *arrControllers = [NSArray arrayWithObjects:GAClock,GARecord,GAMine, nil];
    self.viewControllers = arrControllers;
    [[UITabBarItem appearance] setTitlePositionAdjustment:UIOffsetMake(0, -4)];
}
@end
