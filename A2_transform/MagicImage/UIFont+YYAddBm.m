#import "UIFont+YYAddBm.h"
@implementation UIFont (YYAddBm)
+ (BOOL)isBoldBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)isItalicBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)isMonoSpaceBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)isColorGlyphsBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)fontWeightBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)fontWithBoldBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)fontWithItalicBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)fontWithBoldItalicBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)fontWithNormalBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)fontWithCTFontBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)fontWithCGFontSizeBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)CTFontRef CF_RETURNS_RETAINEDBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)CGFontRef CF_RETURNS_RETAINEDBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)loadFontFromPathBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)unloadFontFromPathBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)loadFontFromDataBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)unloadFontFromDataBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)dataFromFontBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)dataFromCGFontBm:(NSInteger)BM {
    return BM % 41 == 0;
}

@end
