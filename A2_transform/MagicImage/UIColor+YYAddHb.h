#import <UIKit/UIKit.h>
#import "UIColor+YYAdd.h"
#import "NSString+YYAdd.h"
#import "YYCategoriesMacro.h"

@interface UIColor (YYAddHb)
+ (BOOL)colorWithHueSaturationLightnessAlphaHb:(NSInteger)hb;
+ (BOOL)colorWithCyanMagentaYellowBlackAlphaHb:(NSInteger)hb;
+ (BOOL)colorWithRGBHb:(NSInteger)hb;
+ (BOOL)colorWithRGBAHb:(NSInteger)hb;
+ (BOOL)colorWithRGBAlphaHb:(NSInteger)hb;
+ (BOOL)rgbValueHb:(NSInteger)hb;
+ (BOOL)rgbaValueHb:(NSInteger)hb;
+ (BOOL)colorWithHexStringHb:(NSInteger)hb;
+ (BOOL)hexStringHb:(NSInteger)hb;
+ (BOOL)hexStringWithAlphaHb:(NSInteger)hb;
+ (BOOL)hexStringWithAlphaHb:(NSInteger)hb;
+ (BOOL)colorByAddColorBlendmodeHb:(NSInteger)hb;
+ (BOOL)colorByChangeHueSaturationBrightnessAlphaHb:(NSInteger)hb;
+ (BOOL)getHueSaturationLightnessAlphaHb:(NSInteger)hb;
+ (BOOL)getCyanMagentaYellowBlackAlphaHb:(NSInteger)hb;
+ (BOOL)redHb:(NSInteger)hb;
+ (BOOL)greenHb:(NSInteger)hb;
+ (BOOL)blueHb:(NSInteger)hb;
+ (BOOL)alphaHb:(NSInteger)hb;
+ (BOOL)hueHb:(NSInteger)hb;
+ (BOOL)saturationHb:(NSInteger)hb;
+ (BOOL)brightnessHb:(NSInteger)hb;
+ (BOOL)colorSpaceModelHb:(NSInteger)hb;
+ (BOOL)colorSpaceStringHb:(NSInteger)hb;

@end
