//
//  AKTabBarController.m
//  wineAwake
//
//  Created by bykj on 2019/10/6.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "AKTabBarController.h"
#import "AKClockViewController.h"
#import "AKRecordViewController.h"
#import "AKMineViewController.h"
@interface AKTabBarController ()<UITabBarDelegate>
@property(nonatomic, strong)AKClockViewController *AKClockVC;
@property(nonatomic, strong)AKRecordViewController *AKRecordVC;
@property(nonatomic, strong)AKMineViewController *AKMineVC;
@end

@implementation AKTabBarController

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
+ (AKTabBarController *)shareInstance{
    static AKTabBarController *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[AKTabBarController allocWithZone:NULL] init];
    });
    return client;
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self setContentView];
}
- (void)setContentView{
    self.AKClockVC = [[AKClockViewController alloc] init];
    UINavigationController *AKClock = [[UINavigationController alloc] initWithRootViewController:self.AKClockVC];
    self.AKClockVC.tabBarItem.title = NSLocalizedString(@"打卡", nil);
    [self.AKClockVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.AKClockVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.AKClockVC.tabBarItem.image = [[UIImage imageNamed:@"AKTab_Clock_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.AKClockVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"AKTab_Clock_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    self.AKRecordVC = [[AKRecordViewController alloc] init];
    UINavigationController *AKRecord = [[UINavigationController alloc] initWithRootViewController:self.AKRecordVC];
    self.AKRecordVC.tabBarItem.title = NSLocalizedString(@"记录", nil);
    [self.AKRecordVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.AKRecordVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.AKRecordVC.tabBarItem.image = [[UIImage imageNamed:@"AKTab_Record_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.AKRecordVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"AKTab_Record_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];

    self.AKMineVC = [[AKMineViewController alloc] init];
    UINavigationController *AKMine = [[UINavigationController alloc] initWithRootViewController:self.AKMineVC];
    self.AKMineVC.tabBarItem.title = NSLocalizedString(@"我的", nil);
    [self.AKMineVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00]} forState:UIControlStateSelected];
    [self.AKMineVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:0.66 green:0.67 blue:0.71 alpha:1.00]} forState:UIControlStateNormal];
    self.AKMineVC.tabBarItem.image = [[UIImage imageNamed:@"AKTab_Mine_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.AKMineVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"AKTab_Mine_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    NSArray *arrControllers = [NSArray arrayWithObjects:AKClock,AKRecord,AKMine, nil];
    self.viewControllers = arrControllers;
    [[UITabBarItem appearance] setTitlePositionAdjustment:UIOffsetMake(0, -4)];
}
@end
