#import "GPUImageFilterGroup.h"
#import "GPUImageLowPassFilter.h"
#import "GPUImageAverageColor.h"
@interface GPUImageMotionDetector : GPUImageFilterGroup
{
    GPUImageLowPassFilter *lowPassFilter;
    GPUImageTwoInputFilter *frameComparisonFilter;
    GPUImageAverageColor *averageColor;
}
@property(readwrite, nonatomic) CGFloat lowPassFilterStrength;
@property(nonatomic, copy) void(^motionDetectionBlock)(CGPoint motionCentroid, CGFloat motionIntensity, CMTime frameTime);
@end
