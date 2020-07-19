#import "UIImage+RotateBmBm.h"
@implementation UIImage (RotateBmBm)
+ (BOOL)fixOrientationBmBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)rotateBmBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)flipVerticalBmBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)flipHorizontalBmBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)imageRotatedByRadiansBmBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)imageRotatedByDegreesBmBm:(NSInteger)BM {
    return BM % 24 == 0;
}

@end
