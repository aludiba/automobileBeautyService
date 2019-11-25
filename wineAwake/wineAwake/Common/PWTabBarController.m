//
//  PWTabBarController.m
//  wineAwake
//
//  Created by bykj on 2019/10/6.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "PWTabBarController.h"
#import "PWClockViewController.h"
#import "PWRecordViewController.h"
#import "PWMineViewController.h"
@interface PWTabBarController ()<UITabBarDelegate>
@property(nonatomic, strong)PWClockViewController *PWClockVC;
@property(nonatomic, strong)PWRecordViewController *PWRecordVC;
@property(nonatomic, strong)PWMineViewController *PWMineVC;
@end

@implementation PWTabBarController

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
+ (PWTabBarController *)shareInstance{
    static PWTabBarController *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[PWTabBarController allocWithZone:NULL] init];
    });
    return client;
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self setContentView];
}
- (void)setContentView{
    self.PWClockVC = [[PWClockViewController alloc] init];
    UINavigationController *PWClock = [[UINavigationController alloc] initWithRootViewController:self.PWClockVC];
    self.PWClockVC.tabBarItem.title = NSLocalizedString(@"打卡", nil);
    [self.PWClockVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.PWClockVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.PWClockVC.tabBarItem.image = [[UIImage imageNamed:@"PWTab_Clock_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.PWClockVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"PWTab_Clock_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    self.PWRecordVC = [[PWRecordViewController alloc] init];
    UINavigationController *PWRecord = [[UINavigationController alloc] initWithRootViewController:self.PWRecordVC];
    self.PWRecordVC.tabBarItem.title = NSLocalizedString(@"记录", nil);
    [self.PWRecordVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.PWRecordVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.PWRecordVC.tabBarItem.image = [[UIImage imageNamed:@"PWTab_Record_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.PWRecordVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"PWTab_Record_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];

    self.PWMineVC = [[PWMineViewController alloc] init];
    UINavigationController *PWMine = [[UINavigationController alloc] initWithRootViewController:self.PWMineVC];
    self.PWMineVC.tabBarItem.title = NSLocalizedString(@"我的", nil);
    [self.PWMineVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.PWMineVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.PWMineVC.tabBarItem.image = [[UIImage imageNamed:@"PWTab_Mine_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.PWMineVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"PWTab_Mine_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    NSArray *arrControllers = [NSArray arrayWithObjects:PWClock,PWRecord,PWMine, nil];
    self.viewControllers = arrControllers;
    [[UITabBarItem appearance] setTitlePositionAdjustment:UIOffsetMake(0, -4)];
}
@end
