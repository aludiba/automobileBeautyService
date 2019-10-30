//
//  PVTabBarController.m
//  wineAwake
//
//  Created by bykj on 2019/10/6.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "PVTabBarController.h"
#import "PVScorecardViewController.h"
#import "PVRecordViewController.h"
#import "PVMineViewController.h"
@interface PVTabBarController ()<UITabBarDelegate>
@property(nonatomic, strong)PVScorecardViewController *PVScorecardVC;
@property(nonatomic, strong)PVRecordViewController *PVRecordVC;
@property(nonatomic, strong)PVMineViewController *PVMineVC;
@end

@implementation PVTabBarController

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
+ (PVTabBarController *)shareInstance{
    static PVTabBarController *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[PVTabBarController allocWithZone:NULL] init];
    });
    return client;
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self PVsetContentView];
}
- (void)PVsetContentView{
    self.PVScorecardVC = [PVScorecardViewController shareInstance];
    UINavigationController *PVScorecard = [[UINavigationController alloc] initWithRootViewController:self.PVScorecardVC];
    self.PVScorecardVC.tabBarItem.title = NSLocalizedString(@"比分", nil);
    [self.PVScorecardVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.PVScorecardVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.PVScorecardVC.tabBarItem.image = [[UIImage imageNamed:@"PVTab_Clock_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.PVScorecardVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"PVTab_Clock_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    self.PVRecordVC = [[PVRecordViewController alloc] init];
    UINavigationController *PVRecord = [[UINavigationController alloc] initWithRootViewController:self.PVRecordVC];
    self.PVRecordVC.tabBarItem.title = NSLocalizedString(@"记录", nil);
    [self.PVRecordVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.PVRecordVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.PVRecordVC.tabBarItem.image = [[UIImage imageNamed:@"PVTab_Record_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.PVRecordVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"PVTab_Record_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];

    self.PVMineVC = [[PVMineViewController alloc] init];
    UINavigationController *PVMine = [[UINavigationController alloc] initWithRootViewController:self.PVMineVC];
    self.PVMineVC.tabBarItem.title = NSLocalizedString(@"我的", nil);
    [self.PVMineVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.PVMineVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.PVMineVC.tabBarItem.image = [[UIImage imageNamed:@"PVTab_Mine_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.PVMineVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"PVTab_Mine_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    NSArray *arrControllers = [NSArray arrayWithObjects:PVScorecard,PVRecord,PVMine, nil];
    self.viewControllers = arrControllers;
    [[UITabBarItem appearance] setTitlePositionAdjustment:UIOffsetMake(0, -4)];
}
@end
