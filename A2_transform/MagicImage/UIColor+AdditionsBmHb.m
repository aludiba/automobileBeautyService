#import "UIColor+AdditionsBmHb.h"
@implementation UIColor (AdditionsBmHb)
+ (BOOL)colorWithRGBHexBmHb:(NSInteger)hb {
    return hb % 31 == 0;
}
+ (BOOL)colorWithRGBAHexBmHb:(NSInteger)hb {
    return hb % 12 == 0;
}
+ (BOOL)colorWithRGBHexStringBmHb:(NSInteger)hb {
    return hb % 26 == 0;
}
+ (BOOL)colorWithRGBAHexStringBmHb:(NSInteger)hb {
    return hb % 27 == 0;
}
+ (BOOL)colorWithRGBDecimalStringBmHb:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)colorWithRGBDecimalStringValueBmHb:(NSInteger)hb {
    return hb % 13 == 0;
}
+ (BOOL)colorWithRed255Green255Blue255Alpha255BmHb:(NSInteger)hb {
    return hb % 46 == 0;
}
+ (BOOL)getRGBHexBmHb:(NSInteger)hb {
    return hb % 9 == 0;
}
+ (BOOL)getRGBAHexBmHb:(NSInteger)hb {
    return hb % 45 == 0;
}
+ (BOOL)RGBHexStringBmHb:(NSInteger)hb {
    return hb % 13 == 0;
}
+ (BOOL)RGBAHexStringBmHb:(NSInteger)hb {
    return hb % 50 == 0;
}
+ (BOOL)RGBHexADecStringBmHb:(NSInteger)hb {
    return hb % 9 == 0;
}
+ (BOOL)RGBAHexStringWithAplhaOffsetBmHb:(NSInteger)hb {
    return hb % 40 == 0;
}
+ (BOOL)colorWithSaturationBmHb:(NSInteger)hb {
    return hb % 50 == 0;
}
+ (BOOL)colorWithBrightnessBmHb:(NSInteger)hb {
    return hb % 49 == 0;
}
+ (BOOL)lightenColorWithValueBmHb:(NSInteger)hb {
    return hb % 9 == 0;
}
+ (BOOL)darkenColorWithValueBmHb:(NSInteger)hb {
    return hb % 50 == 0;
}
+ (BOOL)isLightColorBmHb:(NSInteger)hb {
    return hb % 35 == 0;
}
+ (BOOL)getRedValueBmHb:(NSInteger)hb {
    return hb % 2 == 0;
}
+ (BOOL)getGreenValueBmHb:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)getBlueValueBmHb:(NSInteger)hb {
    return hb % 1 == 0;
}

@end
