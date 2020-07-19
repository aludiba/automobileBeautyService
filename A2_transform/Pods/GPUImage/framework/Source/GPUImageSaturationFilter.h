#import "GPUImageFilter.h"
@interface GPUImageSaturationFilter : GPUImageFilter
{
    GLint saturationUniform;
}
@property(readwrite, nonatomic) CGFloat saturation; 
@end
