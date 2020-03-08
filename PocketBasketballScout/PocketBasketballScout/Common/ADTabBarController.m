//
//  ADTabBarController.m
//  wineAwake
//
//  Created by bykj on 2019/10/6.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "ADTabBarController.h"
#import "ADScorecardViewController.h"
#import "ADRecordViewController.h"
#import "ADMineViewController.h"
@interface ADTabBarController ()<UITabBarDelegate>
@property(nonatomic, strong)ADScorecardViewController *ADScorecardVC;
@property(nonatomic, strong)ADRecordViewController *ADRecordVC;
@property(nonatomic, strong)ADMineViewController *ADMineVC;
@end

@implementation ADTabBarController

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
+ (ADTabBarController *)shareInstance{
    static ADTabBarController *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[ADTabBarController allocWithZone:NULL] init];
    });
    return client;
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self ADsetContentView];
}
- (void)ADsetContentView{
    self.ADScorecardVC = [ADScorecardViewController shareInstance];
    UINavigationController *ADScorecard = [[UINavigationController alloc] initWithRootViewController:self.ADScorecardVC];
    self.ADScorecardVC.tabBarItem.title = @"Scoring";
    [self.ADScorecardVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.ADScorecardVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.ADScorecardVC.tabBarItem.image = [[UIImage imageNamed:@"ADTab_Clock_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.ADScorecardVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"ADTab_Clock_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    self.ADRecordVC = [[ADRecordViewController alloc] init];
    UINavigationController *ADRecord = [[UINavigationController alloc] initWithRootViewController:self.ADRecordVC];
    self.ADRecordVC.tabBarItem.title = @"Record";
    [self.ADRecordVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.ADRecordVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.ADRecordVC.tabBarItem.image = [[UIImage imageNamed:@"ADTab_Record_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.ADRecordVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"ADTab_Record_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];

    self.ADMineVC = [[ADMineViewController alloc] init];
    UINavigationController *ADMine = [[UINavigationController alloc] initWithRootViewController:self.ADMineVC];
    self.ADMineVC.tabBarItem.title = @"Mine";
    [self.ADMineVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.ADMineVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.ADMineVC.tabBarItem.image = [[UIImage imageNamed:@"ADTab_Mine_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.ADMineVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"ADTab_Mine_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    NSArray *arrControllers = [NSArray arrayWithObjects:ADScorecard,ADRecord,ADMine, nil];
    self.viewControllers = arrControllers;
    [[UITabBarItem appearance] setTitlePositionAdjustment:UIOffsetMake(0, -4)];
}
@end
