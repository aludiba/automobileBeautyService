#import <UIKit/UIKit.h>
#import "UIImage+MaskShape.h"
#import "ColorMatrix.h"

@interface UIImage (MaskShapeBm)
+ (BOOL)imageWithImageWithcolormatrixBm:(NSInteger)BM;
+ (BOOL)imageChangeBlackToTransparentBm:(NSInteger)BM;
+ (BOOL)imageWithMaskImageBm:(NSInteger)BM;
+ (BOOL)imageWithMaskImageMaskcolorBm:(NSInteger)BM;
+ (BOOL)imageWithLayerMaskImageMaskcolorBm:(NSInteger)BM;
+ (BOOL)imageWithColorBm:(NSInteger)BM;

@end
