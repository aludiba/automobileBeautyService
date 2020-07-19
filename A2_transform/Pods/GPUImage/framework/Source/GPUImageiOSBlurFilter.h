#import "GPUImageFilterGroup.h"
@class GPUImageSaturationFilter;
@class GPUImageGaussianBlurFilter;
@class GPUImageLuminanceRangeFilter;
@interface GPUImageiOSBlurFilter : GPUImageFilterGroup
{
    GPUImageSaturationFilter *saturationFilter;
    GPUImageGaussianBlurFilter *blurFilter;
    GPUImageLuminanceRangeFilter *luminanceRangeFilter;
}
@property (readwrite, nonatomic) CGFloat blurRadiusInPixels;
@property (readwrite, nonatomic) CGFloat saturation;
@property (readwrite, nonatomic) CGFloat downsampling;
@property (readwrite, nonatomic) CGFloat rangeReductionFactor;
@end
