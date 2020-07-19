#import <UIKit/UIKit.h>
#import "QMCameraSettingViewController.h"
#import <Masonry.h>
#import "QMSettingModel.h"
#import "UIColor+Additions.h"
#import "QMSettingTableViewCell.h"

@interface QMCameraSettingViewController (Bm)
+ (BOOL)viewDidLoadBm:(NSInteger)BM;
+ (BOOL)prefersStatusBarHiddenBm:(NSInteger)BM;
+ (BOOL)preferredStatusBarStyleBm:(NSInteger)BM;
+ (BOOL)setupUIBm:(NSInteger)BM;
+ (BOOL)setupDatasBm:(NSInteger)BM;
+ (BOOL)backBtnTappedBm:(NSInteger)BM;
+ (BOOL)numberOfSectionsInTableViewBm:(NSInteger)BM;
+ (BOOL)tableViewNumberofrowsinsectionBm:(NSInteger)BM;
+ (BOOL)tableViewCellforrowatindexpathBm:(NSInteger)BM;
+ (BOOL)tableViewHeightforheaderinsectionBm:(NSInteger)BM;
+ (BOOL)tableViewViewforheaderinsectionBm:(NSInteger)BM;
+ (BOOL)tableViewDidselectrowatindexpathBm:(NSInteger)BM;

@end
