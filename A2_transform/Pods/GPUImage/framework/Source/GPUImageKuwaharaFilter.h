#import "GPUImageFilter.h"
@interface GPUImageKuwaharaFilter : GPUImageFilter
{
    GLint radiusUniform;
}
@property(readwrite, nonatomic) NSUInteger radius;
@end
