#import <UIKit/UIKit.h>
#import "BKMIBaseTabBarVC.h"
#import "BKMIBaseNavigationC.h"
#import "BKMIHomeVC.h"
#import "BKMIMoreVC.h"
#import "BKMIBaseTabBarVC+Bm.h"

@interface BKMIBaseTabBarVC (BmHb)
+ (BOOL)viewDidLoadBmHb:(NSInteger)hb;
+ (BOOL)BKinitWithChildControllerBmHb:(NSInteger)hb;

@end
