#import "GPUImageFilterGroup.h"
@class GPUImageGrayscaleFilter;
@class GPUImageSingleComponentGaussianBlurFilter;
@class GPUImageDirectionalSobelEdgeDetectionFilter;
@class GPUImageDirectionalNonMaximumSuppressionFilter;
@class GPUImageWeakPixelInclusionFilter;
@interface GPUImageCannyEdgeDetectionFilter : GPUImageFilterGroup
{
    GPUImageGrayscaleFilter *luminanceFilter;
    GPUImageSingleComponentGaussianBlurFilter *blurFilter;
    GPUImageDirectionalSobelEdgeDetectionFilter *edgeDetectionFilter;
    GPUImageDirectionalNonMaximumSuppressionFilter *nonMaximumSuppressionFilter;
    GPUImageWeakPixelInclusionFilter *weakPixelInclusionFilter;
}
@property(readwrite, nonatomic) CGFloat texelWidth; 
@property(readwrite, nonatomic) CGFloat texelHeight; 
@property (readwrite, nonatomic) CGFloat blurRadiusInPixels;
@property (readwrite, nonatomic) CGFloat blurTexelSpacingMultiplier;
@property(readwrite, nonatomic) CGFloat upperThreshold; 
@property(readwrite, nonatomic) CGFloat lowerThreshold; 
@end
