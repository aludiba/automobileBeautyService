#import "UIScreen+YYAddBm.h"
@implementation UIScreen (YYAddBm)
+ (BOOL)screenScaleBm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)currentBoundsBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)boundsForOrientationBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)sizeInPixelBm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)pixelsPerInchBm:(NSInteger)BM {
    return BM % 36 == 0;
}

@end
