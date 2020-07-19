#import "GPUImageFilter.h"
@interface GPUImageExposureFilter : GPUImageFilter
{
    GLint exposureUniform;
}
@property(readwrite, nonatomic) CGFloat exposure; 
@end
