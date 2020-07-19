#import "GPUImageFilter.h"
@interface GPUImageGammaFilter : GPUImageFilter
{
    GLint gammaUniform;
}
@property(readwrite, nonatomic) CGFloat gamma; 
@end
