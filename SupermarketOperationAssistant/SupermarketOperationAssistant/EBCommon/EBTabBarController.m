//
//  EBTabBarController.m
//  超市运营助手
//
//  Created by 褚红彪 on 2020/5/9.
//  Copyright © 2020 hb. All rights reserved.
//

#import "EBTabBarController.h"
#import "EBPurchaseStatusViewController.h"
#import "EBProductInformationViewController.h"
#import "EBColleaguesViewController.h"
#import "EBSettingViewController.h"
@interface EBTabBarController ()<UITabBarDelegate>
@property(nonatomic, strong)EBPurchaseStatusViewController *EBPurchaseStatusVC;
@property(nonatomic, strong)EBProductInformationViewController *EBProductInformationVC;
@property(nonatomic, strong)EBColleaguesViewController *EBColleaguesVC;
@property(nonatomic, strong)EBSettingViewController *EBSettingVC;
@end

@implementation EBTabBarController

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
+ (EBTabBarController *)EBshareInstance{
    static EBTabBarController *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[EBTabBarController allocWithZone:NULL] init];
    });
    return client;
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self EBsetContentView];
}
- (void)EBsetContentView{
    self.EBPurchaseStatusVC = [[EBPurchaseStatusViewController alloc] init];
    UINavigationController *EBPurchaseStatus = [[UINavigationController alloc] initWithRootViewController:self.EBPurchaseStatusVC];
    self.EBPurchaseStatusVC.tabBarItem.title = NSLocalizedString(@"购买状态", nil);
    [self.EBPurchaseStatusVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.EBPurchaseStatusVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.EBPurchaseStatusVC.tabBarItem.image = [[UIImage imageNamed:@"EBtab_PurchaseStatus_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.EBPurchaseStatusVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"EBtab_PurchaseStatus_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    self.EBProductInformationVC = [[EBProductInformationViewController alloc] init];
    UINavigationController *EBProductInformationVC = [[UINavigationController alloc] initWithRootViewController:self.EBProductInformationVC];
    self.EBProductInformationVC.tabBarItem.title = NSLocalizedString(@"产品信息", nil);
    [self.EBProductInformationVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.EBProductInformationVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.EBProductInformationVC.tabBarItem.image = [[UIImage imageNamed:@"EBtab_ProductInformation_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.EBProductInformationVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"EBtab_ProductInformation_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    self.EBColleaguesVC = [[EBColleaguesViewController alloc] init];
    UINavigationController *EBColleaguesVC = [[UINavigationController alloc] initWithRootViewController:self.EBColleaguesVC];
    self.EBColleaguesVC.tabBarItem.title = NSLocalizedString(@"同事们", nil);
    [self.EBColleaguesVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.EBColleaguesVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.EBColleaguesVC.tabBarItem.image = [[UIImage imageNamed:@"EBtab_Colleagues_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.EBColleaguesVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"EBtab_Colleagues_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    self.EBSettingVC = [[EBSettingViewController alloc] init];
    UINavigationController *EBSettingVC = [[UINavigationController alloc] initWithRootViewController:self.EBSettingVC];
    self.EBSettingVC.tabBarItem.title = NSLocalizedString(@"设置", nil);
    [self.EBSettingVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.EBSettingVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.EBSettingVC.tabBarItem.image = [[UIImage imageNamed:@"EBtab_Setting_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.EBSettingVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"EBtab_Setting_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    NSArray *arrControllers = [NSArray arrayWithObjects:EBPurchaseStatus,EBProductInformationVC,EBColleaguesVC,EBSettingVC, nil];
    self.viewControllers = arrControllers;
    [[UITabBarItem appearance] setTitlePositionAdjustment:UIOffsetMake(0, -4)];
}
@end
