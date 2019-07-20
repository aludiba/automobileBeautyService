//
//  SDTabBarController.m
//  Simple Diary
//
//  Created by bykj on 2019/7/20.
//  Copyright © 2019 hgg. All rights reserved.
//

#import "SDTabBarController.h"
#import "SDDiaryViewController.h"
#import "SDMineViewController.h"

@interface SDTabBarController ()<UITabBarDelegate>

@end
@implementation SDTabBarController
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
+ (SDTabBarController *)shareInstance{
    static SDTabBarController *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[SDTabBarController allocWithZone:NULL] init];
    });
    return client;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self setContentView];
}
- (void)setContentView{
    self.SDDiaryVC = [[SDDiaryViewController alloc] init];
    UINavigationController *diary = [[UINavigationController alloc] initWithRootViewController:self.SDDiaryVC];
    self.SDDiaryVC.tabBarItem.title = NSLocalizedString(@"日记", nil);
    self.SDDiaryVC.tabBarItem.image = [[UIImage imageNamed:@"tab_diary_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.SDDiaryVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"tab_diary_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [self.SDDiaryVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor blackColor]} forState:UIControlStateSelected];
    [self.SDDiaryVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor grayColor]} forState:UIControlStateNormal];

    self.SDMineVC = [[SDMineViewController alloc] init];
    UINavigationController *mine = [[UINavigationController alloc] initWithRootViewController:self.SDMineVC];
    self.SDMineVC.tabBarItem.title = NSLocalizedString(@"我的", nil);
    self.SDMineVC.tabBarItem.image = [[UIImage imageNamed:@"tab_mine_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.SDMineVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"tab_mine_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [self.SDMineVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor blackColor]} forState:UIControlStateSelected];
    [self.SDMineVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor grayColor]} forState:UIControlStateNormal];
    
    NSArray *arrControllers = [NSArray arrayWithObjects:diary,mine,nil];
    self.viewControllers = arrControllers;
    [[UITabBarItem appearance] setTitlePositionAdjustment:UIOffsetMake(0, -4)];
}
@end
