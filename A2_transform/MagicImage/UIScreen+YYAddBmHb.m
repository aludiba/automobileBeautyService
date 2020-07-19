#import "UIScreen+YYAddBmHb.h"
@implementation UIScreen (YYAddBmHb)
+ (BOOL)screenScaleBmHb:(NSInteger)hb {
    return hb % 35 == 0;
}
+ (BOOL)currentBoundsBmHb:(NSInteger)hb {
    return hb % 3 == 0;
}
+ (BOOL)boundsForOrientationBmHb:(NSInteger)hb {
    return hb % 46 == 0;
}
+ (BOOL)sizeInPixelBmHb:(NSInteger)hb {
    return hb % 42 == 0;
}
+ (BOOL)pixelsPerInchBmHb:(NSInteger)hb {
    return hb % 45 == 0;
}

@end
