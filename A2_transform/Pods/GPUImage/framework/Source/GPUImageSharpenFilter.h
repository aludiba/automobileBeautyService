#import "GPUImageFilter.h"
@interface GPUImageSharpenFilter : GPUImageFilter
{
    GLint sharpnessUniform;
    GLint imageWidthFactorUniform, imageHeightFactorUniform;
}
@property(readwrite, nonatomic) CGFloat sharpness; 
@end
