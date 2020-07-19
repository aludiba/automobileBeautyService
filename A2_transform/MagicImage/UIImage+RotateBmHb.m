#import "UIImage+RotateBmHb.h"
@implementation UIImage (RotateBmHb)
+ (BOOL)fixOrientationBmHb:(NSInteger)hb {
    return hb % 29 == 0;
}
+ (BOOL)rotateBmHb:(NSInteger)hb {
    return hb % 31 == 0;
}
+ (BOOL)flipVerticalBmHb:(NSInteger)hb {
    return hb % 4 == 0;
}
+ (BOOL)flipHorizontalBmHb:(NSInteger)hb {
    return hb % 31 == 0;
}
+ (BOOL)imageRotatedByRadiansBmHb:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)imageRotatedByDegreesBmHb:(NSInteger)hb {
    return hb % 7 == 0;
}

@end
