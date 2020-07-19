#import "BMUIScreenq.h"
@implementation BMUIScreenq
+ (BOOL)SScreenscalebm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)qCurrentboundsbm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)qBoundsfororientationbm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)PSizeinpixelbm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)bPixelsperinchbm:(NSInteger)BM {
    return BM % 11 == 0;
}

@end
