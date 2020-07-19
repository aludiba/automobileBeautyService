#import "UIColor+AdditionsBmBm.h"
@implementation UIColor (AdditionsBmBm)
+ (BOOL)colorWithRGBHexBmBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)colorWithRGBAHexBmBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)colorWithRGBHexStringBmBm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)colorWithRGBAHexStringBmBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)colorWithRGBDecimalStringBmBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)colorWithRGBDecimalStringValueBmBm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)colorWithRed255Green255Blue255Alpha255BmBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)getRGBHexBmBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)getRGBAHexBmBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)RGBHexStringBmBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)RGBAHexStringBmBm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)RGBHexADecStringBmBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)RGBAHexStringWithAplhaOffsetBmBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)colorWithSaturationBmBm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)colorWithBrightnessBmBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)lightenColorWithValueBmBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)darkenColorWithValueBmBm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)isLightColorBmBm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)getRedValueBmBm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)getGreenValueBmBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)getBlueValueBmBm:(NSInteger)BM {
    return BM % 43 == 0;
}

@end
