#import <UIKit/UIKit.h>
#import "UIView+SDAutoLayout.h"
#import "UITableView+SDAutoTableViewCellHeight.h"
#import <objc/runtime.h>

@interface UIButton (SDAutoLayoutButtonBm)
+ (BOOL)loadBm:(NSInteger)BM;
+ (BOOL)sd_button_layoutSubviewsBm:(NSInteger)BM;

@end
