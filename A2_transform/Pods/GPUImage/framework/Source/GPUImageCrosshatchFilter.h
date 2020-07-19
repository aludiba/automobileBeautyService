#import "GPUImageFilter.h"
@interface GPUImageCrosshatchFilter : GPUImageFilter
{
    GLint crossHatchSpacingUniform, lineWidthUniform;
}
@property(readwrite, nonatomic) CGFloat crossHatchSpacing;
@property(readwrite, nonatomic) CGFloat lineWidth;
@end
