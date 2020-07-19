#import "GPUImageTwoPassFilter.h"
@interface GPUImageSobelEdgeDetectionFilter : GPUImageTwoPassFilter
{
    GLint texelWidthUniform, texelHeightUniform, edgeStrengthUniform;
    BOOL hasOverriddenImageSizeFactor;
}
@property(readwrite, nonatomic) CGFloat texelWidth; 
@property(readwrite, nonatomic) CGFloat texelHeight; 
@property(readwrite, nonatomic) CGFloat edgeStrength;
@end
