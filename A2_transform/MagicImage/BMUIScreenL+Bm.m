#import "BMUIScreenL+Bm.h"
@implementation BMUIScreenL (Bm)
+ (BOOL)YscreenScaleBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)tcurrentBoundsBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)CBoundsfororientationBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)QsizeInPixelBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)ypixelsPerInchBm:(NSInteger)BM {
    return BM % 29 == 0;
}

@end
