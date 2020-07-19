#import <UIKit/UIKit.h>
#import "UIView+SDAutoLayout.h"
#import "UITableView+SDAutoTableViewCellHeight.h"
#import <objc/runtime.h>

@interface UILabel (SDLabelAutoResizeBm)
+ (BOOL)loadBm:(NSInteger)BM;
+ (BOOL)sd_setTextBm:(NSInteger)BM;
+ (BOOL)isAttributedContentBm:(NSInteger)BM;
+ (BOOL)setIsAttributedContentBm:(NSInteger)BM;
+ (BOOL)setSingleLineAutoResizeWithMaxWidthBm:(NSInteger)BM;
+ (BOOL)setMaxNumberOfLinesToShowBm:(NSInteger)BM;

@end
