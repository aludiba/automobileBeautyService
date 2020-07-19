#import "UIFont+YYAddBmBmBm.h"
@implementation UIFont (YYAddBmBmBm)
+ (BOOL)isBoldBmBmBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)isItalicBmBmBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)isMonoSpaceBmBmBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)isColorGlyphsBmBmBm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)fontWeightBmBmBm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)fontWithBoldBmBmBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)fontWithItalicBmBmBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)fontWithBoldItalicBmBmBm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)fontWithNormalBmBmBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)fontWithCTFontBmBmBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)fontWithCGFontSizeBmBmBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)CF_RETURNS_RETAINEDBmBmBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)CF_RETURNS_RETAINEDBmBmBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)loadFontFromPathBmBmBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)unloadFontFromPathBmBmBm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)loadFontFromDataBmBmBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)unloadFontFromDataBmBmBm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)dataFromFontBmBmBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)dataFromCGFontBmBmBm:(NSInteger)BM {
    return BM % 8 == 0;
}

@end
