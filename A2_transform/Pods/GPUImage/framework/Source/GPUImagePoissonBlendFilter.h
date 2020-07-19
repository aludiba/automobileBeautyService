#import "GPUImageTwoInputCrossTextureSamplingFilter.h"
#import "GPUImageFilterGroup.h"
@interface GPUImagePoissonBlendFilter : GPUImageTwoInputCrossTextureSamplingFilter
{
    GLint mixUniform;
    GPUImageFramebuffer *secondOutputFramebuffer;
}
@property(readwrite, nonatomic) CGFloat mix;
@property(readwrite, nonatomic) NSUInteger numIterations;
@end