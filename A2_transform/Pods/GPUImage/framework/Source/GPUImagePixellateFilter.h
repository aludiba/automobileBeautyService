#import "GPUImageFilter.h"
@interface GPUImagePixellateFilter : GPUImageFilter
{
    GLint fractionalWidthOfAPixelUniform, aspectRatioUniform;
}
@property(readwrite, nonatomic) CGFloat fractionalWidthOfAPixel;
@end
