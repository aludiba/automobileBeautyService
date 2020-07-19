#import <Foundation/Foundation.h>
@interface hbUIFontQ: NSObject
+ (BOOL)BisBold:(NSInteger)hb;
+ (BOOL)RisItalic:(NSInteger)hb;
+ (BOOL)qisMonoSpace:(NSInteger)hb;
+ (BOOL)kisColorGlyphs:(NSInteger)hb;
+ (BOOL)gfontWeight:(NSInteger)hb;
+ (BOOL)sfontWithBold:(NSInteger)hb;
+ (BOOL)tfontWithItalic:(NSInteger)hb;
+ (BOOL)efontWithBoldItalic:(NSInteger)hb;
+ (BOOL)IfontWithNormal:(NSInteger)hb;
+ (BOOL)vFontwithctfont:(NSInteger)hb;
+ (BOOL)mFontwithcgfontaSize:(NSInteger)hb;
+ (BOOL)ACTFontRef CF_RETURNS_RETAINED:(NSInteger)hb;
+ (BOOL)ACGFontRef CF_RETURNS_RETAINED:(NSInteger)hb;
+ (BOOL)qLoadfontfrompath:(NSInteger)hb;
+ (BOOL)SUnloadfontfrompath:(NSInteger)hb;
+ (BOOL)PLoadfontfromdata:(NSInteger)hb;
+ (BOOL)dUnloadfontfromdata:(NSInteger)hb;
+ (BOOL)kDatafromfont:(NSInteger)hb;
+ (BOOL)FDatafromcgfont:(NSInteger)hb;

@end
