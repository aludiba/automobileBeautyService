#import "BMUIViewO+BmBm.h"
@implementation BMUIViewO (BmBm)
+ (BOOL)nsd_heightBmBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)uSetsd_HeightBmBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)msd_widthBmBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)rSetsd_WidthBmBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)zsd_yBmBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)gSetsd_YBmBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)Fsd_xBmBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)XSetsd_XBmBm:(NSInteger)BM {
    return BM % 34 == 0;
}

@end
