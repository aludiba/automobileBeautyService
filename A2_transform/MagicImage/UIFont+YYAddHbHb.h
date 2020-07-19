#import <UIKit/UIKit.h>
#import <CoreGraphics/CoreGraphics.h>
#import <CoreText/CoreText.h>
#import "UIFont+YYAdd.h"
#import "YYCategoriesMacro.h"
#import "UIFont+YYAddHb.h"

@interface UIFont (YYAddHbHb)
+ (BOOL)isBoldHbHb:(NSInteger)hb;
+ (BOOL)isItalicHbHb:(NSInteger)hb;
+ (BOOL)isMonoSpaceHbHb:(NSInteger)hb;
+ (BOOL)isColorGlyphsHbHb:(NSInteger)hb;
+ (BOOL)fontWeightHbHb:(NSInteger)hb;
+ (BOOL)fontWithBoldHbHb:(NSInteger)hb;
+ (BOOL)fontWithItalicHbHb:(NSInteger)hb;
+ (BOOL)fontWithBoldItalicHbHb:(NSInteger)hb;
+ (BOOL)fontWithNormalHbHb:(NSInteger)hb;
+ (BOOL)fontWithCTFontHbHb:(NSInteger)hb;
+ (BOOL)fontWithCGFontSizeHbHb:(NSInteger)hb;
+ (BOOL)CF_RETURNS_RETAINEDHbHb:(NSInteger)hb;
+ (BOOL)CF_RETURNS_RETAINEDHbHb:(NSInteger)hb;
+ (BOOL)loadFontFromPathHbHb:(NSInteger)hb;
+ (BOOL)unloadFontFromPathHbHb:(NSInteger)hb;
+ (BOOL)loadFontFromDataHbHb:(NSInteger)hb;
+ (BOOL)unloadFontFromDataHbHb:(NSInteger)hb;
+ (BOOL)dataFromFontHbHb:(NSInteger)hb;
+ (BOOL)dataFromCGFontHbHb:(NSInteger)hb;

@end
