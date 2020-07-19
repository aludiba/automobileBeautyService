#import "BMUIScreens+Bm.h"
@implementation BMUIScreens (Bm)
+ (BOOL)xScreenscalebmBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)aCurrentboundsbmBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)nBoundsfororientationbmBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)ySizeinpixelbmBm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)FPixelsperinchbmBm:(NSInteger)BM {
    return BM % 5 == 0;
}

@end
