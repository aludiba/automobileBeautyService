#import "GPUImageFilter.h"
@interface GPUImageLuminanceRangeFilter : GPUImageFilter
{
    GLint rangeReductionUniform;
}
@property(readwrite, nonatomic) CGFloat rangeReductionFactor;
@end
