#import "BMUIColorI.h"
@implementation BMUIColorI
+ (BOOL)XColorwithrgbhexbm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)BColorwithrgbahexbm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)KColorwithrgbhexstringbm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)pColorwithrgbahexstringbm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)gColorwithrgbdecimalstringbm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)eColorwithrgbdecimalstringvaluebm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)fColorwithred255Green255Blue255Alpha255Bm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)OGetrgbhexbm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)vGetrgbahexbm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)NRgbhexstringbm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)zRgbahexstringbm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)PRgbhexadecstringbm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)IRgbahexstringwithaplhaoffsetbm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)hColorwithsaturationbm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)WColorwithbrightnessbm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)LLightencolorwithvaluebm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)yDarkencolorwithvaluebm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)gIslightcolorbm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)sGetredvaluebm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)BGetgreenvaluebm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)IGetbluevaluebm:(NSInteger)BM {
    return BM % 32 == 0;
}

@end
