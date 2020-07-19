#import <UIKit/UIKit.h>
#import "QMCameraFocusView.h"
#import "Constants.h"
#import "QMCustomSlider.h"
#import "QMCameraFocusView+Bm.h"

@interface QMCameraFocusView (BmHb)
+ (BOOL)focusViewBmHb:(NSInteger)hb;
+ (BOOL)initWithFrameBmHb:(NSInteger)hb;
+ (BOOL)renderBmHb:(NSInteger)hb;
+ (BOOL)setISOBmHb:(NSInteger)hb;
+ (BOOL)foucusAtPointBmHb:(NSInteger)hb;
+ (BOOL)hideFoucusViewBmHb:(NSInteger)hb;
+ (BOOL)luminanceViewBmHb:(NSInteger)hb;

@end
