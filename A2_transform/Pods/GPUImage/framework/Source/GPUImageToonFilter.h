#import "GPUImage3x3TextureSamplingFilter.h"
@interface GPUImageToonFilter : GPUImage3x3TextureSamplingFilter
{
    GLint thresholdUniform, quantizationLevelsUniform;
}
@property(readwrite, nonatomic) CGFloat threshold; 
@property(readwrite, nonatomic) CGFloat quantizationLevels; 
@end
