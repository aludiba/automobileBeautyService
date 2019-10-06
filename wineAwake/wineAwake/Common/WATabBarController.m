//
//  WATabBarController.m
//  wineAwake
//
//  Created by bykj on 2019/10/6.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "WATabBarController.h"
#import "WAClockViewController.h"
#import "WARecordViewController.h"
#import "WAMineViewController.h"
@interface WATabBarController ()<UITabBarDelegate>
@property(nonatomic, strong)WAClockViewController *WAClockVC;
@property(nonatomic, strong)WARecordViewController *WARecordVC;
@property(nonatomic, strong)WAMineViewController *WAMineVC;
@end

@implementation WATabBarController

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
+ (WATabBarController *)shareInstance{
    static WATabBarController *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[WATabBarController allocWithZone:NULL] init];
    });
    return client;
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self setContentView];
}
- (void)setContentView{
    self.WAClockVC = [[WAClockViewController alloc] init];
    UINavigationController *WAClock = [[UINavigationController alloc] initWithRootViewController:self.WAClockVC];
    self.WAClockVC.tabBarItem.title = NSLocalizedString(@"打卡", nil);
    [self.WAClockVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.WAClockVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.WAClockVC.tabBarItem.image = [[UIImage imageNamed:@"WATab_Clock_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.WAClockVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"WATab_Clock_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    self.WARecordVC = [[WARecordViewController alloc] init];
    UINavigationController *WARecord = [[UINavigationController alloc] initWithRootViewController:self.WARecordVC];
    self.WARecordVC.tabBarItem.title = NSLocalizedString(@"记录", nil);
    [self.WARecordVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.WARecordVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.WARecordVC.tabBarItem.image = [[UIImage imageNamed:@"WATab_Record_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.WARecordVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"WATab_Record_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];

    self.WAMineVC = [[WAMineViewController alloc] init];
    UINavigationController *WAMine = [[UINavigationController alloc] initWithRootViewController:self.WAMineVC];
    self.WAMineVC.tabBarItem.title = NSLocalizedString(@"我的", nil);
    [self.WAMineVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.WAMineVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.WAMineVC.tabBarItem.image = [[UIImage imageNamed:@"WATab_Mine_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.WAMineVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"WATab_Mine_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    NSArray *arrControllers = [NSArray arrayWithObjects:WAClock,WARecord,WAMine, nil];
    self.viewControllers = arrControllers;
    [[UITabBarItem appearance] setTitlePositionAdjustment:UIOffsetMake(0, -4)];
}
@end
