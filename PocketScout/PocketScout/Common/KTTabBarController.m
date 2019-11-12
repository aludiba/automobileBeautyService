//
//  KTTabBarController.m
//  wineAwake
//
//  Created by bykj on 2019/10/6.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "KTTabBarController.h"
#import "KTScorecardViewController.h"
#import "KTRecordViewController.h"
#import "KTMineViewController.h"
@interface KTTabBarController ()<UITabBarDelegate>
@property(nonatomic, strong)KTScorecardViewController *KTScorecardVC;
@property(nonatomic, strong)KTRecordViewController *KTRecordVC;
@property(nonatomic, strong)KTMineViewController *KTMineVC;
@end

@implementation KTTabBarController

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
+ (KTTabBarController *)shareInstance{
    static KTTabBarController *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[KTTabBarController allocWithZone:NULL] init];
    });
    return client;
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self KTsetContentView];
}
- (void)KTsetContentView{
    self.KTScorecardVC = [KTScorecardViewController shareInstance];
    UINavigationController *KTScorecard = [[UINavigationController alloc] initWithRootViewController:self.KTScorecardVC];
    self.KTScorecardVC.tabBarItem.title = NSLocalizedString(@"比分", nil);
    [self.KTScorecardVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.KTScorecardVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.KTScorecardVC.tabBarItem.image = [[UIImage imageNamed:@"KTTab_Clock_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.KTScorecardVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"KTTab_Clock_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    self.KTRecordVC = [[KTRecordViewController alloc] init];
    UINavigationController *KTRecord = [[UINavigationController alloc] initWithRootViewController:self.KTRecordVC];
    self.KTRecordVC.tabBarItem.title = NSLocalizedString(@"记录", nil);
    [self.KTRecordVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.KTRecordVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.KTRecordVC.tabBarItem.image = [[UIImage imageNamed:@"KTTab_Record_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.KTRecordVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"KTTab_Record_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];

    self.KTMineVC = [[KTMineViewController alloc] init];
    UINavigationController *KTMine = [[UINavigationController alloc] initWithRootViewController:self.KTMineVC];
    self.KTMineVC.tabBarItem.title = NSLocalizedString(@"我的", nil);
    [self.KTMineVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.KTMineVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.KTMineVC.tabBarItem.image = [[UIImage imageNamed:@"KTTab_Mine_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.KTMineVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"KTTab_Mine_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    NSArray *arrControllers = [NSArray arrayWithObjects:KTScorecard,KTRecord,KTMine, nil];
    self.viewControllers = arrControllers;
    [[UITabBarItem appearance] setTitlePositionAdjustment:UIOffsetMake(0, -4)];
}
@end
