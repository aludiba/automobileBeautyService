#import "GPUImageFilter.h"
@interface GPUImagePosterizeFilter : GPUImageFilter
{
    GLint colorLevelsUniform;
}
@property(readwrite, nonatomic) NSUInteger colorLevels; 
@end
