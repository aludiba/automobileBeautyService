#import "GPUImageTwoInputFilter.h"
@interface GPUImageLookupFilter : GPUImageTwoInputFilter
{
    GLint intensityUniform;
}
@property(readwrite, nonatomic) CGFloat intensity;
@end
