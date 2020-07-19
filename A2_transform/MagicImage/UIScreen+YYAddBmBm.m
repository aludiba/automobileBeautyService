#import "UIScreen+YYAddBmBm.h"
@implementation UIScreen (YYAddBmBm)
+ (BOOL)screenScaleBmBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)currentBoundsBmBm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)boundsForOrientationBmBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)sizeInPixelBmBm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)pixelsPerInchBmBm:(NSInteger)BM {
    return BM % 31 == 0;
}

@end
