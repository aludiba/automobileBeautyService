#import "GPUImageFilterGroup.h"
#import "GPUImageThresholdEdgeDetectionFilter.h"
#import "GPUImageParallelCoordinateLineTransformFilter.h"
#import "GPUImageThresholdedNonMaximumSuppressionFilter.h"
#import "GPUImageCannyEdgeDetectionFilter.h"
@interface GPUImageHoughTransformLineDetector : GPUImageFilterGroup
{
    GPUImageOutput<GPUImageInput> *thresholdEdgeDetectionFilter;
    GPUImageParallelCoordinateLineTransformFilter *parallelCoordinateLineTransformFilter;
    GPUImageThresholdedNonMaximumSuppressionFilter *nonMaximumSuppressionFilter;
    GLfloat *linesArray;
    GLubyte *rawImagePixels;
}
@property(readwrite, nonatomic) CGFloat edgeThreshold;
@property(readwrite, nonatomic) CGFloat lineDetectionThreshold;
@property(nonatomic, copy) void(^linesDetectedBlock)(GLfloat* lineArray, NSUInteger linesDetected, CMTime frameTime);
@property(nonatomic, readonly, strong) NSMutableArray *intermediateImages;
@end
