#import "GPUImageTwoInputFilter.h"
@interface GPUImageTwoInputCrossTextureSamplingFilter : GPUImageTwoInputFilter
{
    GLint texelWidthUniform, texelHeightUniform;
    CGFloat texelWidth, texelHeight;
    BOOL hasOverriddenImageSizeFactor;
}
@property(readwrite, nonatomic) CGFloat texelWidth;
@property(readwrite, nonatomic) CGFloat texelHeight;
@end
