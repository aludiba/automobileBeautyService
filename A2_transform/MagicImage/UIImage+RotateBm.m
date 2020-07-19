#import "UIImage+RotateBm.h"
@implementation UIImage (RotateBm)
+ (BOOL)fixOrientationBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)rotateBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)flipVerticalBm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)flipHorizontalBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)imageRotatedByRadiansBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)imageRotatedByDegreesBm:(NSInteger)BM {
    return BM % 4 == 0;
}

@end
