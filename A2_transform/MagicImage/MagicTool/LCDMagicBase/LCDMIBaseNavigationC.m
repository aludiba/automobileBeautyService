#import "LCDMIBaseNavigationC.h"
@interface LCDMIBaseNavigationC ()
@end
@implementation LCDMIBaseNavigationC
- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationBar.translucent = NO;
}
- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
    if (self.childViewControllers.count) { 
        viewController.hidesBottomBarWhenPushed = YES;
        viewController.navigationController.navigationBar.hidden=NO;
        UIButton *LCDbtn  = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 30, 30)];
        [LCDbtn setImage:[UIImage imageNamed:@"LCDBack"] forState:UIControlStateNormal];
        viewController.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:LCDbtn];
        [LCDbtn addTarget:self action:@selector(LCDreturnCustom) forControlEvents:UIControlEventTouchUpInside];
        __weak typeof(viewController)Weakself = viewController;
        self.interactivePopGestureRecognizer.enabled = YES;
        self.interactivePopGestureRecognizer.delegate = (id)Weakself;
    }
    [super pushViewController:viewController animated:animated];
}
- (void)LCDreturnCustom{
    [self popViewControllerAnimated:YES];
}
@end
