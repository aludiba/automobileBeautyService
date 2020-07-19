#import "GPUImageFilter.h"
@interface GPUImageLuminanceThresholdFilter : GPUImageFilter
{
    GLint thresholdUniform;
}
@property(readwrite, nonatomic) CGFloat threshold; 
@end
