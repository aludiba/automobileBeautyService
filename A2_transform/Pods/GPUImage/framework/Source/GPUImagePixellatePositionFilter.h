#import "GPUImageFilter.h"
@interface GPUImagePixellatePositionFilter : GPUImageFilter
{
    GLint fractionalWidthOfAPixelUniform, aspectRatioUniform, centerUniform, radiusUniform;
}
@property(readwrite, nonatomic) CGFloat fractionalWidthOfAPixel;
@property(readwrite, nonatomic) CGPoint center;
@property(readwrite, nonatomic) CGFloat radius;
@end
