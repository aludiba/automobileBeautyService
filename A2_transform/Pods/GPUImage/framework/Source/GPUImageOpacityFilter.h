#import "GPUImageFilter.h"
@interface GPUImageOpacityFilter : GPUImageFilter
{
    GLint opacityUniform;
}
@property(readwrite, nonatomic) CGFloat opacity;
@end
