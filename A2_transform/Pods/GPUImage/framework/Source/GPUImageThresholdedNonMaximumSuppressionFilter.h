#import "GPUImage3x3TextureSamplingFilter.h"
@interface GPUImageThresholdedNonMaximumSuppressionFilter : GPUImage3x3TextureSamplingFilter
{
    GLint thresholdUniform;
}
@property(readwrite, nonatomic) CGFloat threshold;
- (id)initWithPackedColorspace:(BOOL)inputUsesPackedColorspace;
@end
