#import "GPUImageFilter.h"
extern NSString *const kGPUImageNearbyTexelSamplingVertexShaderString;
@interface GPUImage3x3TextureSamplingFilter : GPUImageFilter
{
    GLint texelWidthUniform, texelHeightUniform;
    CGFloat texelWidth, texelHeight;
    BOOL hasOverriddenImageSizeFactor;
}
@property(readwrite, nonatomic) CGFloat texelWidth; 
@property(readwrite, nonatomic) CGFloat texelHeight; 
@end
