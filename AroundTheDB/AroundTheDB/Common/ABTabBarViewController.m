//
//  ABTabBarViewController.m
//  AroundTheDB
//
//  Created by bykj on 2019/8/14.
//  Copyright © 2019 hgg. All rights reserved.
//

#import "ABTabBarViewController.h"
#import "ABHistoryViewController.h"
#import "ABMeasurementViewController.h"
#import "ABSetViewController.h"
@interface ABTabBarViewController ()<UITabBarDelegate>
@property(nonatomic, strong)ABHistoryViewController *ABHistoryVC;
@property(nonatomic, strong)ABMeasurementViewController *ABMeasurementVC;
@property(nonatomic, strong)ABSetViewController *ABSetVC;
@end

@implementation ABTabBarViewController
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
+ (ABTabBarViewController *)shareInstance{
    static ABTabBarViewController *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[ABTabBarViewController allocWithZone:NULL] init];
    });
    return client;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    [[UITabBar appearance] setBarTintColor:ABH_Color(32, 36, 53, 1)];
    [UITabBar appearance].translucent = NO;
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self setContentView];
}
- (void)setContentView{
    self.ABHistoryVC = [[ABHistoryViewController alloc] init];
    UINavigationController *history = [[UINavigationController alloc] initWithRootViewController:self.ABHistoryVC];
    self.ABHistoryVC.tabBarItem.image = [[UIImage imageNamed:@"ad_history_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.ABHistoryVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"ad_history_hlight"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    self.ABMeasurementVC = [[ABMeasurementViewController alloc] init];
    UINavigationController *measurement = [[UINavigationController alloc] initWithRootViewController:self.ABMeasurementVC];
    self.ABMeasurementVC.tabBarItem.image = [[UIImage imageNamed:@"ad_test_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.ABMeasurementVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"ad_test_hlight"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    self.ABSetVC = [[ABSetViewController alloc] init];
    UINavigationController *set = [[UINavigationController alloc] initWithRootViewController:self.ABSetVC];
    self.ABSetVC.tabBarItem.image = [[UIImage imageNamed:@"ad_set_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.ABSetVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"ad_set_hlight"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    NSArray *arrControllers = [NSArray arrayWithObjects:history,measurement,set,nil];
    self.viewControllers = arrControllers;
    [[UITabBarItem appearance] setTitlePositionAdjustment:UIOffsetMake(0, -4)];
}
@end
