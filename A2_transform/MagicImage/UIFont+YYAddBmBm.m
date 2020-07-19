#import "UIFont+YYAddBmBm.h"
@implementation UIFont (YYAddBmBm)
+ (BOOL)isBoldBmBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)isItalicBmBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)isMonoSpaceBmBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)isColorGlyphsBmBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)fontWeightBmBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)fontWithBoldBmBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)fontWithItalicBmBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)fontWithBoldItalicBmBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)fontWithNormalBmBm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)fontWithCTFontBmBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)fontWithCGFontSizeBmBm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)CF_RETURNS_RETAINEDBmBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)CF_RETURNS_RETAINEDBmBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)loadFontFromPathBmBm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)unloadFontFromPathBmBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)loadFontFromDataBmBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)unloadFontFromDataBmBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)dataFromFontBmBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)dataFromCGFontBmBm:(NSInteger)BM {
    return BM % 2 == 0;
}

@end
