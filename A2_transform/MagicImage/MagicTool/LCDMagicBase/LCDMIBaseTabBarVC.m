#import "LCDMIBaseTabBarVC.h"
#import "LCDMIBaseNavigationC.h"
#import "LCDMIHomeVC.h"
#import "LCDMIMoreVC.h"
@interface LCDMIBaseTabBarVC ()
@property(strong,nonatomic)NSMutableArray *LCDchildArray;
@property(strong,nonatomic)NSMutableArray *LCDtabBarButtonArray;
@end
@implementation LCDMIBaseTabBarVC
- (void)viewDidLoad {
    [super viewDidLoad];
    self.tabBar.backgroundColor = [UIColor whiteColor];
    self.LCDchildArray=[NSMutableArray array];
    self.LCDtabBarButtonArray=[NSMutableArray array];
    for (UIView *LCDtabBarButton in self.tabBar.subviews){
        if ([LCDtabBarButton isKindOfClass:NSClassFromString(@"UITabBarButton")]){
            [self.LCDtabBarButtonArray addObject:LCDtabBarButton];
        }
    }
    [self LCDinitWithChildController];
}
- (void)LCDinitWithChildController{
    LCDMIHomeVC * LCDhomeVC = [[LCDMIHomeVC alloc] init];
    [LCDhomeVC.tabBarItem setTitle:@"Home"];
    [LCDhomeVC.tabBarItem setImage:[UIImage imageNamed:@"LCDHome"]];
    [LCDhomeVC.tabBarItem setSelectedImage:[[UIImage imageNamed:@"LCDHome_s"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    LCDMIBaseNavigationC  *LCDhomeNV = [[LCDMIBaseNavigationC alloc] initWithRootViewController:LCDhomeVC];
    [LCDhomeNV.tabBarItem setTitlePositionAdjustment:UIOffsetMake(0, -3)];
    [self.LCDchildArray addObject:LCDhomeNV];
    
    LCDMIMoreVC * LCDmoreVC = [[LCDMIMoreVC alloc] init];
    [LCDmoreVC.tabBarItem setTitle:@"More"];
    [LCDmoreVC.tabBarItem setImage:[UIImage imageNamed:@"LCDMore"]];
    [LCDmoreVC.tabBarItem setSelectedImage:[[UIImage imageNamed:@"LCDMore_s"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    LCDMIBaseNavigationC *LCDmoreNV = [[LCDMIBaseNavigationC alloc] initWithRootViewController:LCDmoreVC];
    [LCDmoreNV.tabBarItem setTitlePositionAdjustment:UIOffsetMake(0, -3)];
    [self.LCDchildArray addObject:LCDmoreNV];
    [self setViewControllers:self.LCDchildArray];
}
@end
