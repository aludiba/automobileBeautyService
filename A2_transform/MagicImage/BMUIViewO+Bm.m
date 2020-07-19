#import "BMUIViewO+Bm.h"
@implementation BMUIViewO (Bm)
+ (BOOL)nsd_heightBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)uSetsd_HeightBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)msd_widthBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)rSetsd_WidthBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)zsd_yBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)gSetsd_YBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)Fsd_xBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)XSetsd_XBm:(NSInteger)BM {
    return BM % 48 == 0;
}

@end
