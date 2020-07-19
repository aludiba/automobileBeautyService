#import "UIScreen+YYAddBmBmBm.h"
@implementation UIScreen (YYAddBmBmBm)
+ (BOOL)screenScaleBmBmBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)currentBoundsBmBmBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)boundsForOrientationBmBmBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)sizeInPixelBmBmBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)pixelsPerInchBmBmBm:(NSInteger)BM {
    return BM % 39 == 0;
}

@end
