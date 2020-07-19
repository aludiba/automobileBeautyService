#import "GPUImageFilterGroup.h"
#import "GPUImageThresholdEdgeDetectionFilter.h"
#import "GPUImageParallelCoordinateLineTransformFilter.h"
#import "GPUImageThresholdedNonMaximumSuppressionFilter.h"
#import "GPUImageCannyEdgeDetectionFilter.h"
#import "GPUImageHoughTransformLineDetector.h"
#import "GPUImageHoughTransformLineDetector+Bm.h"
#import "GPUImageHoughTransformLineDetector+BmBm.h"

@interface GPUImageHoughTransformLineDetector (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM;
+ (BOOL)deallocBmBmBm:(NSInteger)BM;
+ (BOOL)extractLineParametersFromImageAtFrameTimeBmBmBm:(NSInteger)BM;
+ (BOOL)wantsMonochromeInputBmBmBm:(NSInteger)BM;
+ (BOOL)setLineDetectionThresholdBmBmBm:(NSInteger)BM;
+ (BOOL)lineDetectionThresholdBmBmBm:(NSInteger)BM;
+ (BOOL)newFrameReadyAtTimeAtindexBmBmBm:(NSInteger)BM;

@end
