#import "GPUImageFilterGroup.h"
@class GPUImageGaussianBlurFilter;
@class GPUImageXYDerivativeFilter;
@class GPUImageGrayscaleFilter;
@class GPUImageGaussianBlurFilter;
@class GPUImageThresholdedNonMaximumSuppressionFilter;
@class GPUImageColorPackingFilter;
@interface GPUImageHarrisCornerDetectionFilter : GPUImageFilterGroup
{
    GPUImageXYDerivativeFilter *derivativeFilter;
    GPUImageGaussianBlurFilter *blurFilter;
    GPUImageFilter *harrisCornerDetectionFilter;
    GPUImageThresholdedNonMaximumSuppressionFilter *nonMaximumSuppressionFilter;
    GPUImageColorPackingFilter *colorPackingFilter;
    GLfloat *cornersArray;
    GLubyte *rawImagePixels;
}
@property(readwrite, nonatomic) CGFloat blurRadiusInPixels;
@property(readwrite, nonatomic) CGFloat sensitivity;
@property(readwrite, nonatomic) CGFloat threshold;
@property(nonatomic, copy) void(^cornersDetectedBlock)(GLfloat* cornerArray, NSUInteger cornersDetected, CMTime frameTime);
@property(nonatomic, readonly, strong) NSMutableArray *intermediateImages;
- (id)initWithCornerDetectionFragmentShader:(NSString *)cornerDetectionFragmentShader;
@end
