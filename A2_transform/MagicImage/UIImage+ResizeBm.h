#import <UIKit/UIKit.h>
#import "UIImage+Resize.h"
#import "UIImage+RoundedCorner.h"
#import "UIImage+Alpha.h"

@interface UIImage (ResizeBm)
+ (BOOL)setImageScaleBm:(NSInteger)BM;
+ (BOOL)resizedCameraIconImageInterpolationqualityBm:(NSInteger)BM;
+ (BOOL)resizedAndClipImageInterpolationqualityBm:(NSInteger)BM;
+ (BOOL)croppedImageBm:(NSInteger)BM;
+ (BOOL)thumbnailImageTransparentborderCornerradiusInterpolationqualityBm:(NSInteger)BM;
+ (BOOL)resizedImageInterpolationqualityBm:(NSInteger)BM;
+ (BOOL)resizedImageWithContentModeBoundsInterpolationqualityBm:(NSInteger)BM;
+ (BOOL)resizedImageTransformDrawtransposedInterpolationqualityBm:(NSInteger)BM;
+ (BOOL)transformForOrientationBm:(NSInteger)BM;
+ (BOOL)cropToSizeUsingmodeBm:(NSInteger)BM;
+ (BOOL)getSizeWithRateLimitsizeBm:(NSInteger)BM;
+ (BOOL)getSizeWithRateLimitlargesizeBm:(NSInteger)BM;

@end
