//
//  CBSTabBarController.m
//  wineAwake
//
//  Created by bykj on 2019/10/6.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "CBSTabBarController.h"
#import "CBSScorecardViewController.h"
#import "CBSRecordViewController.h"
#import "CBSMineViewController.h"
@interface CBSTabBarController ()<UITabBarDelegate>
@property(nonatomic, strong)CBSScorecardViewController *CBSScorecardVC;
@property(nonatomic, strong)CBSRecordViewController *CBSRecordVC;
@property(nonatomic, strong)CBSMineViewController *CBSMineVC;
@end

@implementation CBSTabBarController

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
+ (CBSTabBarController *)shareInstance{
    static CBSTabBarController *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[CBSTabBarController allocWithZone:NULL] init];
    });
    return client;
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self CBSsetContentView];
}
- (void)CBSsetContentView{
    self.CBSScorecardVC = [CBSScorecardViewController shareInstance];
    UINavigationController *CBSScorecard = [[UINavigationController alloc] initWithRootViewController:self.CBSScorecardVC];
    self.CBSScorecardVC.tabBarItem.title = NSLocalizedString(@"比分", nil);
    [self.CBSScorecardVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.CBSScorecardVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.CBSScorecardVC.tabBarItem.image = [[UIImage imageNamed:@"CBSTab_Clock_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.CBSScorecardVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"CBSTab_Clock_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    self.CBSRecordVC = [[CBSRecordViewController alloc] init];
    UINavigationController *CBSRecord = [[UINavigationController alloc] initWithRootViewController:self.CBSRecordVC];
    self.CBSRecordVC.tabBarItem.title = NSLocalizedString(@"记录", nil);
    [self.CBSRecordVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.CBSRecordVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.CBSRecordVC.tabBarItem.image = [[UIImage imageNamed:@"CBSTab_Record_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.CBSRecordVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"CBSTab_Record_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];

    self.CBSMineVC = [[CBSMineViewController alloc] init];
    UINavigationController *CBSMine = [[UINavigationController alloc] initWithRootViewController:self.CBSMineVC];
    self.CBSMineVC.tabBarItem.title = NSLocalizedString(@"我的", nil);
    [self.CBSMineVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.CBSMineVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.CBSMineVC.tabBarItem.image = [[UIImage imageNamed:@"CBSTab_Mine_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.CBSMineVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"CBSTab_Mine_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    NSArray *arrControllers = [NSArray arrayWithObjects:CBSScorecard,CBSRecord,CBSMine, nil];
    self.viewControllers = arrControllers;
    [[UITabBarItem appearance] setTitlePositionAdjustment:UIOffsetMake(0, -4)];
}
@end
