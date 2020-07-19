#import "GPUImageFilter.h"
@interface GPUImageBrightnessFilter : GPUImageFilter
{
    GLint brightnessUniform;
}
@property(readwrite, nonatomic) CGFloat brightness; 
@end
