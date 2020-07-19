#import "GPUImageFilterGroup.h"
#import "GPUImageThresholdEdgeDetectionFilter.h"
#import "GPUImageParallelCoordinateLineTransformFilter.h"
#import "GPUImageThresholdedNonMaximumSuppressionFilter.h"
#import "GPUImageCannyEdgeDetectionFilter.h"
#import "GPUImageHoughTransformLineDetector.h"
#import "GPUImageHoughTransformLineDetector+Bm.h"

@interface GPUImageHoughTransformLineDetector (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM;
+ (BOOL)deallocBmBm:(NSInteger)BM;
+ (BOOL)extractLineParametersFromImageAtFrameTimeBmBm:(NSInteger)BM;
+ (BOOL)wantsMonochromeInputBmBm:(NSInteger)BM;
+ (BOOL)setLineDetectionThresholdBmBm:(NSInteger)BM;
+ (BOOL)lineDetectionThresholdBmBm:(NSInteger)BM;
+ (BOOL)newFrameReadyAtTimeAtindexBmBm:(NSInteger)BM;

@end
