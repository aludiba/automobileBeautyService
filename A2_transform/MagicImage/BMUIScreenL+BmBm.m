#import "BMUIScreenL+BmBm.h"
@implementation BMUIScreenL (BmBm)
+ (BOOL)YscreenScaleBmBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)tcurrentBoundsBmBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)CBoundsfororientationBmBm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)QsizeInPixelBmBm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)ypixelsPerInchBmBm:(NSInteger)BM {
    return BM % 3 == 0;
}

@end
