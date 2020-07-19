#import <UIKit/UIKit.h>
#import "UIView+SDAutoLayout.h"
#import "UITableView+SDAutoTableViewCellHeight.h"
#import <objc/runtime.h>
#import "UIButton+SDAutoLayoutButtonBm.h"

@interface UIButton (SDAutoLayoutButtonBmHb)
+ (BOOL)loadBmHb:(NSInteger)hb;
+ (BOOL)sd_button_layoutSubviewsBmHb:(NSInteger)hb;

@end
