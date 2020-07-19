#import "UIColor+AdditionsBm.h"
@implementation UIColor (AdditionsBm)
+ (BOOL)colorWithRGBHexBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)colorWithRGBAHexBm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)colorWithRGBHexStringBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)colorWithRGBAHexStringBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)colorWithRGBDecimalStringBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)colorWithRGBDecimalStringValueBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)colorWithRed255Green255Blue255Alpha255Bm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)getRGBHexBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)getRGBAHexBm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)RGBHexStringBm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)RGBAHexStringBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)RGBHexADecStringBm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)RGBAHexStringWithAplhaOffsetBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)colorWithSaturationBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)colorWithBrightnessBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)lightenColorWithValueBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)darkenColorWithValueBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)isLightColorBm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)getRedValueBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)getGreenValueBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)getBlueValueBm:(NSInteger)BM {
    return BM % 4 == 0;
}

@end
