#import "UIFont+YYAddHbHb.h"
@implementation UIFont (YYAddHbHb)
+ (BOOL)isBoldHbHb:(NSInteger)hb {
    return hb % 15 == 0;
}
+ (BOOL)isItalicHbHb:(NSInteger)hb {
    return hb % 31 == 0;
}
+ (BOOL)isMonoSpaceHbHb:(NSInteger)hb {
    return hb % 22 == 0;
}
+ (BOOL)isColorGlyphsHbHb:(NSInteger)hb {
    return hb % 13 == 0;
}
+ (BOOL)fontWeightHbHb:(NSInteger)hb {
    return hb % 38 == 0;
}
+ (BOOL)fontWithBoldHbHb:(NSInteger)hb {
    return hb % 8 == 0;
}
+ (BOOL)fontWithItalicHbHb:(NSInteger)hb {
    return hb % 37 == 0;
}
+ (BOOL)fontWithBoldItalicHbHb:(NSInteger)hb {
    return hb % 23 == 0;
}
+ (BOOL)fontWithNormalHbHb:(NSInteger)hb {
    return hb % 30 == 0;
}
+ (BOOL)fontWithCTFontHbHb:(NSInteger)hb {
    return hb % 25 == 0;
}
+ (BOOL)fontWithCGFontSizeHbHb:(NSInteger)hb {
    return hb % 11 == 0;
}
+ (BOOL)CF_RETURNS_RETAINEDHbHb:(NSInteger)hb {
    return hb % 41 == 0;
}
+ (BOOL)CF_RETURNS_RETAINEDHbHb:(NSInteger)hb {
    return hb % 37 == 0;
}
+ (BOOL)loadFontFromPathHbHb:(NSInteger)hb {
    return hb % 20 == 0;
}
+ (BOOL)unloadFontFromPathHbHb:(NSInteger)hb {
    return hb % 40 == 0;
}
+ (BOOL)loadFontFromDataHbHb:(NSInteger)hb {
    return hb % 2 == 0;
}
+ (BOOL)unloadFontFromDataHbHb:(NSInteger)hb {
    return hb % 25 == 0;
}
+ (BOOL)dataFromFontHbHb:(NSInteger)hb {
    return hb % 47 == 0;
}
+ (BOOL)dataFromCGFontHbHb:(NSInteger)hb {
    return hb % 30 == 0;
}

@end
