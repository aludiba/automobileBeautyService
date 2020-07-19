#import <UIKit/UIKit.h>
#import "UIView+SDAutoLayout.h"
#import "UITableView+SDAutoTableViewCellHeight.h"
#import <objc/runtime.h>

@interface SDAutoLayoutModel (Bm)
+ (BOOL)leftSpaceToViewBm:(NSInteger)BM;
+ (BOOL)rightSpaceToViewBm:(NSInteger)BM;
+ (BOOL)topSpaceToViewBm:(NSInteger)BM;
+ (BOOL)bottomSpaceToViewBm:(NSInteger)BM;
+ (BOOL)marginToViewblockWithKeyBm:(NSInteger)BM;
+ (BOOL)widthIsBm:(NSInteger)BM;
+ (BOOL)heightIsBm:(NSInteger)BM;
+ (BOOL)widthRatioToViewBm:(NSInteger)BM;
+ (BOOL)heightRatioToViewBm:(NSInteger)BM;
+ (BOOL)maxWidthIsBm:(NSInteger)BM;
+ (BOOL)maxHeightIsBm:(NSInteger)BM;
+ (BOOL)minWidthIsBm:(NSInteger)BM;
+ (BOOL)minHeightIsBm:(NSInteger)BM;
+ (BOOL)limitingWidthHeightWithKeyBm:(NSInteger)BM;
+ (BOOL)marginEqualToViewBlockWithKeyBm:(NSInteger)BM;
+ (BOOL)leftEqualToViewBm:(NSInteger)BM;
+ (BOOL)rightEqualToViewBm:(NSInteger)BM;
+ (BOOL)topEqualToViewBm:(NSInteger)BM;
+ (BOOL)bottomEqualToViewBm:(NSInteger)BM;
+ (BOOL)centerXEqualToViewBm:(NSInteger)BM;
+ (BOOL)centerYEqualToViewBm:(NSInteger)BM;
+ (BOOL)marginBlockWithKeyBm:(NSInteger)BM;
+ (BOOL)xIsBm:(NSInteger)BM;
+ (BOOL)yIsBm:(NSInteger)BM;
+ (BOOL)centerXIsBm:(NSInteger)BM;
+ (BOOL)centerYIsBm:(NSInteger)BM;
+ (BOOL)autoHeightRatioBm:(NSInteger)BM;
+ (BOOL)autoWidthRatioBm:(NSInteger)BM;
+ (BOOL)spaceToSuperViewBm:(NSInteger)BM;
+ (BOOL)widthEqualToHeightBm:(NSInteger)BM;
+ (BOOL)heightEqualToWidthBm:(NSInteger)BM;
+ (BOOL)(CGFloat))offsetBm:(NSInteger)BM;

@end
