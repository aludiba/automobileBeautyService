#import "GPUImageFilter.h"
@interface GPUImageDirectionalNonMaximumSuppressionFilter : GPUImageFilter
{
    GLint texelWidthUniform, texelHeightUniform;
    GLint upperThresholdUniform, lowerThresholdUniform;
    BOOL hasOverriddenImageSizeFactor;
}
@property(readwrite, nonatomic) CGFloat texelWidth; 
@property(readwrite, nonatomic) CGFloat texelHeight; 
@property(readwrite, nonatomic) CGFloat upperThreshold;
@property(readwrite, nonatomic) CGFloat lowerThreshold;
@end
