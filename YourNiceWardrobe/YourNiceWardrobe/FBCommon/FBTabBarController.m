//
//  FBTabBarController.m
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/2.
//  Copyright © 2020 hb. all rights reserved.
//

#import "FBTabBarController.h"
#import "FBWardrobeViewController.h"
#import "FBDressUpViewController.h"
#import "FBDailyViewController.h"
#import "FBMineViewController.h"

@interface FBTabBarController ()<UITabBarDelegate>
@property(nonatomic, strong)FBWardrobeViewController *FBWardrobeVC;
@property(nonatomic, strong)FBDressUpViewController *FBDressUpVC;
@property(nonatomic, strong)FBDailyViewController *FBDailyVC;
@property(nonatomic, strong)FBMineViewController *FBMineVC;
@end

@implementation FBTabBarController

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
+ (FBTabBarController *)FBshareInstance{
    static FBTabBarController *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[FBTabBarController allocWithZone:NULL] init];
    });
    return client;
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self FBsetContentView];
}
- (void)FBsetContentView{
    self.FBWardrobeVC = [[FBWardrobeViewController alloc] init];
    UINavigationController *FBWardrobe = [[UINavigationController alloc] initWithRootViewController:self.FBWardrobeVC];
    self.FBWardrobeVC.tabBarItem.title = NSLocalizedString(@"衣柜", nil);
    [self.FBWardrobeVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.FBWardrobeVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.FBWardrobeVC.tabBarItem.image = [[UIImage imageNamed:@"FBtab_wardrobe_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.FBWardrobeVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"FBtab_wardrobe_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    self.FBDressUpVC = [[FBDressUpViewController alloc] init];
    UINavigationController *FBDressUpVC = [[UINavigationController alloc] initWithRootViewController:self.FBDressUpVC];
    self.FBDressUpVC.tabBarItem.title = NSLocalizedString(@"打扮", nil);
    [self.FBDressUpVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.FBDressUpVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.FBDressUpVC.tabBarItem.image = [[UIImage imageNamed:@"FBtab_dressup_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.FBDressUpVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"FBtab_dressup_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    self.FBDailyVC = [[FBDailyViewController alloc] init];
    UINavigationController *FBDailyVC = [[UINavigationController alloc] initWithRootViewController:self.FBDailyVC];
    self.FBDailyVC.tabBarItem.title = NSLocalizedString(@"日常", nil);
    [self.FBDailyVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.FBDailyVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.FBDailyVC.tabBarItem.image = [[UIImage imageNamed:@"FBtab_daily_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.FBDailyVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"FBtab_daily_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    self.FBMineVC = [[FBMineViewController alloc] init];
    UINavigationController *FBMineVC = [[UINavigationController alloc] initWithRootViewController:self.FBMineVC];
    self.FBMineVC.tabBarItem.title = NSLocalizedString(@"我的", nil);
    [self.FBMineVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.FBMineVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.FBMineVC.tabBarItem.image = [[UIImage imageNamed:@"FBtab_mine_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.FBMineVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"FBtab_mine_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    NSArray *arrControllers = [NSArray arrayWithObjects:FBWardrobe,FBDressUpVC,FBDailyVC,FBMineVC, nil];
    self.viewControllers = arrControllers;
    [[UITabBarItem appearance] setTitlePositionAdjustment:UIOffsetMake(0, -4)];
}
@end
