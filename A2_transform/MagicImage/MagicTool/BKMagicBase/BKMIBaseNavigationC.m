#import "BKMIBaseNavigationC.h"
@interface BKMIBaseNavigationC ()
@end
@implementation BKMIBaseNavigationC
- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationBar.translucent = NO;
}
- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
    if (self.childViewControllers.count) { 
        viewController.hidesBottomBarWhenPushed = YES;
        viewController.navigationController.navigationBar.hidden=NO;
        UIButton *BKbtn  = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 30, 30)];
        [BKbtn setImage:[UIImage imageNamed:@"PEBack"] forState:UIControlStateNormal];
        viewController.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:BKbtn];
        [BKbtn addTarget:self action:@selector(BKreturnCustom) forControlEvents:UIControlEventTouchUpInside];
        __weak typeof(viewController)Weakself = viewController;
        self.interactivePopGestureRecognizer.enabled = YES;
        self.interactivePopGestureRecognizer.delegate = (id)Weakself;
    }
    [super pushViewController:viewController animated:animated];
}
- (void)BKreturnCustom{
    [self popViewControllerAnimated:YES];
}
@end
