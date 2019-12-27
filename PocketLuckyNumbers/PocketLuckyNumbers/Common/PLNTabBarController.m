//
//  PLNTabBarController.m
//  wineAwake
//
//  Created by bykj on 2019/10/6.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "PLNTabBarController.h"
#import "PLNLuckyNumbersViewController.h"
#import "PLNRecordViewController.h"
#import "PLNSetViewController.h"
@interface PLNTabBarController ()<UITabBarDelegate>
@property(nonatomic, strong)PLNLuckyNumbersViewController *PLNScorecardVC;
@property(nonatomic, strong)PLNRecordViewController *PLNRecordVC;
@property(nonatomic, strong)PLNSetViewController *PLNMineVC;
@end

@implementation PLNTabBarController

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
+ (PLNTabBarController *)shareInstance{
    static PLNTabBarController *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[PLNTabBarController allocWithZone:NULL] init];
    });
    return client;
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self PLNsetContentView];
}
- (void)PLNsetContentView{
    self.PLNScorecardVC = [PLNLuckyNumbersViewController shareInstance];
    UINavigationController *PLNScorecard = [[UINavigationController alloc] initWithRootViewController:self.PLNScorecardVC];
    self.PLNScorecardVC.tabBarItem.title = NSLocalizedString(@"幸运数字", nil);
    [self.PLNScorecardVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.PLNScorecardVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.PLNScorecardVC.tabBarItem.image = [[UIImage imageNamed:@"PLNTab_Clock_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.PLNScorecardVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"PLNTab_Clock_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    self.PLNRecordVC = [[PLNRecordViewController alloc] init];
    UINavigationController *PLNRecord = [[UINavigationController alloc] initWithRootViewController:self.PLNRecordVC];
    self.PLNRecordVC.tabBarItem.title = NSLocalizedString(@"幸运记录", nil);
    [self.PLNRecordVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.PLNRecordVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.PLNRecordVC.tabBarItem.image = [[UIImage imageNamed:@"PLNTab_Record_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.PLNRecordVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"PLNTab_Record_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];

    self.PLNMineVC = [[PLNSetViewController alloc] init];
    UINavigationController *PLNMine = [[UINavigationController alloc] initWithRootViewController:self.PLNMineVC];
    self.PLNMineVC.tabBarItem.title = NSLocalizedString(@"幸运设置", nil);
    [self.PLNMineVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.PLNMineVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.PLNMineVC.tabBarItem.image = [[UIImage imageNamed:@"PLNTab_Mine_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.PLNMineVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"PLNTab_Mine_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    NSArray *arrControllers = [NSArray arrayWithObjects:PLNScorecard,PLNRecord,PLNMine, nil];
    self.viewControllers = arrControllers;
    [[UITabBarItem appearance] setTitlePositionAdjustment:UIOffsetMake(0, -4)];
}
@end
