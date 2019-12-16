//
//  CFTabBarController.m
//  wineAwake
//
//  Created by bykj on 2019/10/6.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "CFTabBarController.h"
#import "CFScorecardViewController.h"
#import "CFRecordViewController.h"
#import "CFMineViewController.h"
@interface CFTabBarController ()<UITabBarDelegate>
@property(nonatomic, strong)CFScorecardViewController *CFScorecardVC;
@property(nonatomic, strong)CFRecordViewController *CFRecordVC;
@property(nonatomic, strong)CFMineViewController *CFMineVC;
@end

@implementation CFTabBarController

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
+ (CFTabBarController *)shareInstance{
    static CFTabBarController *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[CFTabBarController allocWithZone:NULL] init];
    });
    return client;
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self CFsetContentView];
}
- (void)CFsetContentView{
    self.CFScorecardVC = [CFScorecardViewController shareInstance];
    UINavigationController *CFScorecard = [[UINavigationController alloc] initWithRootViewController:self.CFScorecardVC];
    self.CFScorecardVC.tabBarItem.title = NSLocalizedString(@"比分", nil);
    [self.CFScorecardVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.CFScorecardVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.CFScorecardVC.tabBarItem.image = [[UIImage imageNamed:@"CFTab_Clock_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.CFScorecardVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"CFTab_Clock_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    self.CFRecordVC = [[CFRecordViewController alloc] init];
    UINavigationController *CFRecord = [[UINavigationController alloc] initWithRootViewController:self.CFRecordVC];
    self.CFRecordVC.tabBarItem.title = NSLocalizedString(@"记录", nil);
    [self.CFRecordVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.CFRecordVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.CFRecordVC.tabBarItem.image = [[UIImage imageNamed:@"CFTab_Record_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.CFRecordVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"CFTab_Record_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];

    self.CFMineVC = [[CFMineViewController alloc] init];
    UINavigationController *CFMine = [[UINavigationController alloc] initWithRootViewController:self.CFMineVC];
    self.CFMineVC.tabBarItem.title = NSLocalizedString(@"我的", nil);
    [self.CFMineVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.CFMineVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.CFMineVC.tabBarItem.image = [[UIImage imageNamed:@"CFTab_Mine_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.CFMineVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"CFTab_Mine_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    NSArray *arrControllers = [NSArray arrayWithObjects:CFScorecard,CFRecord,CFMine, nil];
    self.viewControllers = arrControllers;
    [[UITabBarItem appearance] setTitlePositionAdjustment:UIOffsetMake(0, -4)];
}
@end
