#import "BMUIScreenq+Bm.h"
@implementation BMUIScreenq (Bm)
+ (BOOL)SScreenscalebmBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)qCurrentboundsbmBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)qBoundsfororientationbmBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)PSizeinpixelbmBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)bPixelsperinchbmBm:(NSInteger)BM {
    return BM % 12 == 0;
}

@end
