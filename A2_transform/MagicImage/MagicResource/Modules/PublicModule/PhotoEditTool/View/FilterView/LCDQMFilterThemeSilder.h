#import <UIKit/UIKit.h>
#import "LCDQMBaseThemeView.h"
@interface LCDQMFilterThemeSilder : LCDQMBaseThemeView
@property (nonatomic, strong) void(^LCDsliderValueChangeBlock)(NSInteger index, float value);
- (instancetype)init;
- (void)LCDshowWithValue:(float)value;
@end
