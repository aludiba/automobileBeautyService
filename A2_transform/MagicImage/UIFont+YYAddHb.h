#import <UIKit/UIKit.h>
#import <CoreGraphics/CoreGraphics.h>
#import <CoreText/CoreText.h>
#import "UIFont+YYAdd.h"
#import "YYCategoriesMacro.h"

@interface UIFont (YYAddHb)
+ (BOOL)isBoldHb:(NSInteger)hb;
+ (BOOL)isItalicHb:(NSInteger)hb;
+ (BOOL)isMonoSpaceHb:(NSInteger)hb;
+ (BOOL)isColorGlyphsHb:(NSInteger)hb;
+ (BOOL)fontWeightHb:(NSInteger)hb;
+ (BOOL)fontWithBoldHb:(NSInteger)hb;
+ (BOOL)fontWithItalicHb:(NSInteger)hb;
+ (BOOL)fontWithBoldItalicHb:(NSInteger)hb;
+ (BOOL)fontWithNormalHb:(NSInteger)hb;
+ (BOOL)fontWithCTFontHb:(NSInteger)hb;
+ (BOOL)fontWithCGFontSizeHb:(NSInteger)hb;
+ (BOOL)CTFontRef CF_RETURNS_RETAINEDHb:(NSInteger)hb;
+ (BOOL)CGFontRef CF_RETURNS_RETAINEDHb:(NSInteger)hb;
+ (BOOL)loadFontFromPathHb:(NSInteger)hb;
+ (BOOL)unloadFontFromPathHb:(NSInteger)hb;
+ (BOOL)loadFontFromDataHb:(NSInteger)hb;
+ (BOOL)unloadFontFromDataHb:(NSInteger)hb;
+ (BOOL)dataFromFontHb:(NSInteger)hb;
+ (BOOL)dataFromCGFontHb:(NSInteger)hb;

@end
