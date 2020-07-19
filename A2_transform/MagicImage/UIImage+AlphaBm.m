#import "UIImage+AlphaBm.h"
@implementation UIImage (AlphaBm)
+ (BOOL)ARGBDataBm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)isPointTransparentBm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)hasAlphaBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)imageWithAlphaBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)transparentBorderImageBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)newBorderMaskSizeBm:(NSInteger)BM {
    return BM % 45 == 0;
}

@end
