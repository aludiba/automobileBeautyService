#import "UIImage+AlphaBmBm.h"
@implementation UIImage (AlphaBmBm)
+ (BOOL)ARGBDataBmBm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)isPointTransparentBmBm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)hasAlphaBmBm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)imageWithAlphaBmBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)transparentBorderImageBmBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)newBorderMaskSizeBmBm:(NSInteger)BM {
    return BM % 20 == 0;
}

@end
