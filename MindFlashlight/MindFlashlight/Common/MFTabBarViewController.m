//
//  MFTabBarViewController.m
//  MindFlashlight
//
//  Created by bykj on 2019/8/24.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "MFTabBarViewController.h"
#import "MFFlashlightViewController.h"
#import "MFFunctionViewController.h"
#import "MFSetViewController.h"
@interface MFTabBarViewController ()<UITabBarDelegate>
    @property(nonatomic, strong)MFFlashlightViewController *MFFlashlightVC;
    @property(nonatomic, strong)MFFunctionViewController *MFFunctionVC;
    @property(nonatomic, strong)MFSetViewController *MFSetVC;
@end

@implementation MFTabBarViewController
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
+ (MFTabBarViewController *)shareInstance{
    static MFTabBarViewController *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[MFTabBarViewController allocWithZone:NULL] init];
    });
    return client;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    [[UITabBar appearance] setBarTintColor:MFH_Color(32, 36, 53, 1)];
    [UITabBar appearance].translucent = NO;
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self setContentView];
}
- (void)setContentView{
    
}
@end
