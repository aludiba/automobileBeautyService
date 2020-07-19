#import "BKMIBaseTabBarVC.h"
#import "BKMIBaseNavigationC.h"
#import "BKMIHomeVC.h"
#import "BKMIMoreVC.h"
@interface BKMIBaseTabBarVC ()
@property(strong,nonatomic)NSMutableArray *BKchildArray;
@property(strong,nonatomic)NSMutableArray *BKtabBarButtonArray;
@end
@implementation BKMIBaseTabBarVC
- (void)viewDidLoad {
    [super viewDidLoad];
    self.tabBar.backgroundColor=[UIColor whiteColor];
    self.BKchildArray=[NSMutableArray array];
    self.BKtabBarButtonArray=[NSMutableArray array];
    for (UIView *BKtabBarButton in self.tabBar.subviews){
        if ([BKtabBarButton isKindOfClass:NSClassFromString(@"UITabBarButton")]){
            [self.BKtabBarButtonArray addObject:BKtabBarButton];
        }
    }
    [self BKinitWithChildController];
}
- (void)BKinitWithChildController{
    BKMIHomeVC * BKhomeVC = [[BKMIHomeVC alloc] init];
    [BKhomeVC.tabBarItem setTitle:@"Home"];
    [BKhomeVC.tabBarItem setImage:[UIImage imageNamed:@"PEHome"]];
    [BKhomeVC.tabBarItem setSelectedImage:[[UIImage imageNamed:@"PEHome_s"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    BKMIBaseNavigationC  *BKhomeNV = [[BKMIBaseNavigationC alloc] initWithRootViewController:BKhomeVC];
    [BKhomeNV.tabBarItem setTitlePositionAdjustment:UIOffsetMake(0, -3)];
    [self.BKchildArray addObject:BKhomeNV];
    BKMIMoreVC * BKmoreVC = [[BKMIMoreVC alloc] init];
    [BKmoreVC.tabBarItem setTitle:@"More"];
    [BKmoreVC.tabBarItem setImage:[UIImage imageNamed:@"PEMore"]];
    [BKmoreVC.tabBarItem setSelectedImage:[[UIImage imageNamed:@"PEMore_s"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    BKMIBaseNavigationC *BKmoreNV = [[BKMIBaseNavigationC alloc] initWithRootViewController:BKmoreVC];
    [BKmoreNV.tabBarItem setTitlePositionAdjustment:UIOffsetMake(0, -3)];
    [self.BKchildArray addObject:BKmoreNV];
    [self setViewControllers:self.BKchildArray];
}
@end
