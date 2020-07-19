#import <UIKit/UIKit.h>
#import "TAPageControl.h"
#import "TAAbstractDotView.h"
#import "TAAnimatedDotView.h"
#import "TADotView.h"

@interface TAPageControl (Hb)
+ (BOOL)initHb:(NSInteger)hb;
+ (BOOL)initWithFrameHb:(NSInteger)hb;
+ (BOOL)initWithCoderHb:(NSInteger)hb;
+ (BOOL)initializationHb:(NSInteger)hb;
+ (BOOL)touchesBeganWitheventHb:(NSInteger)hb;
+ (BOOL)sizeToFitHb:(NSInteger)hb;
+ (BOOL)sizeForNumberOfPagesHb:(NSInteger)hb;
+ (BOOL)updateDotsHb:(NSInteger)hb;
+ (BOOL)updateFrameHb:(NSInteger)hb;
+ (BOOL)updateDotFrameAtindexHb:(NSInteger)hb;
+ (BOOL)generateDotViewHb:(NSInteger)hb;
+ (BOOL)changeActivityAtindexHb:(NSInteger)hb;
+ (BOOL)resetDotViewsHb:(NSInteger)hb;
+ (BOOL)hideForSinglePageHb:(NSInteger)hb;
+ (BOOL)setNumberOfPagesHb:(NSInteger)hb;
+ (BOOL)setSpacingBetweenDotsHb:(NSInteger)hb;
+ (BOOL)setCurrentPageHb:(NSInteger)hb;
+ (BOOL)setDotImageHb:(NSInteger)hb;
+ (BOOL)setCurrentDotImageHb:(NSInteger)hb;
+ (BOOL)setDotViewClassHb:(NSInteger)hb;
+ (BOOL)dotsHb:(NSInteger)hb;
+ (BOOL)dotSizeHb:(NSInteger)hb;

@end
