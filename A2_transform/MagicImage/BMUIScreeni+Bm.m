#import "BMUIScreeni+Bm.h"
@implementation BMUIScreeni (Bm)
+ (BOOL)JscreenScaleBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)hcurrentBoundsBm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)nBoundsfororientationBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)zsizeInPixelBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)QpixelsPerInchBm:(NSInteger)BM {
    return BM % 32 == 0;
}

@end
