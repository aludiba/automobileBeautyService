//
//  ZLTabBarController.m
//  wineAwake
//
//  Created by bykj on 2019/10/6.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "ZLTabBarController.h"
#import "ZLScorecardViewController.h"
#import "ZLRecordViewController.h"
#import "ZLMineViewController.h"
@interface ZLTabBarController ()<UITabBarDelegate>
@property(nonatomic, strong)ZLScorecardViewController *ZLScorecardVC;
@property(nonatomic, strong)ZLRecordViewController *ZLRecordVC;
@property(nonatomic, strong)ZLMineViewController *ZLMineVC;
@end

@implementation ZLTabBarController

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
+ (ZLTabBarController *)shareInstance{
    static ZLTabBarController *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[ZLTabBarController allocWithZone:NULL] init];
    });
    return client;
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self ZLsetContentView];
}
- (void)ZLsetContentView{
    self.ZLScorecardVC = [ZLScorecardViewController shareInstance];
    UINavigationController *ZLScorecard = [[UINavigationController alloc] initWithRootViewController:self.ZLScorecardVC];
    self.ZLScorecardVC.tabBarItem.title = NSLocalizedString(@"比分", nil);
    [self.ZLScorecardVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.ZLScorecardVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.ZLScorecardVC.tabBarItem.image = [[UIImage imageNamed:@"ZLTab_Clock_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.ZLScorecardVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"ZLTab_Clock_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    self.ZLRecordVC = [[ZLRecordViewController alloc] init];
    UINavigationController *ZLRecord = [[UINavigationController alloc] initWithRootViewController:self.ZLRecordVC];
    self.ZLRecordVC.tabBarItem.title = NSLocalizedString(@"记录", nil);
    [self.ZLRecordVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.ZLRecordVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.ZLRecordVC.tabBarItem.image = [[UIImage imageNamed:@"ZLTab_Record_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.ZLRecordVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"ZLTab_Record_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];

    self.ZLMineVC = [[ZLMineViewController alloc] init];
    UINavigationController *ZLMine = [[UINavigationController alloc] initWithRootViewController:self.ZLMineVC];
    self.ZLMineVC.tabBarItem.title = NSLocalizedString(@"我的", nil);
    [self.ZLMineVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.ZLMineVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.ZLMineVC.tabBarItem.image = [[UIImage imageNamed:@"ZLTab_Mine_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.ZLMineVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"ZLTab_Mine_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    NSArray *arrControllers = [NSArray arrayWithObjects:ZLScorecard,ZLRecord,ZLMine, nil];
    self.viewControllers = arrControllers;
    [[UITabBarItem appearance] setTitlePositionAdjustment:UIOffsetMake(0, -4)];
}
@end
