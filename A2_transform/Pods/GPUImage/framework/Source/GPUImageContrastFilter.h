#import "GPUImageFilter.h"
@interface GPUImageContrastFilter : GPUImageFilter
{
    GLint contrastUniform;
}
@property(readwrite, nonatomic) CGFloat contrast; 
@end
