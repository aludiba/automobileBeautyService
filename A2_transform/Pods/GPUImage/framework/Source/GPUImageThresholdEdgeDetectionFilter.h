#import "GPUImageSobelEdgeDetectionFilter.h"
@interface GPUImageThresholdEdgeDetectionFilter : GPUImageSobelEdgeDetectionFilter
{
    GLint thresholdUniform;
}
@property(readwrite, nonatomic) CGFloat threshold; 
@end
