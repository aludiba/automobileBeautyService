#import "GPUImage3x3TextureSamplingFilter.h"
@interface GPUImage3x3ConvolutionFilter : GPUImage3x3TextureSamplingFilter
{
    GLint convolutionMatrixUniform;
}
@property(readwrite, nonatomic) GPUMatrix3x3 convolutionKernel;
@end
