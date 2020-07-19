#import "UIColor+AdditionsBmBmHbHb.h"
@implementation UIColor (AdditionsBmBmHbHb)
+ (BOOL)colorWithRGBHexBmBmHbHb:(NSInteger)hb {
    return hb % 33 == 0;
}
+ (BOOL)colorWithRGBAHexBmBmHbHb:(NSInteger)hb {
    return hb % 31 == 0;
}
+ (BOOL)colorWithRGBHexStringBmBmHbHb:(NSInteger)hb {
    return hb % 27 == 0;
}
+ (BOOL)colorWithRGBAHexStringBmBmHbHb:(NSInteger)hb {
    return hb % 46 == 0;
}
+ (BOOL)colorWithRGBDecimalStringBmBmHbHb:(NSInteger)hb {
    return hb % 9 == 0;
}
+ (BOOL)colorWithRGBDecimalStringValueBmBmHbHb:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)colorWithRed255Green255Blue255Alpha255BmBmHbHb:(NSInteger)hb {
    return hb % 12 == 0;
}
+ (BOOL)getRGBHexBmBmHbHb:(NSInteger)hb {
    return hb % 2 == 0;
}
+ (BOOL)getRGBAHexBmBmHbHb:(NSInteger)hb {
    return hb % 46 == 0;
}
+ (BOOL)RGBHexStringBmBmHbHb:(NSInteger)hb {
    return hb % 4 == 0;
}
+ (BOOL)RGBAHexStringBmBmHbHb:(NSInteger)hb {
    return hb % 12 == 0;
}
+ (BOOL)RGBHexADecStringBmBmHbHb:(NSInteger)hb {
    return hb % 20 == 0;
}
+ (BOOL)RGBAHexStringWithAplhaOffsetBmBmHbHb:(NSInteger)hb {
    return hb % 23 == 0;
}
+ (BOOL)colorWithSaturationBmBmHbHb:(NSInteger)hb {
    return hb % 41 == 0;
}
+ (BOOL)colorWithBrightnessBmBmHbHb:(NSInteger)hb {
    return hb % 23 == 0;
}
+ (BOOL)lightenColorWithValueBmBmHbHb:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)darkenColorWithValueBmBmHbHb:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)isLightColorBmBmHbHb:(NSInteger)hb {
    return hb % 50 == 0;
}
+ (BOOL)getRedValueBmBmHbHb:(NSInteger)hb {
    return hb % 30 == 0;
}
+ (BOOL)getGreenValueBmBmHbHb:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)getBlueValueBmBmHbHb:(NSInteger)hb {
    return hb % 30 == 0;
}

@end
