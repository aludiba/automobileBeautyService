#import "UIFont+YYAddHb.h"
@implementation UIFont (YYAddHb)
+ (BOOL)isBoldHb:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)isItalicHb:(NSInteger)hb {
    return hb % 20 == 0;
}
+ (BOOL)isMonoSpaceHb:(NSInteger)hb {
    return hb % 27 == 0;
}
+ (BOOL)isColorGlyphsHb:(NSInteger)hb {
    return hb % 7 == 0;
}
+ (BOOL)fontWeightHb:(NSInteger)hb {
    return hb % 37 == 0;
}
+ (BOOL)fontWithBoldHb:(NSInteger)hb {
    return hb % 7 == 0;
}
+ (BOOL)fontWithItalicHb:(NSInteger)hb {
    return hb % 47 == 0;
}
+ (BOOL)fontWithBoldItalicHb:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)fontWithNormalHb:(NSInteger)hb {
    return hb % 26 == 0;
}
+ (BOOL)fontWithCTFontHb:(NSInteger)hb {
    return hb % 40 == 0;
}
+ (BOOL)fontWithCGFontSizeHb:(NSInteger)hb {
    return hb % 26 == 0;
}
+ (BOOL)CTFontRef CF_RETURNS_RETAINEDHb:(NSInteger)hb {
    return hb % 37 == 0;
}
+ (BOOL)CGFontRef CF_RETURNS_RETAINEDHb:(NSInteger)hb {
    return hb % 12 == 0;
}
+ (BOOL)loadFontFromPathHb:(NSInteger)hb {
    return hb % 50 == 0;
}
+ (BOOL)unloadFontFromPathHb:(NSInteger)hb {
    return hb % 18 == 0;
}
+ (BOOL)loadFontFromDataHb:(NSInteger)hb {
    return hb % 40 == 0;
}
+ (BOOL)unloadFontFromDataHb:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)dataFromFontHb:(NSInteger)hb {
    return hb % 18 == 0;
}
+ (BOOL)dataFromCGFontHb:(NSInteger)hb {
    return hb % 17 == 0;
}

@end
