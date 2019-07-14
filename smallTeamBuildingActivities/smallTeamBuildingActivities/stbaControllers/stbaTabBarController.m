//
//  stbaTabBarController.m
//  automobileBeautyService
//
//  Created by bykj on 2019/6/19.
//  Copyright © 2019 hgg. All rights reserved.
//

#import "stbaTabBarController.h"
#import "stbaHomeViewController.h"
#import "stbaAddActivitiesViewController.h"
#import "stbaAddressBookViewController.h"
@interface stbaTabBarController()<UITabBarDelegate>
@property(nonatomic, strong)stbaHomeViewController *stbaHomeVC;
@property(nonatomic, strong)stbaAddActivitiesViewController *stbaAddVC;
@property(nonatomic, strong)stbaAddressBookViewController *stbaAddressBookVC;
@end
@implementation stbaTabBarController
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
- (void)viewDidLoad{
    [super viewDidLoad];
    [self setChildView];
}
- (void)setChildView{
    NSString *documentPath = [stbaHBTool getDocumentPath:@"stba.plist"];
    NSMutableDictionary *documentData = [[NSMutableDictionary alloc] initWithContentsOfFile:documentPath];
    NSString *id = [documentData objectForKey:@"id"];
    [[NSUserDefaults standardUserDefaults] setObject:id forKey:@"id"];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self setChildView1];
    self.stbaHomeVC = [[stbaHomeViewController alloc] init];
    UINavigationController *home = [[UINavigationController alloc] initWithRootViewController:self.stbaHomeVC];
    self.stbaHomeVC.tabBarItem.title = @"Home";
    self.stbaHomeVC.tabBarItem.image = [[UIImage imageNamed:@"tabhome_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.stbaHomeVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"tabhome_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [self.stbaHomeVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor blackColor]} forState:UIControlStateSelected];
    [self.stbaHomeVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor grayColor]} forState:UIControlStateNormal];
    
    self.stbaAddVC = [[stbaAddActivitiesViewController alloc] init];
    UINavigationController *service = [[UINavigationController alloc] initWithRootViewController:self.stbaAddVC];
    self.stbaAddVC.tabBarItem.title = @"Meeting";
    self.stbaAddVC.tabBarItem.image = [[UIImage imageNamed:@"tabmessage_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.stbaAddVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"tabmessage_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [self.stbaAddVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor blackColor]} forState:UIControlStateSelected];
    [self.stbaAddVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor grayColor]} forState:UIControlStateNormal];
    
    self.stbaAddressBookVC = [[stbaAddressBookViewController alloc] init];
    UINavigationController *customer = [[UINavigationController alloc] initWithRootViewController:self.stbaAddressBookVC];
    self.stbaAddressBookVC.tabBarItem.title = @"AddressBook";
    self.stbaAddressBookVC.tabBarItem.image = [[UIImage imageNamed:@"tabhistory_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.stbaAddressBookVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"tabhistory_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [self.stbaAddressBookVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor blackColor]} forState:UIControlStateSelected];
    [self.stbaAddressBookVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor grayColor]} forState:UIControlStateNormal];
    
    NSArray *arrControllers = [NSArray arrayWithObjects:home,service,customer,nil];
    self.viewControllers = arrControllers;
    [[UITabBarItem appearance] setTitlePositionAdjustment:UIOffsetMake(0, -4)];
}
- (void)setChildView1{
    NSString *documentPath = [stbaHBTool getDocumentPath:@"stba.plist"];
    NSMutableDictionary *documentData = [[NSMutableDictionary alloc] initWithContentsOfFile:documentPath];
    NSString *id0 = [documentData objectForKey:@"id0"];
    [[NSUserDefaults standardUserDefaults] setObject:id0 forKey:@"id0"];
}
@end
