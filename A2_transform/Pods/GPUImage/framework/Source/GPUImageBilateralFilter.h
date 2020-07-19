#import "GPUImageGaussianBlurFilter.h"
@interface GPUImageBilateralFilter : GPUImageGaussianBlurFilter
{
    CGFloat firstDistanceNormalizationFactorUniform;
    CGFloat secondDistanceNormalizationFactorUniform;
}
@property(nonatomic, readwrite) CGFloat distanceNormalizationFactor;
@end
