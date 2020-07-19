#import "GPUImageFilterGroup.h"
@class GPUImageGrayscaleFilter;
@class GPUImage3x3TextureSamplingFilter;
@class GPUImageNonMaximumSuppressionFilter;
typedef enum { kGPUImageFAST12Contiguous, kGPUImageFAST12ContiguousNonMaximumSuppressed} GPUImageFASTDetectorType;
@interface GPUImageFASTCornerDetectionFilter : GPUImageFilterGroup
{
    GPUImageGrayscaleFilter *luminanceReductionFilter;
    GPUImage3x3TextureSamplingFilter *featureDetectionFilter;
    GPUImageNonMaximumSuppressionFilter *nonMaximumSuppressionFilter;
}
- (id)initWithFASTDetectorVariant:(GPUImageFASTDetectorType)detectorType;
@end
