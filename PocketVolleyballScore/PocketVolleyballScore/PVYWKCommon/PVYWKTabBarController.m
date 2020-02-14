//
//  PVYWKTabBarController.m
//  wineAwake
//
//  Created by bykj on 2019/10/6.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "PVYWKTabBarController.h"
#import "PVYWKScorecardViewController.h"
#import "PVYWKRecordViewController.h"
#import "PVYWKMineViewController.h"
@interface PVYWKTabBarController ()<UITabBarDelegate>
@property(nonatomic, strong)PVYWKScorecardViewController *PVYWKScorecardVC;
@property(nonatomic, strong)PVYWKRecordViewController *PVYWKRecordVC;
@property(nonatomic, strong)PVYWKMineViewController *PVYWKMineVC;
@end

@implementation PVYWKTabBarController

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
+ (PVYWKTabBarController *)shareInstance{
    static PVYWKTabBarController *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[PVYWKTabBarController allocWithZone:NULL] init];
    });
    return client;
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self PVYWKsetContentView];
}
- (void)PVYWKsetContentView{
    self.PVYWKScorecardVC = [PVYWKScorecardViewController shareInstance];
    UINavigationController *PVYWKScorecard = [[UINavigationController alloc] initWithRootViewController:self.PVYWKScorecardVC];
    self.PVYWKScorecardVC.tabBarItem.title = NSLocalizedString(@"比分", nil);
    [self.PVYWKScorecardVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.PVYWKScorecardVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.PVYWKScorecardVC.tabBarItem.image = [[UIImage imageNamed:@"PVYWKTab_Clock_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.PVYWKScorecardVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"PVYWKTab_Clock_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    self.PVYWKRecordVC = [[PVYWKRecordViewController alloc] init];
    UINavigationController *PVYWKRecord = [[UINavigationController alloc] initWithRootViewController:self.PVYWKRecordVC];
    self.PVYWKRecordVC.tabBarItem.title = NSLocalizedString(@"记录", nil);
    [self.PVYWKRecordVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.PVYWKRecordVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.PVYWKRecordVC.tabBarItem.image = [[UIImage imageNamed:@"PVYWKTab_Record_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.PVYWKRecordVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"PVYWKTab_Record_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];

    self.PVYWKMineVC = [[PVYWKMineViewController alloc] init];
    UINavigationController *PVYWKMine = [[UINavigationController alloc] initWithRootViewController:self.PVYWKMineVC];
    self.PVYWKMineVC.tabBarItem.title = NSLocalizedString(@"我的", nil);
    [self.PVYWKMineVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.PVYWKMineVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.PVYWKMineVC.tabBarItem.image = [[UIImage imageNamed:@"PVYWKTab_Mine_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.PVYWKMineVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"PVYWKTab_Mine_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    NSArray *arrControllers = [NSArray arrayWithObjects:PVYWKScorecard,PVYWKRecord,PVYWKMine, nil];
    self.viewControllers = arrControllers;
    [[UITabBarItem appearance] setTitlePositionAdjustment:UIOffsetMake(0, -4)];
}
@end
