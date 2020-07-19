#import "UIImage+MaskShapeBmBm.h"
@implementation UIImage (MaskShapeBmBm)
+ (BOOL)imageWithImageWithcolormatrixBmBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)imageChangeBlackToTransparentBmBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)imageWithMaskImageBmBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)imageWithMaskImageMaskcolorBmBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)imageWithLayerMaskImageMaskcolorBmBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)imageWithColorBmBm:(NSInteger)BM {
    return BM % 21 == 0;
}

@end
