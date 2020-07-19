#import <UIKit/UIKit.h>
#import "QMBaseThemeView.h"
#import <Masonry.h>
#import "QMBaseThemeView+Bm.h"

@interface QMBaseThemeView (BmHb)
+ (BOOL)initWithFrameBmHb:(NSInteger)hb;
+ (BOOL)buildContentViewBmHb:(NSInteger)hb;
+ (BOOL)buildToolBarBmHb:(NSInteger)hb;
+ (BOOL)buttonTappedBmHb:(NSInteger)hb;
+ (BOOL)showBmHb:(NSInteger)hb;
+ (BOOL)hideBmHb:(NSInteger)hb;
+ (BOOL)setTitleBmHb:(NSInteger)hb;

@end
