//
//  PKTPKBarViewController.m
//  AroundTheDB
//
//  Created by bykj on 2019/8/14.
//  Copyright © 2019 hgg. All rights reserved.
//

#import "PKTabBarViewController.h"
//#import "PKHistoryViewController.h"
//#import "PKMeasurementViewController.h"
//#import "PKSetViewController.h"
@interface PKTabBarViewController ()<UITabBarDelegate>
//@property(nonatomic, strong)PKHistoryViewController *PKHistoryVC;
//@property(nonatomic, strong)PKMeasurementViewController *PKMeasurementVC;
//@property(nonatomic, strong)PKSetViewController *PKSetVC;
@end

@implementation PKTabBarViewController
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
+ (PKTabBarViewController *)shareInstance{
    static PKTabBarViewController *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[PKTabBarViewController allocWithZone:NULL] init];
    });
    return client;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    [UITabBar appearance].translucent = NO;
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self setContentView];
}
- (void)setContentView{
//    self.PKHistoryVC = [[PKHistoryViewController alloc] init];
//    UINavigationController *history = [[UINavigationController alloc] initWithRootViewController:self.PKHistoryVC];
//    self.PKHistoryVC.tPKBarItem.image = [[UIImage imageNamed:@"ad_history_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
//    self.PKHistoryVC.tPKBarItem.selectedImage = [[UIImage imageNamed:@"ad_history_hlight"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
//
//    self.PKMeasurementVC = [[PKMeasurementViewController alloc] init];
//    UINavigationController *measurement = [[UINavigationController alloc] initWithRootViewController:self.PKMeasurementVC];
//    self.PKMeasurementVC.tPKBarItem.image = [[UIImage imageNamed:@"ad_test_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
//    self.PKMeasurementVC.tPKBarItem.selectedImage = [[UIImage imageNamed:@"ad_test_hlight"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
//
//    self.PKSetVC = [[PKSetViewController alloc] init];
//    UINavigationController *set = [[UINavigationController alloc] initWithRootViewController:self.PKSetVC];
//    self.PKSetVC.tPKBarItem.image = [[UIImage imageNamed:@"ad_set_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
//    self.PKSetVC.tPKBarItem.selectedImage = [[UIImage imageNamed:@"ad_set_hlight"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
//    NSArray *arrControllers = [NSArray arrayWithObjects:history,measurement,set,nil];
//    self.viewControllers = arrControllers;
//    [[UITPKBarItem appearance] setTitlePositionAdjustment:UIOffsetMake(0, -4)];
}
@end
