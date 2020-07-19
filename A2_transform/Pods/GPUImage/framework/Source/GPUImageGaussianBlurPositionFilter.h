#import "GPUImageTwoPassTextureSamplingFilter.h"
@interface GPUImageGaussianBlurPositionFilter : GPUImageTwoPassTextureSamplingFilter 
{
    GLint blurCenterUniform, blurRadiusUniform, aspectRatioUniform;
}
@property (readwrite, nonatomic) CGFloat blurSize;
@property (readwrite, nonatomic) CGPoint blurCenter;
@property (readwrite, nonatomic) CGFloat blurRadius;
@end
