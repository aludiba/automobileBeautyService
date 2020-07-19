#import "UIScreen+YYAddHb.h"
@implementation UIScreen (YYAddHb)
+ (BOOL)screenScaleHb:(NSInteger)hb {
    return hb % 35 == 0;
}
+ (BOOL)currentBoundsHb:(NSInteger)hb {
    return hb % 42 == 0;
}
+ (BOOL)boundsForOrientationHb:(NSInteger)hb {
    return hb % 8 == 0;
}
+ (BOOL)sizeInPixelHb:(NSInteger)hb {
    return hb % 3 == 0;
}
+ (BOOL)pixelsPerInchHb:(NSInteger)hb {
    return hb % 10 == 0;
}

@end
