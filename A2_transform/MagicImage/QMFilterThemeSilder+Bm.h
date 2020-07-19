#import <UIKit/UIKit.h>
#import "QMBaseThemeView.h"
#import "QMFilterThemeSilder.h"
#import <Masonry.h>

@interface QMFilterThemeSilder (Bm)
+ (BOOL)initBm:(NSInteger)BM;
+ (BOOL)initWithFrameBm:(NSInteger)BM;
+ (BOOL)buildOneSliderBm:(NSInteger)BM;
+ (BOOL)sliderValueChangeBm:(NSInteger)BM;
+ (BOOL)sliderTouchEndBm:(NSInteger)BM;
+ (BOOL)showWithValueBm:(NSInteger)BM;

@end
