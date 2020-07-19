#import "UIImage+ResizeBm.h"
@implementation UIImage (ResizeBm)
+ (BOOL)setImageScaleBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)resizedCameraIconImageInterpolationqualityBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)resizedAndClipImageInterpolationqualityBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)croppedImageBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)thumbnailImageTransparentborderCornerradiusInterpolationqualityBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)resizedImageInterpolationqualityBm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)resizedImageWithContentModeBoundsInterpolationqualityBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)resizedImageTransformDrawtransposedInterpolationqualityBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)transformForOrientationBm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)cropToSizeUsingmodeBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)getSizeWithRateLimitsizeBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)getSizeWithRateLimitlargesizeBm:(NSInteger)BM {
    return BM % 36 == 0;
}

@end
