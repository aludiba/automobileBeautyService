//
//  PBTabBarController.m
//  wineAwake
//
//  Created by bykj on 2019/10/6.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "PBTabBarController.h"
#import "PBRecordViewController.h"
#import "PBMineViewController.h"
@interface PBTabBarController ()<UITabBarDelegate>
@property(nonatomic, strong)PBScorecardViewController *PBScorecardVC;
@property(nonatomic, strong)PBRecordViewController *PBRecordVC;
@property(nonatomic, strong)PBMineViewController *PBMineVC;
@end

@implementation PBTabBarController

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
+ (PBTabBarController *)shareInstance{
    static PBTabBarController *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[PBTabBarController allocWithZone:NULL] init];
    });
    return client;
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self setContentView];
}
- (void)setContentView{
    self.PBScorecardVC = [PBScorecardViewController shareInstance];
    UINavigationController *PBScorecard = [[UINavigationController alloc] initWithRootViewController:self.PBScorecardVC];
    self.PBScorecardVC.tabBarItem.title = NSLocalizedString(@"比分", nil);
    [self.PBScorecardVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.PBScorecardVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.PBScorecardVC.tabBarItem.image = [[UIImage imageNamed:@"PBTab_Clock_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.PBScorecardVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"PBTab_Clock_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    self.PBRecordVC = [[PBRecordViewController alloc] init];
    UINavigationController *PBRecord = [[UINavigationController alloc] initWithRootViewController:self.PBRecordVC];
    self.PBRecordVC.tabBarItem.title = NSLocalizedString(@"记录", nil);
    [self.PBRecordVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.PBRecordVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.PBRecordVC.tabBarItem.image = [[UIImage imageNamed:@"PBTab_Record_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.PBRecordVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"PBTab_Record_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];

    self.PBMineVC = [[PBMineViewController alloc] init];
    UINavigationController *PBMine = [[UINavigationController alloc] initWithRootViewController:self.PBMineVC];
    self.PBMineVC.tabBarItem.title = NSLocalizedString(@"我的", nil);
    [self.PBMineVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.PBMineVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.PBMineVC.tabBarItem.image = [[UIImage imageNamed:@"PBTab_Mine_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.PBMineVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"PBTab_Mine_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    NSArray *arrControllers = [NSArray arrayWithObjects:PBScorecard,PBRecord,PBMine, nil];
    self.viewControllers = arrControllers;
    [[UITabBarItem appearance] setTitlePositionAdjustment:UIOffsetMake(0, -4)];
}
@end
