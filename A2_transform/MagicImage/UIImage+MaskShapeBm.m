#import "UIImage+MaskShapeBm.h"
@implementation UIImage (MaskShapeBm)
+ (BOOL)imageWithImageWithcolormatrixBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)imageChangeBlackToTransparentBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)imageWithMaskImageBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)imageWithMaskImageMaskcolorBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)imageWithLayerMaskImageMaskcolorBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)imageWithColorBm:(NSInteger)BM {
    return BM % 39 == 0;
}

@end
