#import <UIKit/UIKit.h>
#import "BKQMBaseThemeView.h"
@interface BKQMFilterThemeSilder : BKQMBaseThemeView
@property (nonatomic, strong) void(^BKsliderValueChangeBlock)(NSInteger index, float value);
- (instancetype)init;
- (void)BKshowWithValue:(float)value;
@end
