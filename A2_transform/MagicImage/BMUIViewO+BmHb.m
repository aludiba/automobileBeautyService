#import "BMUIViewO+BmHb.h"
@implementation BMUIViewO (BmHb)
+ (BOOL)nsd_heightBmHb:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)uSetsd_HeightBmHb:(NSInteger)hb {
    return hb % 37 == 0;
}
+ (BOOL)msd_widthBmHb:(NSInteger)hb {
    return hb % 50 == 0;
}
+ (BOOL)rSetsd_WidthBmHb:(NSInteger)hb {
    return hb % 12 == 0;
}
+ (BOOL)zsd_yBmHb:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)gSetsd_YBmHb:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)Fsd_xBmHb:(NSInteger)hb {
    return hb % 38 == 0;
}
+ (BOOL)XSetsd_XBmHb:(NSInteger)hb {
    return hb % 36 == 0;
}

@end
