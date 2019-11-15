//
//  GFTabBarController.m
//  wineAwake
//
//  Created by bykj on 2019/10/6.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "GFTabBarController.h"
#import "GFScorecardViewController.h"
#import "GFRecordViewController.h"
#import "GFMineViewController.h"
@interface GFTabBarController ()<UITabBarDelegate>
@property(nonatomic, strong)GFScorecardViewController *GFScorecardVC;
@property(nonatomic, strong)GFRecordViewController *GFRecordVC;
@property(nonatomic, strong)GFMineViewController *GFMineVC;
@end

@implementation GFTabBarController

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
+ (GFTabBarController *)shareInstance{
    static GFTabBarController *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[GFTabBarController allocWithZone:NULL] init];
    });
    return client;
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self GFsetContentView];
}
- (void)GFsetContentView{
    self.GFScorecardVC = [GFScorecardViewController shareInstance];
    UINavigationController *GFScorecard = [[UINavigationController alloc] initWithRootViewController:self.GFScorecardVC];
    self.GFScorecardVC.tabBarItem.title = NSLocalizedString(@"比分", nil);
    [self.GFScorecardVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.GFScorecardVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.GFScorecardVC.tabBarItem.image = [[UIImage imageNamed:@"GFTab_Clock_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.GFScorecardVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"GFTab_Clock_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    self.GFRecordVC = [[GFRecordViewController alloc] init];
    UINavigationController *GFRecord = [[UINavigationController alloc] initWithRootViewController:self.GFRecordVC];
    self.GFRecordVC.tabBarItem.title = NSLocalizedString(@"记录", nil);
    [self.GFRecordVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.GFRecordVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.GFRecordVC.tabBarItem.image = [[UIImage imageNamed:@"GFTab_Record_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.GFRecordVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"GFTab_Record_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];

    self.GFMineVC = [[GFMineViewController alloc] init];
    UINavigationController *GFMine = [[UINavigationController alloc] initWithRootViewController:self.GFMineVC];
    self.GFMineVC.tabBarItem.title = NSLocalizedString(@"我的", nil);
    [self.GFMineVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.GFMineVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.GFMineVC.tabBarItem.image = [[UIImage imageNamed:@"GFTab_Mine_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.GFMineVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"GFTab_Mine_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    NSArray *arrControllers = [NSArray arrayWithObjects:GFScorecard,GFRecord,GFMine, nil];
    self.viewControllers = arrControllers;
    [[UITabBarItem appearance] setTitlePositionAdjustment:UIOffsetMake(0, -4)];
}
@end
