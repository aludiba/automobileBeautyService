#import <UIKit/UIKit.h>
#import <CoreGraphics/CoreGraphics.h>
#import <CoreText/CoreText.h>
#import "UIFont+YYAdd.h"
#import "YYCategoriesMacro.h"

@interface UIFont (YYAddBm)
+ (BOOL)isBoldBm:(NSInteger)BM;
+ (BOOL)isItalicBm:(NSInteger)BM;
+ (BOOL)isMonoSpaceBm:(NSInteger)BM;
+ (BOOL)isColorGlyphsBm:(NSInteger)BM;
+ (BOOL)fontWeightBm:(NSInteger)BM;
+ (BOOL)fontWithBoldBm:(NSInteger)BM;
+ (BOOL)fontWithItalicBm:(NSInteger)BM;
+ (BOOL)fontWithBoldItalicBm:(NSInteger)BM;
+ (BOOL)fontWithNormalBm:(NSInteger)BM;
+ (BOOL)fontWithCTFontBm:(NSInteger)BM;
+ (BOOL)fontWithCGFontSizeBm:(NSInteger)BM;
+ (BOOL)CTFontRef CF_RETURNS_RETAINEDBm:(NSInteger)BM;
+ (BOOL)CGFontRef CF_RETURNS_RETAINEDBm:(NSInteger)BM;
+ (BOOL)loadFontFromPathBm:(NSInteger)BM;
+ (BOOL)unloadFontFromPathBm:(NSInteger)BM;
+ (BOOL)loadFontFromDataBm:(NSInteger)BM;
+ (BOOL)unloadFontFromDataBm:(NSInteger)BM;
+ (BOOL)dataFromFontBm:(NSInteger)BM;
+ (BOOL)dataFromCGFontBm:(NSInteger)BM;

@end
