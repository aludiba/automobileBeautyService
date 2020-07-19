#import "UIImage+ResizeBmBm.h"
@implementation UIImage (ResizeBmBm)
+ (BOOL)setImageScaleBmBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)resizedCameraIconImageInterpolationqualityBmBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)resizedAndClipImageInterpolationqualityBmBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)croppedImageBmBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)thumbnailImageTransparentborderCornerradiusInterpolationqualityBmBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)resizedImageInterpolationqualityBmBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)resizedImageWithContentModeBoundsInterpolationqualityBmBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)resizedImageTransformDrawtransposedInterpolationqualityBmBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)transformForOrientationBmBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)cropToSizeUsingmodeBmBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)getSizeWithRateLimitsizeBmBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)getSizeWithRateLimitlargesizeBmBm:(NSInteger)BM {
    return BM % 8 == 0;
}

@end
